package edu.spring.project03.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.domain.ReviewReplyVO;
import edu.spring.project03.persistence.TourReviewReplyDAO;

@Service
public class TourReviewReplyServiceImpl implements TourReviewReplyService {
	
	@Autowired
	private TourReviewReplyDAO tourReviewReplyDAO;

	@Override
	public int create(ReviewReplyVO reviewreplyvo) {

		return tourReviewReplyDAO.insert(reviewreplyvo);
	} // end create(reviewreplyvo)

	@Override
	public List<ReviewReplyVO> read(int review_no) {

		return tourReviewReplyDAO.select(review_no);
	} // end read(review_no)

	@Override
	public List<PersonalVO> readPerson(int review_no) {

		return tourReviewReplyDAO.selectPerson(review_no);
	} // end readPerson(review_no)

	@Override
	public int update(ReviewReplyVO reviewreplyvo) {

		return tourReviewReplyDAO.update(reviewreplyvo);
	} // end update(reviewreplyvo)

	@Override
	public int delete(int rno) {

		return tourReviewReplyDAO.delete(rno);
	} // end delete(rno)

	@Override
	public int allDelete(int parentrno) {

		return tourReviewReplyDAO.allDelete(parentrno);
	} // end allDelete(parentrno)
	
	
} // end class TourReviewReplyServiceImpl