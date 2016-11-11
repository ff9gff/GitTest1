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

		logger.info("니가 하면 나도 한다 bug fix");

		logger.info("bug fix");

		
	}
	
	// 웹사이트에서 동일한 부분 코드 수정
	// 이클립스에서 동일한 부분 코드 수정
	// 이클립스에서 커밋앤푸쉬하려니 불가능!
	// 뭐지? 이상하네 싶어서 중앙리파지토리에서 pull을 했더니
	// 웹사이트, 이클립스에서 수정한 부분이 모두 뜬다!
	// 선택을 해야 한다! 뭐가 더 나은 코드인지 확인 후 필터링
	// 필터링이 다 됐으면 add to index를 하고
	// 커밋앤푸시를 하면 반영 완료!

}
