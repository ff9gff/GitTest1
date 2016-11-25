package edu.spring.project03.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.RegionVO;
import edu.spring.project03.domain.TourRegisterVO;
import edu.spring.project03.persistence.TourRegisterDAO;

@Service
public class TourRegisterServiceImpl implements TourRegisterService {
	
	private static final Logger logger = LoggerFactory.getLogger(TourRegisterServiceImpl.class);
	
	@Autowired
	private TourRegisterDAO tourRegisterDAO;

	@Override
	public int create(TourRegisterVO vo) {
		
		return tourRegisterDAO.insert(vo);
	}

	@Override
	public int createThumnail(ImgVO vo) {
		logger.info("레지스터서비스 생성");
		
		return tourRegisterDAO.insertThumnail(vo);
	}

	@Override
	public int readTrip_no(TourRegisterVO vo) {
		return tourRegisterDAO.selectTrip_no(vo);
	}

	@Override
	public int createRegion(RegionVO vo) {
		// TODO Auto-generated method stub
		return tourRegisterDAO.insertRegion(vo);
	}

}
