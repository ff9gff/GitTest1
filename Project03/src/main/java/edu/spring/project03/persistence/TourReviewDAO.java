package edu.spring.project03.persistence;

import edu.spring.project03.domain.BestVO;
import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.ReviewVO;

public interface TourReviewDAO {
	
	/**
	 * ReviewVO 
	 */
	public abstract int insertReview(ReviewVO reviewvo);
	public abstract int selectReview_no(ReviewVO reviewvo);	

	
	/**
	 * BestVO 
	 */	
	public abstract int insertBest(BestVO bestvo);
	
	
	/**
	 * ImgVO 
	 */		
	public abstract int insertThumnail(ImgVO imgvo);
	
	
	
	
	
} // end interface TourReviewDAO