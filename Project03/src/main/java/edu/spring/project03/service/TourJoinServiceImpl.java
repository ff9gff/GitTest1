package edu.spring.project03.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.domain.TourJoinVO;
import edu.spring.project03.persistence.TourJoinDAO;

public class TourJoinServiceImpl implements TourJoinService {

	@Autowired
	private TourJoinDAO tourJoinDAO;
	
	@Override
	public List<TourJoinVO> readList(int trip_no) {
		return tourJoinDAO.selectList(trip_no);
	}
	
	@Override
	public PersonalVO readPerson(int mno) {
		return tourJoinDAO.selectPerson(mno);
	}
	@Override
	public int update(int approval, int list_no) {
		return tourJoinDAO.updateApproval(approval, list_no);
	}
	
	@Override
	public int create(int trip_no, int mno) {
		return tourJoinDAO.insertApproval(trip_no, mno);
	}

}
