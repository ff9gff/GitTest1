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
	
	
	// 메인/후기 게시판 - 디폴트 4개 후기 등록순 뿌리기
	// 1. 사진 뿌리기
	public abstract List<ImgVO> select_review_default_image();
	// 2. 제목 뿌리기
	public abstract List<ReviewVO> select_review_default_title();
	// 3. 지역 뿌리기
	public abstract List<ReviewRegionVO> select_review_default_region();
	
	// 메인/후기 게시판 - 디폴트 4개 후기 조회수순 뿌리기
	// 1. 사진 뿌리기
	public abstract List<ImgVO> select_review_top_image();
	// 2. 제목 뿌리기
	public abstract List<ReviewVO> select_review_top_title();
	// 3. 지역 뿌리기
	public abstract List<ReviewRegionVO> select_review_top_region();
	
	
	
	// 후기 게시판 - 지역검색
	// 1. 사진 뿌리기
	public abstract List<ImgVO> select_review_region_image(String region_name);
	// 2. 제목 뿌리기
	public abstract List<ReviewVO> select_review_region_title(String region_name);
	// 3. 지역 뿌리기
	public abstract List<ReviewRegionVO> select_review_region_region(String region_name);
	
	
	/**
	 * BestVO 
	 */	
	public abstract int insertBest(BestVO bestvo);	
	
	
} // end interface TourReviewDAO