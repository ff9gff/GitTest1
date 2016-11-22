package edu.spring.project03.controller;


import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.spring.project03.domain.MemberVO;
import edu.spring.project03.service.MemberService;

@Controller
@RequestMapping(value = "/member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	
	@RequestMapping(value="/member_register01", method=RequestMethod.GET)
	public void register01() {
		logger.info("member_register01.jsp 호출...");
		
	} // end register01()
	
	@RequestMapping(value="/member_register02", method=RequestMethod.GET)
	public void register02() {
		logger.info("member_register02.jsp 호출...");
		
	} // end register02()
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public void loginGET() {
		logger.info("loginGET() 호출...");
		
	} // end loginGET()

	@RequestMapping(value="/login-post", method=RequestMethod.POST)
	public void loginPOST(MemberVO vo, Model model, String query, HttpServletRequest request) {
		logger.info("loginPOST() 호출...");
		logger.info("입력 ID : " + vo.getUserid());
		logger.info("입력 PW : " + vo.getPwd());
		
		MemberVO result = memberService.login(vo);
//		logger.info("result : " + result.toString()); // 로그인 실패시 result 값이 null 값이 오기 때문에 NullPointerException 발생	
		model.addAttribute("login_result", result);
		// 모델 객체에 속성(attribute)를 설정하면,
		// 인터셉터의 postHandle() 메소드의 ModelAndView 객체로 전달됨.
		
		// login-post 요청을 보낸 주소를 저장
		logger.info("query : " + query);
		if (query != null && !query.equals("null")) {
			// 요청 파라미터 query에 값이 들어 있는 경우
			String dest = query.substring(4); // substring : 문자열을 잘라서, 4번째 문자열부터 시작하겠다. (0 부터 시작!)
			logger.info("dest : " + dest);
			request.getSession().setAttribute("dest", dest);
		}		
		
	} // end loginPOST()
	
	
	
	
	
	
	
	
	
	
	
	
	
	
} // end class MemberController