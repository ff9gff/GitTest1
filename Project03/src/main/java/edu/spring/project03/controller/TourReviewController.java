package edu.spring.project03.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import edu.spring.project03.domain.ImageFile;
import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.domain.ReviewRegionVO;
import edu.spring.project03.domain.ReviewVO;
import edu.spring.project03.service.ImageService;
import edu.spring.project03.service.ImageView;
import edu.spring.project03.service.TourReviewService;

@Controller
@RequestMapping(value = "/review")
public class TourReviewController {

	private static final Logger logger = LoggerFactory.getLogger(TourReviewController.class);

	public static final String SAVE_IMAGE_DIR = "resources/photo_upload/";

	private int ReviewRegisterID = 2;

	@Autowired
	private TourReviewService tourReviewService;

	@Resource(name = "imageView")
	private ImageView imageView;

	@Autowired
	private ImageService imageService;

	@RequestMapping(value = "/reviewBoard", method = RequestMethod.GET)
	public void reviewBoard() {
		// totalReview 페이지 이동

	} // end reviewBoard()

	@RequestMapping(value = "/review_register", method = RequestMethod.GET)
	public void reviewRegister() {
		// review_register.jsp 페이지 이동
	} // end reviewRegister()

	
	// 후기 등록 작업  DB Insert
	@RequestMapping(value = "/review_register", method = RequestMethod.POST)
	public String CreateReview(ReviewVO reviewvo, ReviewRegionVO reviewregionvo, ImgVO imgvo,
			@RequestParam MultipartFile imageFile, ModelMap modelMap, Model model) {

		int review_no = 0;

		// 썸네일 이미지 주소 생성
		ImageFile fileInfo = imageService.save(imageFile);
		if (fileInfo != null) {
			logger.info("대표 이미지 주소: " + SAVE_IMAGE_DIR + fileInfo.getFileName());

			// 다음 페이지에 볼 수 있게 modelMap에 넘기기
			modelMap.put("imageFile", fileInfo);
		} else {
			logger.info("썸네일 등록 실패 ");
		} // end if (fileInfo != null)

		if (reviewvo != null && reviewregionvo != null) {
			logger.info("mno 확인: " + reviewvo.getMno());

			// 이상 없으면 후기등록 DB insert!
			int review_result = tourReviewService.createReview(reviewvo);
			if (review_result == 1) { // 후기 등록 DB insert 성공
				logger.info("후기 등록 성공");

				// 썸네일과 장소를 등록하기 위해 review_no를 가져오자
				review_no = tourReviewService.readReview_no(reviewvo);
				logger.info("reviewNo : " + review_no);

				reviewvo = tourReviewService.readReviewRegisterData(review_no);
				model.addAttribute("reviewvo", reviewvo);

				String region_name = reviewregionvo.getRegion_name();
				logger.info("후기 지역: " + region_name);

				ReviewRegionVO reviewRegionvo2 = new ReviewRegionVO(review_no, region_name, 0);

				int reviewRegion_result = tourReviewService.createRegion(reviewRegionvo2);
				if (reviewRegion_result == 1) {

					logger.info("후기 지역 등록 성공");

					model.addAttribute("reviewregionvo", reviewRegionvo2);

					ImgVO imagevo = new ImgVO(ReviewRegisterID, review_no, 0, SAVE_IMAGE_DIR + fileInfo.getFileName());
					int image_result = tourReviewService.createThumnail(imagevo);

					if (image_result == 1) {
						logger.info("썸네일 등록 성공");

						model.addAttribute("imagevo", imagevo);
						logger.info("imagevo 주소 : " + imagevo);
					} else {

						logger.info("썸네일 등록 실패");
					} // end if(image_result == 1)

				} else {
					logger.info("후기 지역 등록 실패");
				} // end if(reviewRegion_result == 1)
			} else {
				logger.info("후기 등록실패");
			} // end if(review_result == 1)
		} // end if (reviewvo != null && reviewregionvo != null)

		return "redirect:review_detail?review_no=" + review_no;
	} // end CreateReview()
	
	
	@RequestMapping(value = "/review_detail", method = RequestMethod.GET)
	public String reviewDetail(int review_no, Model model) {
		// review_detail.jsp 페이지 이동
		// DAO 통해서 view 테이블 불러오게..
		logger.info("reviewDetail() 호출...");
		logger.info("review_no : " + review_no);

		ReviewVO reviewvo = tourReviewService.read_review_by_no(review_no);

		if (reviewvo != null) {
			logger.info("reviewvo.getMno: " + reviewvo.getMno());

			ImgVO img = tourReviewService.read_review_profile(reviewvo.getMno());
			logger.info("img: " + img);

			PersonalVO personalvo = tourReviewService.read_review_personal(reviewvo.getMno());
			String region = tourReviewService.read_review_region_name(reviewvo.getReview_no());

			model.addAttribute("reviewVO", reviewvo);

			if (personalvo != null) {
				model.addAttribute("inserterNickname", personalvo.getNickname());
				model.addAttribute("inserterIntro", personalvo.getIntroduce());
			}

			if (img != null) {
				model.addAttribute("inserterImg", img.getImg_url());
			}

			if (region != null) {
				model.addAttribute("inserterRegion", region);
			}
		} // end if

		return "review/review_detail";
	} // end reviewDetail()
	
	
	
/*
 * 	@RequestMapping(value = "/toggle_msg", method = RequestMethod.POST)
	public String toggleMsg(int msg_setter, int msg_getter, String msg_getnick, String msg_address, Model model) {
		System.out.println("setter: " + msg_setter);
		System.out.println("getter: " + msg_getter);
		System.out.println("msg_getnick: " + msg_getnick);

		model.addAttribute("msg_setter", msg_setter);
		model.addAttribute("msg_getter", msg_getter);
		model.addAttribute("msg_getnick", msg_getnick);
		model.addAttribute("msg_address", msg_address);

		return "toggle_msg";
	} // end toggleMsg(msg_setter, msg_getter, msg_getnick, msg_address, model)
*	
*/	
	@RequestMapping(value = "/toggle_msg", method = RequestMethod.POST)
	public String toggleMsg(int msg_setter, int msg_getter, String[] msg_getnick, String msg_address, Model model) {
		System.out.println("setter: " + msg_setter);
		System.out.println("getter: " + msg_getter);
		System.out.println("review####msg_getnick: " + msg_getnick.length);
		//System.out.println("tour####msg_getnick[0]: " + msg_getnick[0]);
		//System.out.println("tour####msg_getnick[1]: " + msg_getnick[1]);

		model.addAttribute("msg_setter", msg_setter);
		model.addAttribute("msg_getter", msg_getter);
		model.addAttribute("msg_getnick", msg_getnick);
		model.addAttribute("msg_address", msg_address);

		return "toggle_msg";
	} // end toggleMsg(msg_setter, msg_getter, String[] msg_getnick, msg_address, model)
	
