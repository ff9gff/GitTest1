package edu.spring.project03.service;

import java.util.List;

import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.domain.TourJoinVO;

public interface TourJoinService {
	public abstract List<TourJoinVO> readList(int trip_no);
	public abstract PersonalVO readPerson(int mno);
	public abstract int create(int trip_no, int mno);
	public abstract int update(int approval, int list_no);
	
	
}
