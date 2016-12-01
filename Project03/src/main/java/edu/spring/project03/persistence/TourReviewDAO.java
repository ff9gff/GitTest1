package edu.spring.project03.persistence;

import edu.spring.project03.domain.BestVO;
import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.RegionVO;
import edu.spring.project03.domain.ReviewRegionVO;
import edu.spring.project03.domain.ReviewVO;

public interface TourReviewDAO {
	
	// insert
	public abstract int insertReview(ReviewVO reviewvo);
	public abstract int insertRegion(ReviewRegionVO reviewRegionvo);
	public abstract int insertThumnail(ImgVO imgvo);
		
	// select
	public abstract int selectReview_no(ReviewVO reviewvo);
	public abstract ReviewVO selectReviewRegister_data(int review_no);
	
	// update
	
	// delete
	
	
	/**
	 * BestVO 
	 */	
	public abstract int insertBest(BestVO bestvo);	
	
	
} // end interface TourReviewDAO