	@RequestMapping(value = "/toggle_msg", method = RequestMethod.GET)
	public String toggleMsg() {

		return "toggle_msg";
	} // end toggleMsg()
	
	
	@RequestMapping(value="/review_update_pre", method = RequestMethod.POST)
	public String reviewUpdatePre(int review_no, Model model) {
		logger.info("리뷰 번호 번호 : " + review_no);
		
		ReviewVO reviewvo = tourReviewService.readReviewInfo(review_no);
		logger.info("ReviewVO : " + reviewvo);
		ReviewRegionVO reviewRegionvo = tourReviewService.readReviewRegionInfo(review_no);
		logger.info("ReviewRegionVO : " + reviewRegionvo);
		ImgVO imgvo = tourReviewService.readReviewMainImage(review_no);
		logger.info("ImgVO : " + imgvo);
		
		if(reviewvo != null && reviewRegionvo != null && imgvo != null) {
			logger.info("수정하기 위한 검색 작업 완료...");
			model.addAttribute("ReviewVO", reviewvo);
			model.addAttribute("ReviewRegionVO", reviewRegionvo);
			model.addAttribute("ImgVO", imgvo);
			logger.info("수정하기 위한 vo model Add 완료...");			
		} else {
			logger.info("수정하기 위한 검색 작업 실패...");
		}	
		
		return "review/review_update";
	} // end ReviewUpdatePre(review_no, model)
	
	@RequestMapping(value="/review_update_suf", method = RequestMethod.POST)
	public String reviewUpdateSuf(ReviewVO reviewvo, ReviewRegionVO reviewRegionvo, ImgVO imgvo, @RequestParam MultipartFile imageFile) {
		
		if(reviewvo != null && reviewRegionvo != null){
			logger.info("vo 값 읽기 성공");
			
			int review_result = tourReviewService.updateReview(reviewvo);
			if(review_result == 1) {
				logger.info("후기 내용 수정 성공");
				
				int reviewregion_result = tourReviewService.updateRegion(reviewRegionvo);
				if(reviewregion_result == 1) {
					logger.info("후기 지역 수정 성공");
					
					ImageFile fileInfo = imageService.save(imageFile);
					ImgVO imagevo = new ImgVO(ReviewRegisterID, reviewvo.getReview_no(), 0, SAVE_IMAGE_DIR + fileInfo.getFileName());
					
					int image_result = tourReviewService.updateThumnail(imagevo);
					if(image_result == 1) {
						logger.info("썸네일 수정 성공");						
					} else {
						logger.info("썸네일 수정 실패");
					} // end if(image_result == 1)					
				} else {
					logger.info("후기 지역 수정 실패");
				} // end if(reviewregion_result == 1)				
			} else {
				logger.info("후기 내용 수정 실패");
			} // end if(review_result == 1)			
		} else {
			logger.info("vo 값 읽기 실패");
		} // end if(reviewvo != null && reviewRegionvo != null && imgvo != null)		
		
		return "redirect:review_detail?review_no=" + reviewvo.getReview_no();
	} // end ReviewUpdateSuf()
	
	
	@RequestMapping(value="review_delete", method = RequestMethod.POST)
	public String reviewDelete(int review_no) {
		logger.info("리뷰 번호 : " + review_no);
		
		int review_result = tourReviewService.deleteReview(review_no);
		if(review_result == 1){
			logger.info("여행 리뷰 삭제 성공");
			
			int reviweRegion_result = tourReviewService.deleteRegion(review_no);
			if(reviweRegion_result == 1) {
				logger.info("여행 리뷰 지역 삭제 성공");
				
				int img_result = tourReviewService.deleteThumnail(review_no);
				if(reviweRegion_result == 1) {
					logger.info("썸네일 삭제 성공");					
				} else {
					logger.info("썸네일 삭제 실패");					
				}				
			} else {
				logger.info("여행 리뷰 지역 삭제 실패");
			}
		} else {
			logger.info("여행 리뷰 삭제 실패");
		}
		
		return null;
	} // end reviewDelete(review_no)
	
	

} // end class TourReviewController