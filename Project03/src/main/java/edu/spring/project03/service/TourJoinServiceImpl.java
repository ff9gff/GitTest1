package edu.spring.project03.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.domain.TourJoinVO;
import edu.spring.project03.persistence.TourJoinDAO;

@Service
public class TourJoinServiceImpl implements TourJoinService {

	@Autowired
	private TourJoinDAO tourJoinDAO;
	
	@Override
	public List<TourJoinVO> readList(int trip_no) {
		return tourJoinDAO.selectList(trip_no);
	}
	
	@Override
	public List<PersonalVO> readPerson(int trip_no) {
		return tourJoinDAO.selectPerson(trip_no);
	}
	@Override
	public int update(int approval, int list_no) {
		return tourJoinDAO.updateApproval(approval, list_no);
	}
	
	@Override
	public int create(int trip_no, int mno) {
		return tourJoinDAO.insertApproval(trip_no, mno);
	}

	@Override
	public ImgVO readProfile(int mno) {
		// TODO Auto-generated method stub
		return tourJoinDAO.selectProfile(mno);
	}
}
