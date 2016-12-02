package edu.spring.project03.service;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.RegionVO;
import edu.spring.project03.domain.TourRegisterVO;

public interface TourRegisterService {

	// 여행 등록(내용 등록)
	public abstract int create(TourRegisterVO vo);
	// 여행 등록 후 썸네일/장소 등록을 위해 trip_no 찾기
	public abstract int readTrip_no(TourRegisterVO vo);
	// 썸네일 이미지 등록
	public abstract int createThumnail(ImgVO vo);
	// 여행 장소 등록
	public abstract int createRegion(RegionVO vo);

	// 여행 수정
	public abstract int update(TourRegisterVO vo);
	// 썸네일 수정
	public abstract int updateThumnail(ImgVO vo);
	// 지역 수정
	public abstract int updateRegion(RegionVO vo);

	// 여행 삭제
	public abstract int delete(int trip_no);
	// 썸네일 삭제
	public abstract int deleteThumnail(int trip_no);
	// 지역 삭제
	public abstract int deleteRegion(int trip_no);

}
