package edu.spring.project03.service;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.TourRegisterVO;

public interface TourRegisterService {
	
	// 여행 등록(내용 등록)
	public abstract int create(TourRegisterVO vo);
	
	// 여행 등록(썸네일 이미지 등록)
	public abstract int createThumnail(ImgVO vo);
	public abstract int readTrip_no(String content);
	

}
