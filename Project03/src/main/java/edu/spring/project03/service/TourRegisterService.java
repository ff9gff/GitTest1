package edu.spring.project03.service;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.RegionVO;
import edu.spring.project03.domain.TourRegisterVO;

public interface TourRegisterService {
	
	// 여행 등록(내용 등록)
	public abstract int create(TourRegisterVO vo);
	
	// 여행 등록(썸네일 이미지 등록)
	public abstract int createThumnail(ImgVO vo);
	public abstract int readTrip_no(TourRegisterVO vo);
	
	// 여행 장소 등록
	public abstract int createRegion(RegionVO vo);
	
	// 여행 수정
	public abstract int update(TourRegisterVO vo);
	
	// 썸네일 수정
	public abstract int updateThumnail(ImgVO vo);
	
	// 지역 수정
	public abstract int updateRegion(RegionVO vo);
	
	

}
