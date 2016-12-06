package edu.spring.project03.service;

import java.util.List;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.NickReviewSearchResultDTO;
import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.domain.ReviewRegionVO;
import edu.spring.project03.domain.ReviewVO;

//CRUD
public interface TourReviewService {

	// Create
	public abstract int createReview(ReviewVO reviewvo);
	public abstract int createThumnail(ImgVO imgvo);
	public abstract int createRegion(ReviewRegionVO reviewRegionvo);

	// Update
	public abstract int updateReview(ReviewVO reviewvo);
	public abstract int updateThumnail(ImgVO imgvo);
	public abstract int updateRegion(ReviewRegionVO reviewRegionvo);	
	
	// Delete
	public abstract int deleteReview(int review_no);
	public abstract int deleteThumnail(int review_no);
	public abstract int deleteRegion(int review_no);
	
	// Read
	public abstract int readReview_no(ReviewVO reviewvo);
	public abstract ReviewVO readReviewRegisterData(int review_no);
	
	public abstract ReviewVO read_review_by_no(int review_no);
	public abstract ImgVO read_review_profile(int mno);
	public abstract PersonalVO read_review_personal(int mno);
	public abstract String read_review_region_name(int review_no);

	
	
	// Read





	// 메인/후기게시판 디폴트 후기 4개 최신순 띄우기
	// 1. 사진 이미지 가져오기
	public abstract List<ImgVO> read_review_default_image();

	// 2. 제목 가져오기
	public abstract List<ReviewVO> read_review_default_title();

	// 3. 지역 가져오기
	public abstract List<ReviewRegionVO> read_review_default_region();

	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	// 메인/후기게시판 디폴트 후기 4개 조회수순 띄우기
	// 1. 사진 이미지 가져오기
	public abstract List<ImgVO> read_review_top_image();

	// 2. 제목 가져오기
	public abstract List<ReviewVO> read_review_top_title();

	// 3. 지역 가져오기
	public abstract List<ReviewRegionVO> read_review_top_region();

	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	// 후기게시판 - 지역검색
	// 1. 사진 이미지 가져오기
	public abstract List<ImgVO> read_review_region_image(String region_name);

	// 2. 제목 가져오기
	public abstract List<ReviewVO> read_review_region_title(String region_name);

	// 3. 지역 가져오기
	public abstract List<ReviewRegionVO> read_review_region_region(String region_name);

	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	public abstract List<NickReviewSearchResultDTO> read_review_by_nickname(String nickname);

} // end interface TourReviewService