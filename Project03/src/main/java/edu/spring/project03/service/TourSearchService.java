package edu.spring.project03.service;

import java.util.List;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.domain.TourRegisterVO;

public interface TourSearchService {

	public abstract List<ImgVO> read_region(String region);

	public abstract List<ImgVO> read_region_date(TourRegisterVO vo);

	public abstract List<ImgVO> read_region_image(ImgVO vo);
	
	public abstract TourRegisterVO read_trip_by_no(int trip_no);

	public abstract ImgVO read_trip_profile(int mno);
	
	public abstract PersonalVO read_trip_person(int mno);
	
	public abstract List<String> read_trip_region_name(int trip_no);
}
