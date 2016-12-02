package edu.spring.project03.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.spring.project03.domain.DomainDTO;
import edu.spring.project03.domain.MemberVO;
import edu.spring.project03.domain.MsgVO;
import edu.spring.project03.service.AdminService;
import edu.spring.project03.service.SearchUserService;

@Controller

public class AdminController {
	private static final Logger logger =
			LoggerFactory.getLogger(AdminController.class);
	
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private SearchUserService searchUserService;
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public void callAdmin(Model model) {
		

//		List<MemberVO> list = adminService.newUserList();
//		model.addAttribute("newMemberList", list);
//		logger.info("admin.jsp 소환 ");
		
		//여기를 수정하겠습니다. 11.28 수정 완료 부분 
		List<DomainDTO> list2 = adminService.readAdminDomain();
		logger.info("admin.jsp 소환 ");
		model.addAttribute("newMemberList", list2);
		

	}
	
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
	public String sendUserText(String msg_content , MsgVO vo){
		
		logger.info("vo "+ vo.getMsg_content());
		//@ModelAttribute("msg_content")
		 
		logger.info("msg.content 나와라 !"+msg_content);
		if(msg_content ==null){
			msg_content ="공지사항입니다.";
		}
		
	int result=	adminService.sendAllUserMessage(msg_content);
		
		logger.info("메세지 보내기 결과 입니다. "+ result);
		
		return "redirect:AdminMsg";
	}
	
	

	
	
	
	
	@RequestMapping(value="/AllMyUser" ,method=RequestMethod.GET)
	public void AllMyUser(Model model){
		
		//여기서 세팅을 한다. 
		//AllMyUser로 보내기 
		List<DomainDTO> list2 = adminService.allMyActivUser();
		logger.info("All 나의 활동 유저 페이지로 가자 소환 ");
		model.addAttribute("newMemberList", list2);
	}
	@RequestMapping(value="/AllMySubAdmin" ,method=RequestMethod.GET)
	public void AllMySubAdmin(Model model){
		//AllMyUser로 보내기 
		List<DomainDTO> list2 = adminService.allMySubAdminActivUser();
		logger.info("All 나의 활동 유저 페이지로 가자 소환 ");
		model.addAttribute("newMemberList", list2);
		
	}
	
	/*					<li Class="menuItem"><a Class="mylink" href="AllMyUser">전체 유저</a>
				</li>
				
					<li Class="menuItem"><a Class="mylink" href="AllMySubAdmin">관리자 관리</a>
				</li>*/
	
	
	
	///////////////임시 자리 
	
//	@RequestMapping(value= "/SendMsg" , method=RequestMethod.GET)
//	public void sendMSgPage(){
//		
//		
//		
//	}
//	
//	
//	@RequestMapping(value ="/sendMsgU" , method=RequestMethod.POST)
//	public String sendMSGU(String sd_mno , String nickname  , String msg_content){
//		
//		
//		logger.info("userid - > " + sd_mno); // content 넘어 가는 거 확인 
//		logger.info("neckname "+nickname); 
//		logger.info("msg_content"+msg_content);
//		
//		searchUserService.sendMsgTO(sd_mno, nickname, msg_content);
//		return "redirect:admin"; 
//	}
//	
//	
//	
//	///////////////테스트 컨트롤러 
//	@RequestMapping(value="/myMsg", method= RequestMethod.GET)
//	public void stres(Model model){
//		/* <c:forEach var="vo" items="${boardList }">
//    <tr>
//        <td>${vo.bno }</td>
//        <td><a href="${vo.bno }">${vo.title }</a></td>
//        <td>${vo.userid }</td>
//        <td>
//	        <fmt:formatDate value="${vo.regdate }" 
//	            pattern="yyyy-MM-dd HH:mm:ss"/>*/
//		
//	
//		
//		
//	
//	
//	}
	
	
	
}//end class 

