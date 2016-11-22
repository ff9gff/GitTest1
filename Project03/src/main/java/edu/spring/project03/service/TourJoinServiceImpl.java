package edu.spring.project03.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import edu.spring.project03.domain.TourJoinVO;
import edu.spring.project03.persistence.TourJoinDAO;

public class TourJoinServiceImpl implements TourJoinService {

	@Autowired
	private TourJoinDAO tourJoinDAO;
	
	@Override
	public List<TourJoinVO> read(int trip_no) {
		// TODO Auto-generated method stub
		return tourJoinDAO.select(trip_no);
	}

}
