package edu.spring.project03;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );

		
		System.out.println("push test by 대호");
		System.out.println("push test by 성준");
		System.out.println("push test by 주영");
		System.out.println("push test by 승현");
		System.out.println("push test by 유나");
		System.out.println("push test by 태훈");
		
		return "index";

	} // end home(locale, model)
	
//	@RequestMapping(value="/member_register01", method=RequestMethod.GET)
//	public void register01() {
//		logger.info("member_register01.jsp 호출...");
//		
//	} // end register01()
//	
//	@RequestMapping(value="/member_register02", method=RequestMethod.GET)
//	public void register02() {
//		logger.info("member_register02.jsp 호출...");
//		
//	} // end register01()
//	
//	@RequestMapping(value="/test", method=RequestMethod.GET)
//	public void test() {
//		logger.info("member_register02.jsp 호출...");
//		
//	} // end register01()
//	
	@RequestMapping(value="/tour/detail", method=RequestMethod.GET)
	public String tourDetail() {
		// tour/detail.jsp 테스트 콘트롤러입니다~
		return "tour/detail";
	} // end tourDetail()
	
	@RequestMapping(value="/smarteditor", method=RequestMethod.GET)
	public String test123() {
		// tour/detail.jsp 테스트 콘트롤러입니다~
		return "smarteditorTest";
	} // end tourDetail()
	

	
	
	
	
	
} // end class HomeController