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
	
	// 아이디 정보를 찾는 거다 . 
	@RequestMapping(value="/MyUserInfo", method=RequestMethod.GET)
	public void MyUserInfomation(){
			
	}
	
	//admin 페이지에서 가입승인 메뉴바 눌렀을때  다시 보던 창이 뜨게 만드는 리퀘스트 멥핑 
	@RequestMapping(value="/callbackAdmin", method=RequestMethod.GET )
	public String callAdminPage(){	
		return "redirect:admin";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}//end class 

