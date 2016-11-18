package edu.spring.project03.controller;




import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class AdminController {
	private static final Logger logger =
			LoggerFactory.getLogger(AdminController.class);
	
	
	@RequestMapping(value="/MyUserInfo", method=RequestMethod.GET)
	public void MyUserInfomation(){
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}//end class 

