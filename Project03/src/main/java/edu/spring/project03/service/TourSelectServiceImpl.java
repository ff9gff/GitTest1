package edu.spring.project03.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.TourRegisterVO;
import edu.spring.project03.persistence.TourSelectDAO;

@Service
public class TourSelectServiceImpl implements TourSelectService {
	
	@Autowired
	private TourSelectDAO dao;

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
	public List<ImgVO> read_region_image(ImgVO vo) {
		List<ImgVO> list = dao.select_region_image(vo);
		return list;
	}

}
