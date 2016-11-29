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
	
	@Resource(name="imageView")
	private ImageView imageView;
	
	@Autowired
	private ImageService imageService;
	
	@RequestMapping(value = "/totalReview", method = RequestMethod.GET)
	public void totalReview() {
		// totalReview 페이지 이동
		
	} // end totalReview()
	
	@RequestMapping(value = "/review_register", method = RequestMethod.GET)
	public void reviewRegister() {
		// review_register.jsp 페이지 이동
		
	} // end totalReview()
	
	@RequestMapping(value = "create_review", method = RequestMethod.POST)
	public void CreateReview(ReviewVO reviewvo, @RequestParam MultipartFile imageFile, ModelMap modelMap, Model model) {
		
		ImageFile fileInfo = imageService.save(imageFile);				
		if (fileInfo != null) {
			logger.info("대표 이미지 주소: " + SAVE_IMAGE_DIR + fileInfo.getFileName());
		} else {
			logger.info("대실패 ");

		}
		
		if (reviewvo != null) {
			
			model.addAttribute("reviewvo", reviewvo);
			modelMap.put("imageFile", fileInfo);
			
			// 이상 없으면 여행등록 DB insert!
			int result = tourReviewService.createReview(reviewvo);
	
			if (result == 1) { // 여행등록 DB insert 성공
				logger.info("리뷰 등록 성공");
				
				int content_no = tourReviewService.readReview_no(reviewvo);
				
				// 썸네일과 장소를 등록하기 위해 trip_no를 가져오자		
				ImgVO imgvo = new ImgVO(ReviewRegisterID, content_no, 0, SAVE_IMAGE_DIR + fileInfo.getFileName());
				int result2 = tourReviewService.createThumnail(imgvo);

				if (result2 == 1) {
					logger.info("썸네일 등록 성공");					
				} else {
					logger.info("썸네일 등록 실패");
				}
				
			} else { // DB insert 실패
				logger.info("리뷰 등록 실패");
			}

		} else {
			logger.info("reviewvo null!");
		}
		
	} // end CreateReview()
	
	
} // end class TourReviewController