package edu.spring.project03.persistence;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.RegionVO;
import edu.spring.project03.domain.TourRegisterVO;

public interface TourRegisterDAO {

	public abstract int insert(TourRegisterVO vo); // ok

	public abstract int insertThumnail(ImgVO vo); // ok

	public abstract int selectTrip_no(TourRegisterVO vo); // ok

	public abstract int insertRegion(RegionVO vo); // ok

	public abstract int update(TourRegisterVO vo);

	public abstract int updateThumnail(ImgVO vo);

	public abstract int updateRegion(RegionVO vo);

	// 여행 삭제
	public abstract int delete(int trip_no);

	// 썸네일 삭제
	public abstract int deleteThumnail(int trip_no);

	// 지역 삭제
	public abstract int deleteRegion(int trip_no);

}
