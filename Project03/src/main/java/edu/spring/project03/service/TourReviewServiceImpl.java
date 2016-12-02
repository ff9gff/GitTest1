package edu.spring.project03.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.ReviewRegionVO;
import edu.spring.project03.domain.ReviewVO;
import edu.spring.project03.persistence.TourReviewDAO;

@Service
public class TourReviewServiceImpl implements TourReviewService {
	
	private static final Logger logger = LoggerFactory.getLogger(TourRegisterServiceImpl.class);
	
	@Autowired
	private TourReviewDAO tourReviewDAO;
	
	/**
	 * Create
	 */
	@Override
	public int createReview(ReviewVO reviewvo) {
		logger.info("createReview() 호출...");
		
		return tourReviewDAO.insertReview(reviewvo);
	} // end createeReview(reviewvo)
	
	@Override
	public int createThumnail(ImgVO imgvo) {		
		logger.info("createThumnail() 호출...");

		return tourReviewDAO.insertThumnail(imgvo);
	} // end createThumnail(imgvo)
	
	@Override
	public int createRegion(ReviewRegionVO reviewregionvo) {
		logger.info("createRegion() 호출...");
		
		return tourReviewDAO.insertRegion(reviewregionvo);
	} // end createRegion(reviewregionvo)
	
	
	/**
	 * Read
	 */
	@Override
	public int readReview_no(ReviewVO reviewvo) {
		logger.info("readReview_no() 호출...");

		return tourReviewDAO.selectReview_no(reviewvo);
	} // end readReview_no(reviewvo)
	
	@Override
	public ReviewVO readReviewRegisterData(int review_no) {
		logger.info("readRegisterData() 호출...");
		logger.info("review_no: " + review_no);
		
		return tourReviewDAO.selectReviewRegister_data(review_no);
	} // end readRegisterData(int review_no)

	
	
	/**
	 * Update
	 */
	
	
	/**
	 * Delete
	 */
	
	
	
	
	
	
} // end class TourReviewServiceImpl