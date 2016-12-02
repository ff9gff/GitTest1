package edu.spring.project03.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.spring.project03.domain.MsgDTO;

import edu.spring.project03.service.MsgAllService;
import edu.spring.project03.service.SearchUserService;

@Controller
public class SendMSGcontroller {

	@Autowired
	private SearchUserService searchUserService;

	@Autowired
	private MsgAllService msgAllService;

	private static Logger logger = LoggerFactory.getLogger(SendMSGcontroller.class);

	@RequestMapping(value = "/SendMsg", method = RequestMethod.GET)
	public void sendMSgPage() {

	}

	// 메세지 보내는 코드
	@RequestMapping(value = "/sendMsgU", method = RequestMethod.POST)
	public String sendMSGU(String sd_mno, String nickname, String msg_content) {

		logger.info("userid - > " + sd_mno); // content 넘어 가는 거 확인
		logger.info("neckname " + nickname);
		logger.info("msg_content" + msg_content);

		searchUserService.sendMsgTO(sd_mno, nickname, msg_content);
		return "redirect:admin";
	}

	
	//메세지 함을 확인 합니다. 일단 mno를 6으로 설정합니다. 나중에 합칠 경우에 대비해서 미리 적어 둔다 . 
	@RequestMapping(value = "/myMsg", method = RequestMethod.GET)
	public void stres(Model model) {

		int mno = 6; // 임시 보관함 //< 6

		List<MsgDTO> allList = msgAllService.readGetMsg(mno);

		logger.info("가자 " + allList.size());
		logger.info(" 값 " + allList.get(0).getNickname());
		
		model.addAttribute("allList", allList);

		
	}//end 
	
	
	
	//MySendMsg
	@RequestMapping(value = "/MySendMsg", method = RequestMethod.GET)
	public void sendMyMsg(Model model) {

		int mno = 1; // 임시 보관함 //< 6 일단 내용이 지금 많은  공지사항 admin으로 생각하자 

		List<MsgDTO> allList = msgAllService.readSendMsg(mno);

		logger.info("가자 " + allList.size());
		logger.info(" 값 " + allList.get(0).getNickname());
		
		model.addAttribute("allList", allList);

		
	}//end 
	
	
	
	
	
	
	
	@RequestMapping(value="/testMyGet" ,method=RequestMethod.GET)
	public void test022(@ModelAttribute("postdata") String postdata){
		
		
		logger.info("userSearch2 호출 팝업 나와라 ");
		logger.info("안녕하세요 " + postdata);
		

		
	}
	
	
	
	
	

	
	

}
