package edu.spring.project03.service;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.ReviewRegionVO;
import edu.spring.project03.domain.ReviewVO;

public interface TourReviewService {
	// CRUD
	
	// Create
	public abstract int createReview(ReviewVO reviewvo);
	public abstract int createThumnail(ImgVO imgvo);
	public abstract int createRegion(ReviewRegionVO reviewregionvo);
	
	// Read
	public abstract int readReview_no(ReviewVO reviewvo);
	
	
	
	
	
	
	
	
} // end interface TourReviewService