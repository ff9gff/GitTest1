package edu.spring.project03.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.request;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.UrlPathHelper;

import edu.spring.project03.domain.MsgDTO;
import edu.spring.project03.pageutil.MsgPaginationCriteria;
import edu.spring.project03.pageutil.PageMaker;
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
	public String sendMSGU(int sd_mno, String nickname, String msg_content,String sd_url, RedirectAttributes attr, HttpServletRequest request) {
		System.out.println("msg_userid - > " + sd_mno);
		System.out.println("msg_nickname - > " + nickname);
		logger.info("userid - > " + sd_mno); // content 넘어 가는 거 확인
		logger.info("neckname " + nickname);
		logger.info("msg_content" + msg_content);
		
		String requestUrl = request.getRequestURI().toString();
		System.out.println("requestUrl:"+requestUrl);
	
		
		String sendUrl = "redirect:"+sd_url;
		System.out.println("어디서 부른거니!111 =====> "+sendUrl);
		
		

		int result = searchUserService.sendMsgTO(sd_mno, nickname, msg_content);
		
		if(result ==1){
			attr.addFlashAttribute("insert_result","success");
		}else{
			attr.addFlashAttribute("insert_result","fail");
		}
		
		return sendUrl;
	
	}

	
	//메세지 함을 확인 합니다. 일단 mno를 6으로 설정합니다. 나중에 합칠 경우에 대비해서 미리 적어 둔다 . 
	@RequestMapping(value = "/myMsg", method = RequestMethod.GET)
	public void stres(Model model , Integer page, Integer mno) {

		mno = 1; // 임시 보관함 //< 6

		MsgPaginationCriteria x = new MsgPaginationCriteria(mno);
		
		if(page !=null){//요청 파라미터에 현재 페이지 정보가 있는 경우 
			x.setPage(page);
			
		}
		
		logger.info("hi "+msgAllService.getNumOfRecords(mno));
		List<MsgDTO> allList= msgAllService.readSendMsg2(x);
		PageMaker maker = new PageMaker();
		maker.setMsgcriteria(x);
		
		
		maker.setTotalCount(msgAllService.getNumOfRecords(mno));
		
		//maker.setPageData();
		maker.setMSGPageData();
		model.addAttribute("pageMaker", maker);
	
		//http://localhost:8181/ex02/board/list-page?page=3 
		// 저렇게 쓰면 다른 페이지가 보인다  
		//해당 페이지에 보여줄 게시글만 검색 
		
		
		
		//List<MsgDTO> allList = msgAllService.readGetMsg(mno);
		for (MsgDTO dto : allList) {
			String msg = dto.getMsg_content();
			if (msg.length() >= 5) {
				dto.setMsg_content(msg.substring(0, 5) + "...");
			}
		}

	//	logger.info("가자 " + allList.size());
		//logger.info(" 값 " + allList.get(0).getNickname());
		
		model.addAttribute("allList", allList);

		
	}//end 
	
	
	
	//MySendMsg
	@RequestMapping(value = "/MySendMsg", method = RequestMethod.GET)
	public void sendMyMsg(Model model ,Integer page ,Integer mno) {
			//Model model , Integer page, Integer mno
		 mno = 6; // 임시 보관함 //< 6 일단 내용이 지금 많은  공지사항 admin으로 생각하자 
		 
		 MsgPaginationCriteria x = new MsgPaginationCriteria(mno);
		 
		 if(page != null){
			 x.setPage(page);
		 }
		 
		 List<MsgDTO> allList= msgAllService.readPageGetMsgTxt(x);
		 PageMaker maker = new PageMaker();
		 maker.setMsgcriteria(x);
		 
		 
		 maker.setTotalCount(msgAllService.pageGetMsgOfRecords(mno));
		//List<MsgDTO> allList = msgAllService.readSendMsg(mno);
		 maker.setMSGPageData();
		model.addAttribute("pageMaker", maker);
		 
		for (MsgDTO dto : allList) {
			String msg = dto.getMsg_content();
			if (msg.length() >= 5) {
				dto.setMsg_content(msg.substring(0, 5) + "...");
			}
		}		
		
		
//		logger.info("가자 " + allList.size());
//		logger.info(" 값 " + allList.get(0).getNickname());
		
		
		model.addAttribute("allList", allList);

		
//		 MsgPaginationCriteria x = new MsgPaginationCriteria(mno);
//			
//			if(page !=null){//요청 파라미터에 현재 페이지 정보가 있는 경우 
//				x.setPage(page);
//				
//			}
//			
//			logger.info("hi "+msgAllService.pageGetMsgOfRecords(mno));
//			List<MsgDTO> allList= msgAllService.readSendMsg(mno);
//			PageMaker maker = new PageMaker();
//			maker.setMsgcriteria(x);
//			
//			
//			maker.setTotalCount(msgAllService.pageGetMsgOfRecords(mno));
//			
//			maker.setPageData();
//			model.addAttribute("pageMaker", maker);
//		
//			//http://localhost:8181/ex02/board/list-page?page=3 
//			// 저렇게 쓰면 다른 페이지가 보인다  
//			//해당 페이지에 보여줄 게시글만 검색 
//			
//			
//			
//			//List<MsgDTO> allList = msgAllService.readGetMsg(mno);
//			for (MsgDTO dto : allList) {
//				String msg = dto.getMsg_content();
//				if (msg.length() >= 5) {
//					dto.setMsg_content(msg.substring(0, 5) + "...");
//				}
//			}
//
//		//	logger.info("가자 " + allList.size());
//			//logger.info(" 값 " + allList.get(0).getNickname());
//			
//			model.addAttribute("allList", allList);
//		 
//		 
		 
	}//end 
	
	
	
	
	
	
	
	@RequestMapping(value="/MiniMsg" ,method=RequestMethod.POST)
	public void test022(@ModelAttribute("postdata") String postdata ,@ModelAttribute("msg_content") String msg_content ,
			 Model model , @ModelAttribute("value") String value, @ModelAttribute("getname") String getname,String sendTxt){
		
		//postdata=5&value=&msg_content=공지사항입니다.
		logger.info("userSearch2 호출 팝업 나와라 ");
		//logger.info("postdata " + postdata +msg_content);
		logger.info("value" + value +"getname" +getname);
		int mno = Integer.parseInt(value);
		logger.info(""+mno);
		sendTxt= msgAllService.selectMSGContext(mno);
		logger.info("여기는 컨트롤러 입니다."+sendTxt);
		model.addAttribute("sendTxt",sendTxt);
		
		
		
	}//end miniMsg 
	
	
	
	
	
	
	
	

	
	

}
