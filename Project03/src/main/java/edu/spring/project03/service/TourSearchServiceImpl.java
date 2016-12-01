package edu.spring.project03.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.domain.RegionVO;
import edu.spring.project03.domain.TourRegisterVO;
import edu.spring.project03.persistence.TourSearchDAO;

@Service
public class TourSearchServiceImpl implements TourSearchService {
	
	@Autowired
	private TourSearchDAO dao;

	@Override
	public List<ImgVO> read_region(String region) {
		List<ImgVO> list = dao.select_region(region);
		return list;
	}
	
	@Override
	public List<ImgVO> read_region_date(TourRegisterVO vo) {
		List<ImgVO> list = dao.select_region_date(vo);
		return list;
	}


	@Override
	public TourRegisterVO read_trip_by_no(int trip_no) {
		TourRegisterVO vo = dao.select_trip_by_no(trip_no);
		return vo;
	}

	@Override
	public PersonalVO read_trip_person(int mno) {
		return dao.select_trip_person(mno);
	}
	
	@Override
	public ImgVO read_trip_profile(int mno) {
		// TODO Auto-generated method stub
		return dao.select_trip_profile(mno);
	}
	
	@Override
	public List<String> read_trip_region_name(int trip_no) {
		// TODO Auto-generated method stub
		return dao.select_trip_region_name(trip_no);
	}

	@Override
	public List<TourRegisterVO> read_main_title_info(TourRegisterVO vo) {
		// TODO Auto-generated method stub
		return dao.select_main_title_info(vo);
	}

	@Override
	public List<RegionVO> read_main_region_info(TourRegisterVO vo) {
		// TODO Auto-generated method stub
		return dao.select_main_region_info(vo);
	}
}
