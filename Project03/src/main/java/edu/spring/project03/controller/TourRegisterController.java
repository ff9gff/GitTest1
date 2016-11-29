package edu.spring.project03.controller;

import java.io.File;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import edu.spring.project03.domain.ImageFile;
import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.PhotoVO;
import edu.spring.project03.domain.RegionVO;
import edu.spring.project03.domain.TourRegisterVO;
import edu.spring.project03.service.ImageService;
import edu.spring.project03.service.ImageView;
import edu.spring.project03.service.TourRegisterService;
import edu.spring.project03.service.TourSearchService;

@Controller
@RequestMapping(value="/tour")
public class TourRegisterController {
	private static final Logger logger = LoggerFactory.getLogger(TourRegisterController.class);
	
	public static final String SAVE_IMAGE_DIR = "resources/photo_upload/";
	
	private int TourRegisterID = 1;

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
	
	@Resource(name="imageView") ImageView imageView;
	
	@Autowired ImageService imageService;
	
	@Autowired
	private TourSearchService tourSelectService;
/*
	// 단일파일업로드
	@RequestMapping(value = "/photoUpload", method = RequestMethod.POST)
	public String photoUpload(HttpServletRequest request, TourRegisterVO vo2, PhotoVO vo) {
		
		logger.info("들어왔니?");
		
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
	}*/
	
	@RequestMapping(value = "/FTourRegister", method = RequestMethod.GET)
	   public String tourRegister3(int trip_no, Model model) {
	      logger.info("FTourRegister.jsp 소환");
	      logger.info("trip_no: " + trip_no);

	      TourRegisterVO tourVO = tourSelectService.read_trip_by_no(trip_no);

	      model.addAttribute("tourVO", tourVO);
	      
	      return "tour/FTourRegister";

	   }

	// 여행 일정 등록하러 가기: TourRegister.jsp 소환
	@RequestMapping(value = "/GoRegister", method = RequestMethod.POST)
	public String createRegister() {
		return "tour/TourRegister";
	}

	// 등록하기 전에 여행 일정을 수정해야 한다?
	@RequestMapping(value = "/GoRegister", method = RequestMethod.GET)
	public String createRegister2() {
		return "tour/TourRegister";
	}

	// 여행 일정이 잘 작성되었는지 확인하러 가자
	@RequestMapping(value = "/TourRegisterConfirm", method = RequestMethod.POST)
	public void submit(TourRegisterVO tourregistervo, RegionVO regionvo, @RequestParam MultipartFile imageFile, ModelMap modelMap, Model model) {

		ImageFile fileInfo = imageService.save(imageFile);
		
		
		if (fileInfo != null) {
			logger.info("대표 이미지 주소: " + SAVE_IMAGE_DIR + fileInfo.getFileName());
		} else {
			logger.info("대실패 ");

		}
		
		if (tourregistervo != null && regionvo != null) {

			model.addAttribute("vo", tourregistervo);
			model.addAttribute("vo2", regionvo);
			modelMap.put("imageFile", fileInfo);
			
			// 이상 없으면 여행등록 DB insert!
			int result = service.create(tourregistervo);
			
			if (result == 1) { // 여행등록 DB insert 성공
				logger.info("여행 등록 성공");

				// 썸네일과 장소를 등록하기 위해 trip_no를 가져오자
				tourregistervo = new TourRegisterVO(0, tourregistervo.getMno(), tourregistervo.getTitle(), 0, 0, tourregistervo.getContent(), null, tourregistervo.getStart_date(), tourregistervo.getEnd_date(), 0);
				int content_no = service.readTrip_no(tourregistervo);
				
				ImgVO imgvo = new ImgVO(TourRegisterID, content_no, 0, SAVE_IMAGE_DIR + fileInfo.getFileName());
				int result2 = service.createThumnail(imgvo);

				if (result2 == 1) {
					logger.info("썸네일 등록 성공");
					
					String region_name = regionvo.getRegion_name();
					RegionVO regionvo2 = new RegionVO(content_no, region_name, 0);
					int result3 = service.createRegion(regionvo2);
					
					if (result3 == 1) {
						logger.info("장소 등록 성공");
					}
					
				} else {
					logger.info("썸네일 등록 실패");
				}
				
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
		return "tour/TourRegister";
	}
}
