package edu.spring.project03.controller;

import java.io.IOException;
import java.io.PrintWriter;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.MemberVO;
import edu.spring.project03.domain.RegionVO;
import edu.spring.project03.domain.TourRegisterVO;
import edu.spring.project03.domain.TourReplyVO;
import edu.spring.project03.service.AdminService;
import edu.spring.project03.service.TourSearchService;

@Controller
public class TourSearchController {
	private static final Logger logger = LoggerFactory.getLogger(TourSearchController.class);

	@Autowired
	private AdminService adminService;

	@Autowired
	private TourSearchService tourSelectService;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public void main() {
		logger.info("index.jsp 소환");
	}

	@RequestMapping(value = "/datepickTest", method = RequestMethod.POST)
	public String test1(Model model, String start_date, String end_date) {
		logger.info("startDate: " + start_date);
		logger.info("endDate: " + end_date);

		TourRegisterVO vo = new TourRegisterVO(0, 0, null, 0, 0, null, null, start_date, end_date, 0);

		List<ImgVO> list = tourSelectService.read_region_date(vo);

		model.addAttribute("periodList", list);

		return "index";
	}

	/*
	 * @RequestMapping(value = "/regionTest", method = RequestMethod.POST)
	 * public String test2(Model model, String region_name) { logger.info(
	 * "region: " + region_name);
	 * 
	 * List<ImgVO> regionList = tourSelectService.read_region(region_name);
	 * 
	 * model.addAttribute("regionList", regionList);
	 * 
	 * return "index"; }
	 */

	@RequestMapping(value = "/imageTest", method = RequestMethod.POST)
	public String test3(Model model, int board_type, int content_no, int photo_no) {

		logger.info("no: " + photo_no);

		ImgVO vo = new ImgVO(board_type, content_no, photo_no, null);

		List<ImgVO> imageList = tourSelectService.read_region_image(vo);

		model.addAttribute("imageList", imageList);

		return "index";
	}

	// @RequestMapping(value = "/TourRegister", method = RequestMethod.POST)
	// public String test8() {
	// return "TourRegister";
	// }

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public void test9(Model model) {

		List<MemberVO> list = adminService.newUserList();
		model.addAttribute("newMemberList", list);
		logger.info("admin.jsp 소환 ");

	}

	@RequestMapping(value = "/FTourRegister", method = RequestMethod.GET)
	public void test10(int trip_no, Model model) {
		logger.info("FTourRegister.jsp 소환");
		logger.info("trip_no: " + trip_no);

		TourRegisterVO tourVO = tourSelectService.read_trip_by_no(trip_no);

		model.addAttribute("tourVO", tourVO);

	}

	// 지역 검색 Ajax 처리
	// 해당 지역 검색 메소드
	/*@RequestMapping(value = "/regionTest", method = RequestMethod.POST)
	public void checkRegion(@RequestBody RegionVO vo, HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		logger.info("여행 지역: " + vo.getRegion_name());

		List<ImgVO> list = tourSelectService.read_region(vo.getRegion_name());
		logger.info("검색된 사진 개수: " + list.size());

		PrintWriter out = response.getWriter();

		if (list != null) {
			out.print(list);
		} // end if
	} // checkid(request, response)
*/	
	@RequestMapping(value = "/regionTest", method = RequestMethod.POST)
	public ResponseEntity<List<ImgVO>> readReplies(@RequestBody RegionVO vo) {
		
		logger.info("여행 지역: " + vo.getRegion_name());
		
		List<ImgVO> list = tourSelectService.read_region(vo.getRegion_name());
		
		ResponseEntity<List<ImgVO>> entity = null;
		if (list != null) { // select 성공
			entity = new ResponseEntity<List<ImgVO>>(list, HttpStatus.OK);
		} else { // select 실패
			entity = new ResponseEntity<List<ImgVO>>(list, HttpStatus.BAD_REQUEST);
		} // end if

		return entity;
	}// end readReplies()

	// end updateReply()
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

}
