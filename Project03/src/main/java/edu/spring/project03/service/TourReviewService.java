package edu.spring.project03.service;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.domain.ReviewRegionVO;
import edu.spring.project03.domain.ReviewVO;

//CRUD
public interface TourReviewService {	
	
	// Create
	public abstract int createReview(ReviewVO reviewvo);
	public abstract int createThumnail(ImgVO imgvo);
	public abstract int createRegion(ReviewRegionVO reviewregionvo);
	
	// Read
	public abstract int readReview_no(ReviewVO reviewvo);
	public abstract ReviewVO readReviewRegisterData(int review_no);
	
	public abstract ReviewVO read_review_by_no(int review_no);
	public abstract ImgVO read_review_profile(int mno);
	public abstract PersonalVO read_review_personal(int mno);
	public abstract String read_review_region_name(int review_no);
	
	// Update
	
	// Delete
	
	
	
	
	
	
	
	
} // end interface TourReviewService