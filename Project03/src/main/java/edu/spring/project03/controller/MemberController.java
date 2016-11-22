package edu.spring.project03.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	
	@RequestMapping(value="/member_register01", method=RequestMethod.GET)
	public void register01() {
		logger.info("member_register01.jsp 호출...");
		
	} // end register01()
	
	@RequestMapping(value="/member_register02", method=RequestMethod.GET)
	public void register02() {
		logger.info("member_register02.jsp 호출...");
		
	} // end register02()
	
	
	
	
	
	
	
	
	
	
	
} // end class MemberController