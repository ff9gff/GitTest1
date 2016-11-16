package edu.spring.project03;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.MemberVO;
import edu.spring.project03.domain.TourRegisterVO;
import edu.spring.project03.service.MemberService;

@Controller
public class TestController {
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);

	@Autowired
	private MemberService memberService;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public void main() {
		logger.info("야호");
		logger.info("github Test");
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void test2() {
		logger.info("야호");
		logger.info("github Test");

	}

	@RequestMapping(value = "/login-post", method = RequestMethod.POST)
	public String test1(Model model) {
		logger.info("야호으아아으");
		logger.info("github Test");
		List<MemberVO> list = memberService.read();
		model.addAttribute("memberList", list);

		return "member/list";
	}

	@RequestMapping(value = "/datepickTest", method = RequestMethod.POST)
	public String test5(Model model, String start_date, String end_date) {
		logger.info("startDate: " + start_date);
		logger.info("endDate: " + end_date);

		TourRegisterVO vo = new TourRegisterVO(0, 0, null, 0, 0, null, null, start_date, end_date, 0, null);

		List<TourRegisterVO> list = memberService.read_region_date(vo);

		model.addAttribute("periodList", list);
		
		return "test/pickTest";
	}

	@RequestMapping(value = "/regionTest", method = RequestMethod.POST)
	public String test6(Model model, String region) {
		logger.info("region: " + region);

		List<TourRegisterVO> regionList = memberService.read_region(region);

		model.addAttribute("regionList", regionList);

		return "test/pickTest";
	}
	
	@RequestMapping(value = "/imageTest", method = RequestMethod.POST)
	public String test6(Model model, int board_type, int content_no, int photo_no ) {
		
		logger.info("no: " + photo_no);
		
		ImgVO vo = new ImgVO(board_type, content_no, photo_no, null);

		List<ImgVO> imageList = memberService.read_region_image(vo);

		model.addAttribute("imageList", imageList);

		return "test/pickTest";
	}

	// 웹사이트에서 동일한 부분 코드 수정
	// 이클립스에서 동일한 부분 코드 수정
	// 이클립스에서 커밋앤푸쉬하려니 불가능!
	// 뭐지? 이상하네 싶어서 중앙리파지토리에서 pull을 했더니
	// 웹사이트, 이클립스에서 수정한 부분이 모두 뜬다!
	// 선택을 해야 한다! 뭐가 더 나은 코드인지 확인 후 필터링
	// 필터링이 다 됐으면 add to index를 하고
	// 커밋앤푸시를 하면 반영 완료!

	// 커밋만 하면 로컬리파지토리에만 저장된다.
	// 로컬에서 푸시를 해야 git허브에 저장된다
	// gg

}
