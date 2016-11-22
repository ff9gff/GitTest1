package edu.spring.project03.persistence;

import java.util.List;

import edu.spring.project03.domain.TourJoinVO;



public interface TourJoinDAO {
	// 리스트 검색
	public abstract List<TourJoinVO> select(int trip_no);
}
