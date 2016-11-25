package edu.spring.project03.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.project03.domain.TourReplyVO;
import edu.spring.project03.persistence.TourReplyDAO;

@Service
public class TourReplyServiceImpl implements TourReplyService {

	@Autowired
	private TourReplyDAO tourReplyDAO;
	
	@Override
	public int create(TourReplyVO vo) {
		int result = tourReplyDAO.insert(vo);
		return result;
	}

	@Override
	public List<TourReplyVO> read(int trip_no) {
		return tourReplyDAO.select(trip_no);
	}

	@Override
	public int update(TourReplyVO vo) {
		return tourReplyDAO.update(vo);
	}

	@Override
	public int delete(int rno) {
		return tourReplyDAO.delete(rno);
	}
	
	@Override
	public int allDelete(int parentrno) {
		return tourReplyDAO.allDelete(parentrno);
	}

}
