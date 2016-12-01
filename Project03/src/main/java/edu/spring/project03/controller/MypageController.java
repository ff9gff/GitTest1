package edu.spring.project03.controller;

import java.util.List;

import javax.mail.Session;
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
import edu.spring.project03.service.MypageService;


@Controller
public class MypageController {
	
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	private MypageService mypageService; 
	
	@RequestMapping(value="/MyPage", method=RequestMethod.GET )
	public void selectPesrsonal(HttpServletRequest req, Model model) {		
		HttpSession session = req.getSession();
		int mno = Integer.valueOf(session.getAttribute("mno").toString());
		logger.info("mno: " + mno);
		PersonalVO vo = mypageService.selectpersonal(mno);
		logger.info("닉네임 : " + vo.getNickname());
		logger.info("성별 : " + vo.getSex());
		logger.info("나이 : " + vo.getAge());
		logger.info("자기소개 : " + vo.getIntroduce());
		logger.info("이메일 : " + vo.getEmail());
		
		model.addAttribute("vo", vo);
		
	}
	
	// mno 검색 Ajax 처리
	// 해당 mno 검색 메소드
	@RequestMapping(value = "/MyPage/{mno}", method = RequestMethod.GET)
	public ResponseEntity<List<ImgVO>> ajaxRegionTest(@PathVariable("mno") int mno, Model model) {

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
	
	// 해당 프로필의 이미지 주소를 읽어오는 메소드
	@RequestMapping(value="/mypageprofile/{mno}", method=RequestMethod.GET)
	public ResponseEntity<String> readImg(@PathVariable("mno") int mno){
		ImgVO src = mypageService.readProfile(mno);
		String address = src.getImg_url();
		ResponseEntity<String> entity = null;
		if(src != null){ // select 성공
			entity = new ResponseEntity<>(address, HttpStatus.OK);
		}else{ // select 실패
			entity = new ResponseEntity<>(address, HttpStatus.BAD_REQUEST);
		}// end if
		
		return entity;
	}
	
	
}
