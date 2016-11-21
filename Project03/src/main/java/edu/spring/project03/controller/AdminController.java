package edu.spring.project03.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.spring.project03.service.AdminService;

@Controller

public class AdminController {
	private static final Logger logger =
			LoggerFactory.getLogger(AdminController.class);
	
	
	@Autowired
	private AdminService adminService;
	// 아이디 정보를 찾는 거다 . 
	@RequestMapping(value="/MyUserInfo", method=RequestMethod.GET)
	public void MyUserInfomation(){
			
	}
	
	//admin 페이지에서 가입승인 메뉴바 눌렀을때  다시 보던 창이 뜨게 만드는 리퀘스트 멥핑 
	@RequestMapping(value="/callbackAdmin", method=RequestMethod.GET )
	public String callAdminPage(){	
		return "redirect:admin";
	}
	
	
	@RequestMapping(value="/AdminMsg", method=RequestMethod.GET )
	public void adminMsg(){
		
		
	}
	
	
	/*	frm.attr('action','sendAllMyUser');
		frm.attr('method','post');
		frm.submit();*/
	
	//@ModelAttribute("msg_content") String msg_content
	@RequestMapping(value="/sendAllMyUser", method=RequestMethod.POST)
	public String sendUserText(String msg_content){
		
		//@ModelAttribute("msg_content")
		
		logger.info("msg.content 나와라 !"+msg_content);
		if(msg_content ==null){
			msg_content ="공지사항입니다.";
		}
		
	int result=	adminService.sendAllUserMessage(msg_content);
		
		logger.info("메세지 보내기 결과 입니다. "+ result);
		
		return "redirect:AdminMsg";
	}
	
	
	
	
	
	
	
	
	
	
}//end class 

