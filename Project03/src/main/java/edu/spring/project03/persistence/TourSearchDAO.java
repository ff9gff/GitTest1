package edu.spring.project03.persistence;

import java.util.List;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.TourRegisterVO;

public interface TourSearchDAO {

	public abstract List<ImgVO> select_region(String region);

	public abstract List<ImgVO> select_region_date(TourRegisterVO vo);

	public abstract List<ImgVO> select_region_image(ImgVO vo);
	
	public abstract TourRegisterVO select_trip_by_no(int trip_no);

}
