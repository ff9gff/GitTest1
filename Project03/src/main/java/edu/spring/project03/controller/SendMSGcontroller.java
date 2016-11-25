package edu.spring.project03.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.spring.project03.domain.MsgDTO;
import edu.spring.project03.domain.MsgVO;
import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.service.MsgAllService;
import edu.spring.project03.service.SearchUserService;

@Controller
public class SendMSGcontroller {
		
	@Autowired
	private SearchUserService searchUserService;
	
	@Autowired
	private MsgAllService msgAllService;
	
	
	private static Logger logger = 
			LoggerFactory.getLogger(SendMSGcontroller.class);
	
	@RequestMapping(value= "/SendMsg" , method=RequestMethod.GET)
	public void sendMSgPage(){
		
		
		
	}
	
	//메세지 보내는 코드 
	@RequestMapping(value ="/sendMsgU" , method=RequestMethod.POST)
	public String sendMSGU(String sd_mno , String nickname  , String msg_content){
		
		
		logger.info("userid - > " + sd_mno); // content 넘어 가는 거 확인 
		logger.info("neckname "+nickname); 
		logger.info("msg_content"+msg_content);
		
		searchUserService.sendMsgTO(sd_mno, nickname, msg_content);
		return "redirect:admin"; 
	}
	
	
	
	///////////////테스트 컨트롤러 
	@RequestMapping(value="/myMsg", method= RequestMethod.GET)
	public void stres(Model model){
		
	int mno = 6; // 임시 보관함 	//< 6	
	
	List<MsgDTO> allList=  msgAllService.readGetMsg(mno);

	

	logger.info("가자 "+allList.size());
	logger.info(" 값 " +allList.get(0).getNickname());
	
	
//	List<MsgVO> msgList = msgAllService.readMyMsg(mno); 
//	//String nickname = msgAllService.readNickname(mno);
//	//List<String> nicknames = new ArrayList<>();
//
//	
//	logger.info("msgList 사이즈 " + msgList.size());
//	for(int i =0 ; i< msgList.size(); i++){
//		
//		nicknames.add(msgAllService.readNickname(msgList.get(i).getSd_mno()));
//	}
//	
//	 
//	List<PersonalVO> allList = new ArrayList<>();
//
//	
//	MsgVO vo2 =null;
//	for(int j= 0 ; j < msgList.size();j++){
//		
//		
//		vo2 = new MsgVO(0, msgList.get(j).getSd_mno(), mno/*여기는 나중에 수정 */, msgList.get(j).getMsg_content(),msgList.get(j).getMsg_date());
//		
//		PersonalVO vo = new PersonalVO(vo2,nicknames.get(j));
//		allList.add(vo);
//	}
//	logger.info("se" + msgList.get(0).getMsg_content());
//	
//	allList.get(0).getMsg().setMsg_content("sw");
////	logger.info(allList.get(0).getMsg().getMsg_content());
//	
	model.addAttribute("allList", allList);


	}
	
	
	
	
	
	
	
	
	
	
}
