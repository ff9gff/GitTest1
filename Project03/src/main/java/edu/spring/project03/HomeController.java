package edu.spring.project03;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

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

	}
	
	
	@RequestMapping(value="/admin" ,method=RequestMethod.GET)
	public void adminPage(){
		logger.info("admin.jsp 소환");
		
	}
	
	@RequestMapping(value="/tourSearch" ,method=RequestMethod.GET)
	public void tourSelect(){
		logger.info("tourSearch.jsp 소환");
		
	}

	
	
}
