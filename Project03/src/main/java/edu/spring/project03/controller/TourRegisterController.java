package edu.spring.project03.controller;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.spring.project03.domain.PhotoVO;
import edu.spring.project03.domain.RegionVO;
import edu.spring.project03.domain.TourRegisterVO;

import edu.spring.project03.service.TourRegisterService;

@Controller
public class TourRegisterController {
	private static final Logger logger = LoggerFactory.getLogger(TourRegisterController.class);

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

	@Autowired
	private TourRegisterService service;

	// 단일파일업로드
	@RequestMapping(value = "/photoUpload", method = RequestMethod.POST)
	public String photoUpload(HttpServletRequest request, TourRegisterVO vo2, PhotoVO vo) {
		String callback = vo.getCallback();
		String callback_func = vo.getCallback_func();
		String file_result = "";

		try {
			if (vo.getFiledata() != null && vo.getFiledata().getOriginalFilename() != null
					&& !vo.getFiledata().getOriginalFilename().equals("")) {
				// 파일이 존재하면
				String original_name = vo.getFiledata().getOriginalFilename();
				String ext = original_name.substring(original_name.lastIndexOf(".") + 1);
				// 파일 기본경로
				String defaultPath = request.getSession().getServletContext().getRealPath("/");
				// 파일 기본경로 _ 상세경로
				String path = defaultPath + "resources" + File.separator + "photo_upload" + File.separator;
				File file = new File(path);
				logger.info("path: " + path);

				// 디렉토리 존재하지 않을경우 디렉토리 생성
				if (!file.exists()) {
					file.mkdirs();
				}
				// 서버에 업로드 할 파일명(한글문제로 인해 원본파일은 올리지 않는것이 좋음)
				String realname = UUID.randomUUID().toString() + "." + ext;
				///////////////// 서버에 파일쓰기 /////////////////
				vo.getFiledata().transferTo(new File(path + realname));
				file_result += "&bNewLine=true&sFileName=" + original_name
						+ "&sFileURL=/project03/resources/photo_upload/" + realname;
			} else {
				file_result += "&errstr=error";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:" + callback + "?callback_func=" + callback_func + file_result;
	}

	// 여행 일정 등록하러 가기: TourRegister.jsp 소환
	@RequestMapping(value = "/GoRegister", method = RequestMethod.POST)
	public String createRegister() {
		return "TourRegister";
	}

	// 등록하기 전에 여행 일정을 수정해야 한다?
	@RequestMapping(value = "/GoRegister", method = RequestMethod.GET)
	public String createRegister2() {
		return "TourRegister";
	}

	// 여행 일정이 잘 작성되었는지 확인하러 가자
	@RequestMapping(value = "/TourRegisterConfirm", method = RequestMethod.POST)
	public void submit(TourRegisterVO vo, RegionVO vo2, Model model) {

		if (vo != null && vo2 != null) {

			logger.info("insertTour() 호출!");
			logger.info("여행 제목: " + vo.getTitle());
			// logger.info("여행 지역: " + vo2.getRegion_name());
			logger.info("시작 날짜: " + vo.getStart_date());
			logger.info("종료 날짜: " + vo.getEnd_date());
			logger.info("성별 조건: " + vo.getCondition_sex());
			logger.info("나이 조건: " + vo.getCondition_age());

			model.addAttribute("vo", vo);
			// model.addAttribute("vo2", vo2);

			// 이상 없으면 DB insert!
			int result = service.create(vo);
			if (result == 1) { // DB insert 성공
				logger.info("여행 등록 성공");
			} else { // DB insert 실패
				logger.info("여행 등록 실패");
			}

		} else {
			logger.info("응 실패^^");
		}

	}

	@RequestMapping("/TourRegisterComplete")
	public String tourRegisterComplete(TourRegisterVO vo) {

		if (vo != null) {

			logger.info("최종 저장 데이터부터 확인한다");
			logger.info("여행 제목: " + vo.getTitle());
			// logger.info("여행 지역: " + vo2.getRegion_name());
			logger.info("시작 날짜: " + vo.getStart_date());
			logger.info("종료 날짜: " + vo.getEnd_date());
			logger.info("성별 조건: " + vo.getCondition_sex());
			logger.info("나이 조건: " + vo.getCondition_age());

			// 이상 없으면 DB update or delete
			

		} else {
			logger.info("응 실패^^");
		}

		return "index";
	}

	//
	@RequestMapping("/cancelTourRegister")
	public String tourRegister() {
		return "TourRegister";
	}
}
