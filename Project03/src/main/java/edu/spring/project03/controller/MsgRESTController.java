package edu.spring.project03.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.spring.project03.service.MsgAllService;
import edu.spring.project03.service.SearchUserService;

@RestController
@RequestMapping(value = "/msg")
public class MsgRESTController {

	private static Logger logger = LoggerFactory.getLogger(MsgRESTController.class);
	
	@Autowired
	private MsgAllService msgService;
	
	@RequestMapping(value="/numText/{no}" , method = RequestMethod.DELETE)
	public int DeleteTxtOne(@PathVariable("no") Integer no){
		
		logger.info("no" + no);
		int result = msgService.deleteSelectMSGContext(no);
		
		if(result == 1 ){
			logger.info("삭제 성공입니다.");
		}else{
			logger.info("삭제 실패 ");
		}
		
		
		
		
		return 0; 
		
		
		
	};
	
	
	/*
	@RequestMapping(value = "/sendMsgU3", method = RequestMethod.POST)
	
	public  String  sendMSGU(@PathVariable("sd_mno") String sd_mno,@PathVariable("nickname") String nickname, 
		@PathVariable("msg_content") String msg_content ,@PathVariable("sd_rmno") String sd_rmno ,String msg_address ,
		RedirectAttributes attr, HttpServletRequest request,HttpServletResponse response) {
		logger.info("위치" + msg_address);
		logger.info("들어왓나 ...");
		logger.info("userid - > " + sd_mno); // content 넘어 가는 거 확인
		logger.info("neckname " + nickname);
		logger.info("msg_content" + msg_content);
		int mno = Integer.parseInt(sd_rmno); 
		int result = 	searchUserService.sendMsgTO(mno, nickname, msg_content);
		
		if(result ==1){
			attr.addFlashAttribute("insert_result","success");
		}else{
			attr.addFlashAttribute("insert_result","fail");
		}
	
	
		
		//http://localhost:8181/project03/mypage/UserPage/9   ./mypage/UserPage/"+mno

		
		return "redirect:" +msg_address;
	};
	*/
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}//end class 
