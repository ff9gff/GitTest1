package edu.spring.project03;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public void main() {
		logger.info("야호");
		logger.info("github Test");
	}
	
	@RequestMapping(value = "test1", method = RequestMethod.GET)
	public void test1() {
		logger.info("야호");
		logger.info("github Test");
	}
	
	@RequestMapping(value = "test2", method = RequestMethod.GET)
	public void test2() {
		logger.info("야호");
		logger.info("github Test");
	}
	
	@RequestMapping(value = "test3", method = RequestMethod.GET)
	public void test3() {

		logger.info("야호");
		logger.info("?");
		logger.info("!");
		logger.info("@");
		

	}

}
