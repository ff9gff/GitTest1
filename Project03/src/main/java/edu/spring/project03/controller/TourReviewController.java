package edu.spring.project03.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.spring.project03.service.ImageService;
import edu.spring.project03.service.ImageView;
import edu.spring.project03.service.TourReviewService;

@Controller
@RequestMapping(value = "/review")
public class TourReviewController {
		
	private static final Logger logger = LoggerFactory.getLogger(TourRegisterController.class);
	
	public static final String SAVE_IMAGE_DIR = "resources/photo_upload/";	
	
	private int TourRegisterID = 2;
	
//	@Autowired
//	private TourReviewService tourReviewService;
	
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
	
	
} // end class TourReviewController