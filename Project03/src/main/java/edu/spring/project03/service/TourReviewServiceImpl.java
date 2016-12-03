package edu.spring.project03.service;

import java.util.List;

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
		logger.info("씨발 뭔데: " + review_no);
		return tourReviewDAO.select_review_by_no(review_no);
	} // end read_review_by_no(review_no)
	
	@Override
	public PersonalVO read_review_personal(int mno) {
		logger.info("read_review_personal() 호출...");
		
		return tourReviewDAO.select_review_personal(mno);
	} // end read_review_personal(mno)
	
	@Override
	public ImgVO read_review_profile(int mno) {
		logger.info("뭐 씨발아 뭐: " + mno);
		
		return tourReviewDAO.select_review_profile(mno);
	} // end read_review_profile(mno)
	
	@Override
	public String read_review_region_name(int review_no) {
		logger.info("read_review_region_name() 호출...");
		
		return tourReviewDAO.select_review_region_name(review_no);
	} // end read_review_region_name(review_no)

	
	// 디폴트 ?개 후기 사진
	@Override
	public List<ImgVO> read_review_default_image() {
		// TODO Auto-generated method stub
		return tourReviewDAO.select_review_default_image();
	}

	// 디폴트 ?개 후기 제목
	@Override
	public List<ReviewVO> read_review_default_title() {
		// TODO Auto-generated method stub
		return tourReviewDAO.select_review_default_title();
	}

	// 디폴트 ?개 후기 지역
	@Override
	public List<ReviewRegionVO> read_review_default_region() {
		// TODO Auto-generated method stub
		return tourReviewDAO.select_review_default_region();
	}

	@Override
	public List<ImgVO> read_review_region_image(String region_name) {
		// TODO Auto-generated method stub
		return tourReviewDAO.select_review_region_image(region_name);
	}

	@Override
	public List<ReviewVO> read_review_region_title(String region_name) {
		// TODO Auto-generated method stub
		return tourReviewDAO.select_review_region_title(region_name);
	}

	@Override
	public List<ReviewRegionVO> read_review_region_region(String region_name) {
		// TODO Auto-generated method stub
		return tourReviewDAO.select_review_region_region(region_name);
	}
	
	
	/**
	 * Update
	 */
	
	
	/**
	 * Delete
	 */
	
	
	
	
	
	
} // end class TourReviewServiceImpl