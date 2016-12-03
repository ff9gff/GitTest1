package edu.spring.project03.persistence;

import java.util.List;

import edu.spring.project03.domain.BestVO;
import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.PersonalVO;
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
	
	public abstract ImgVO select_review_profile(int mno);
	public abstract PersonalVO select_review_personal(int mno);
	public abstract ReviewVO select_review_by_no(int review_no);
	public abstract String select_review_region_name(int review_no);
	
	// update
	
	// delete
	
	
	// 디폴트 ?개 후기
	// 1. 사진 뿌리기
	public abstract List<ImgVO> select_review_default_image();
	// 2. 제목 뿌리기
	public abstract List<ReviewVO> select_review_default_title();
	// 3. 지역 뿌리기
	public abstract List<ReviewRegionVO> select_review_default_region();
	
	
	/**
	 * BestVO 
	 */	
	public abstract int insertBest(BestVO bestvo);	
	
	
} // end interface TourReviewDAO