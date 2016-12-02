package edu.spring.project03.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.PersonalVO;
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
	} // end readRegisterData(review_no)
	
	@Override
	public ReviewVO read_review_by_no(int review_no) {
		logger.info("read_review_by_no() 호출...");
		
		ReviewVO reviewvo = tourReviewDAO.select_review_by_no(review_no);
		
		return reviewvo;
	} // end read_review_by_no(review_no)
	
	@Override
	public PersonalVO read_review_personal(int mno) {
		logger.info("read_review_personal() 호출...");
		
		return tourReviewDAO.select_review_personal(mno);
	} // end read_review_personal(mno)
	
	@Override
	public ImgVO read_review_profile(int mno) {
		logger.info("read_review_profile() 호출...");
		
		return tourReviewDAO.select_review_profile(mno);
	} // end read_review_profile(mno)
	
	@Override
	public String read_review_region_name(int review_no) {
		logger.info("read_review_region_name() 호출...");
		
		return tourReviewDAO.select_review_region_name(review_no);
	} // end read_review_region_name(review_no)
	
	
	/**
	 * Update
	 */
	
	
	/**
	 * Delete
	 */
	
	
	
	
	
	
} // end class TourReviewServiceImpl