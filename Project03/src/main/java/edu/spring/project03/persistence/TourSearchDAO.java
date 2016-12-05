package edu.spring.project03.persistence;

import java.util.List;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.domain.RegionVO;
import edu.spring.project03.domain.TourRegisterVO;

public interface TourSearchDAO {

	public abstract List<ImgVO> select_region(String region);

	public abstract List<ImgVO> select_region_date(TourRegisterVO vo);

	public abstract ImgVO select_trip_profile(int mno);

	public abstract PersonalVO select_trip_person(int mno);

	public abstract TourRegisterVO select_trip_by_no(int trip_no);

	public abstract String select_trip_region_name(int trip_no);

	// 메인 썸네일 기간검색(사진 밑에 나올 제목/지역)
	public abstract List<TourRegisterVO> select_main_title_info(TourRegisterVO vo);
	public abstract List<RegionVO> select_main_region_info(TourRegisterVO vo);
	
	// 메인 썸네일 지역검색(사진 밑에 나올 제목/지역)
	public abstract List<TourRegisterVO> select_main_title_region(String region);
	public abstract List<RegionVO> select_main_region_region(String region);
	
	public abstract TourRegisterVO select_register_data(int trip_no);
	
	// 디폴트로 뿌려주는 이미지/제목/지역
	public abstract List<ImgVO> select_default_image();
	public abstract List<TourRegisterVO> select_default_title();
	public abstract List<RegionVO> select_default_region();
	
	// 여행 상세검색
	public abstract List<ImgVO> select_detail_search_image(String region_name, String start_date, int condition_sex, int condition_age);
	public abstract List<TourRegisterVO> select_detail_search_title(String region_name, String start_date, int condition_sex, int condition_age);
	public abstract List<RegionVO> select_detail_search_region(String region_name, String start_date, int condition_sex, int condition_age);
	
	
}
