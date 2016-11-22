package edu.spring.project03.service;

import java.util.List;

import edu.spring.project03.domain.TourJoinVO;

public interface TourJoinService {
	public abstract List<TourJoinVO> read(int trip_no);
	
	
}
