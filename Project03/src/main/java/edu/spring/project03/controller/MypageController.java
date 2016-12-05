package edu.spring.project03.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.domain.RegionVO;
import edu.spring.project03.domain.TourRegisterVO;
import edu.spring.project03.service.MypageService;
import edu.spring.project03.service.TourSearchService;


@Controller
public class MypageController {
	
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	private MypageService mypageService; 
		
	@RequestMapping(value="/MyPage", method=RequestMethod.GET )
	public String selectPesrsonal(HttpServletRequest req, Model model) {		
		HttpSession session = req.getSession();
		int mno = Integer.valueOf(session.getAttribute("mno").toString());
		logger.info("mno: " + mno);
		PersonalVO vo = mypageService.selectpersonal(mno);
		logger.info("닉네임 : " + vo.getNickname());
		logger.info("성별 : " + vo.getSex());
		logger.info("나이 : " + vo.getAge());
		logger.info("자기소개 : " + vo.getIntroduce());
		logger.info("이메일 : " + vo.getEmail());
		
		/*ImgVO img = tourSelectService.read_trip_profile(mno);
		model.addAttribute("inserterImg", img.getImg_url());
		logger.info("inserterImg: " + img.getImg_url());*/
		
		ImgVO src = mypageService.readProfile(mno);
		model.addAttribute("inserterImg", src.getImg_url());
		logger.info("src: " + src);
		
		model.addAttribute("vo", vo);
		
		return "MyPage";
	}
	
	// mno 검색 Ajax 처리
	// 해당 mno 검색 메소드
	@RequestMapping(value = "/MyPage/list/{mno}", method = RequestMethod.GET)
	public ResponseEntity<List<ImgVO>> ajaxlistTest(@PathVariable("mno") int mno, Model model) {

		logger.info("mno: " + mno);
		ResponseEntity<List<ImgVO>> entity = null;
		

		List<ImgVO> list = mypageService.read_mno(mno);
		
		model.addAttribute("list", list);
		

		if (list != null) {
			// select 성공 한것이다.
			entity = new ResponseEntity<List<ImgVO>>(list, HttpStatus.OK);
			
			logger.info("mno 검색 성공 ");			
			
		} else {
			// select 실패이다.
			entity = new ResponseEntity<List<ImgVO>>(list, HttpStatus.BAD_REQUEST);
			
			logger.info("mno 검색 실패 ");
			
		}

		logger.info("entity " + entity.getBody());
		// logger.info("list.mno "+ list.get(0).getUserid());
		// 출력 됨
		return entity;
	}
	
	// mno 검색 Ajax 처리
	// 해당 mno 이미지 아래 제목 검색 메소드
	@RequestMapping(value = "/MyPage/title/{mno}", method = RequestMethod.GET)
	public ResponseEntity<List<TourRegisterVO>> ajaxtitleTest(@PathVariable("mno") int mno) {

		ResponseEntity<List<TourRegisterVO>> entity = null;

	    List<TourRegisterVO> list = mypageService.read_mytour_title(mno);

		if (list != null) {
			// select 성공 한것이다.
			entity = new ResponseEntity<List<TourRegisterVO>>(list, HttpStatus.OK);
			logger.info("제목 전체 검색 성공 ");
		} else {
			// select 실패이다.
			entity = new ResponseEntity<List<TourRegisterVO>>(list, HttpStatus.BAD_REQUEST);
			logger.info("제목 전체 검색 실패 ");
		}

		logger.info("entity " + entity);
		// logger.info("list.mno "+ list.get(0).getUserid());
		// 출력 됨
		return entity;
	}
	
	@RequestMapping(value = "/MyPage/region/{mno}", method = RequestMethod.GET)
	public ResponseEntity<List<RegionVO>> ajaxregionTest(@PathVariable("mno") int mno) {

		ResponseEntity<List<RegionVO>> entity = null;

		List<RegionVO> list = mypageService.read_mytour_region(mno);

		if (list != null) {
			// select 성공 한것이다.
			entity = new ResponseEntity<List<RegionVO>>(list, HttpStatus.OK);
			logger.info("지역 전체 검색 성공 ");
		} else {
			// select 실패이다.
			entity = new ResponseEntity<List<RegionVO>>(list, HttpStatus.BAD_REQUEST);
			logger.info("지역  전체 검색 실패 ");
		}

		logger.info("entity " + entity);
		// logger.info("list.mno "+ list.get(0).getUserid());
		// 출력 됨
		return entity;
	}	

	
	@RequestMapping(value = "/MyPage/joinlist/{mno}", method = RequestMethod.GET)
	public ResponseEntity<List<ImgVO>> ajaxjoinlistTest(@PathVariable("mno") int mno, Model model) {

		logger.info("mno222: " + mno);
		ResponseEntity<List<ImgVO>> joinentity = null;

		List<ImgVO> joinlist = mypageService.read_join_mno(mno);
		model.addAttribute("joinlist", joinlist);

		
		if (joinlist != null) {
			joinentity = new ResponseEntity<List<ImgVO>>(joinlist, HttpStatus.OK);
			logger.info("joinmno 검색 성공 ");
		} else {
			joinentity = new ResponseEntity<List<ImgVO>>(joinlist, HttpStatus.BAD_REQUEST);
			logger.info("hoinmno 검색 실패 ");
		}
		
				
		logger.info("joinentity " + joinentity.getBody());
		// logger.info("list.mno "+ list.get(0).getUserid());
		// 출력 됨
		return joinentity;
	}
	
	// mno 검색 Ajax 처리
	// 해당 mno 이미지 아래 제목 검색 메소드
	@RequestMapping(value = "/MyPage/jointitle/{mno}", method = RequestMethod.GET)
	public ResponseEntity<List<TourRegisterVO>> ajaxjointitleTest(@PathVariable("mno") int mno) {

		ResponseEntity<List<TourRegisterVO>> entity = null;

	    List<TourRegisterVO> list = mypageService.read_mytour_title(mno);

		if (list != null) {
			// select 성공 한것이다.
			entity = new ResponseEntity<List<TourRegisterVO>>(list, HttpStatus.OK);
			logger.info("제목 전체 검색 성공 ");
		} else {
			// select 실패이다.
			entity = new ResponseEntity<List<TourRegisterVO>>(list, HttpStatus.BAD_REQUEST);
			logger.info("제목 전체 검색 실패 ");
		}

		logger.info("entity " + entity);
		// logger.info("list.mno "+ list.get(0).getUserid());
		// 출력 됨
		return entity;
	}
		
	@RequestMapping(value = "/MyPage/joinregion/{mno}", method = RequestMethod.GET)
	public ResponseEntity<List<RegionVO>> ajaxjoinregionTest(@PathVariable("mno") int mno) {

		ResponseEntity<List<RegionVO>> entity = null;

		List<RegionVO> list = mypageService.read_mytour_region(mno);

		if (list != null) {
			// select 성공 한것이다.
			entity = new ResponseEntity<List<RegionVO>>(list, HttpStatus.OK);
			logger.info("지역 전체 검색 성공 ");
		} else {
			// select 실패이다.
			entity = new ResponseEntity<List<RegionVO>>(list, HttpStatus.BAD_REQUEST);
			logger.info("지역  전체 검색 실패 ");
		}

		logger.info("entity " + entity);
		// logger.info("list.mno "+ list.get(0).getUserid());
		// 출력 됨
		return entity;
	}	
	
	
}
