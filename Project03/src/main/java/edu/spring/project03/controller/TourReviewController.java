package edu.spring.project03.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/review")
public class TourReviewController {
	
	@RequestMapping(value = "/totalReview", method = RequestMethod.GET)
	public void totalReview() {
		// totalReview 페이지 이동
		
	} // end totalReview()
	
	@RequestMapping(value = "/review_register", method = RequestMethod.GET)
	public void reviewRegister() {
		// review_register.jsp 페이지 이동
		
	} // end totalReview()
	
	
	
	
	
} // end class TourReviewController