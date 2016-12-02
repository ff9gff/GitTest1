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

			// 이상 없으면 여행등록 DB insert!
			int review_result = tourReviewService.createReview(reviewvo);
			if (review_result == 1) { // 후기 등록 DB insert 성공
				logger.info("후기 등록 성공");

				review_no = tourReviewService.readReview_no(reviewvo);
				logger.info("reviewNo : " + review_no);

				/*reviewvo = tourReviewService.readReviewRegisterData(review_no);
				model.addAttribute("reviewvo", reviewvo);*/

				String region_name = reviewregionvo.getRegion_name();
				logger.info("후기 지역: " + region_name);
				
				ReviewRegionVO reviewRegionvo2 = new ReviewRegionVO(review_no, region_name, 0);
				
				int reviewRegion_result = tourReviewService.createRegion(reviewRegionvo2);
				if (reviewRegion_result == 1) {
				
					logger.info("후기 지역 등록 성공");

//					model.addAttribute("reviewRegionvo", reviewRegionvo2);

					ImgVO imagevo = new ImgVO(ReviewRegisterID, review_no, 0, SAVE_IMAGE_DIR + fileInfo.getFileName());
					int image_result = tourReviewService.createThumnail(imagevo);

					if (image_result == 1) {
						logger.info("썸네일 등록 성공");

//						model.addAttribute("imagevo", imagevo);
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
		
		return"redirect:review_detail?review_no=" + review_no;
	} // end CreateReview()
	
	
	@RequestMapping(value = "/review_detail", method = RequestMethod.GET)
	public String reviewDetail(int review_no, Model model) {		
		// review_detail.jsp 페이지 이동
		// DAO 통해서 view 테이블 불러오게..
		logger.info("reviewDetail() 호출...");
		logger.info("review_no : " + review_no);
		
		ReviewVO reviewvo = tourReviewService.read_review_by_no(review_no);
		
		if(reviewvo != null) {
			logger.info("reviewvo.getMno" + reviewvo.getMno());
			
			ImgVO img = tourReviewService.read_review_profile(reviewvo.getMno());
			logger.info("img: " + img);
			
			PersonalVO personalvo = tourReviewService.read_review_personal(reviewvo.getMno());
			String region = tourReviewService.read_review_region_name(reviewvo.getReview_no());
			
			model.addAttribute("reviewvo", reviewvo);
			
			if(personalvo != null){
			model.addAttribute("inserterNickname", personalvo.getNickname());
			model.addAttribute("inserterIntro", personalvo.getIntroduce());
			}
			
			if(img != null){
			model.addAttribute("inserterImg", img.getImg_url());
			}
			
			if(region != null){
			model.addAttribute("inserterRegion", region);
			}			
		} // end if		
		
		return "review/review_detail";
		
	} // end reviewDetail()
	
	
	
	
	
	
	
	
	
	
	
	
	
	

} // end class TourReviewController