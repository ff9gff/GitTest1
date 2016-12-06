package edu.spring.project03.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.project03.controller.TourRegisterController;
import edu.spring.project03.domain.BestVO;
import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.domain.ReviewRegionVO;
import edu.spring.project03.domain.ReviewVO;

@Repository
public class TourReviewDAOImpl implements TourReviewDAO {

	private static final Logger logger = LoggerFactory.getLogger(TourReviewDAOImpl.class);

	private static final String NAMESPACE = "edu.spring.Project03.TourReviewMapper";

	@Autowired
	private SqlSession sqlSession;

	/**
	 * insert
	 */
	@Override
	public int insertReview(ReviewVO reviewvo) {

		return sqlSession.insert(NAMESPACE + ".insert-review", reviewvo);
	} // end insertReview(reviewvo)

	@Override
	public int insertRegion(ReviewRegionVO reviewRegionvo) {

		return sqlSession.insert(NAMESPACE + ".insert-region", reviewRegionvo);
	} // end insertRegion(reviewRegionvo)

	@Override
	public int insertThumnail(ImgVO imgvo) {

		return sqlSession.insert(NAMESPACE + ".insert-thumnail", imgvo);
	} // end insertThumnail(vo)

	/**
	 * select
	 */
	@Override
	public int selectReview_no(ReviewVO reviewvo) {

		return sqlSession.selectOne(NAMESPACE + ".select-review_no", reviewvo);
	} // end selectReview_no(reviewvo)

	@Override
	public ReviewVO selectReviewRegister_data(int review_no) {

		System.out.println("리뷰 번호: " + review_no);
		return sqlSession.selectOne(NAMESPACE + ".select_review-register_data", review_no);
	} // end selectRegister_data(review_no)

	@Override
	public ReviewVO select_review_by_no(int review_no) {

		ReviewVO reviewvo = sqlSession.selectOne(NAMESPACE + ".select_review_by_no", review_no);

		return reviewvo;
	} // end select_review_by_no(review_no)

	@Override
	public PersonalVO select_review_personal(int mno) {

		return sqlSession.selectOne(NAMESPACE + ".select_review_personal", mno);
	} // end select_review_personal(mno)

	@Override
	public ImgVO select_review_profile(int mno) {
		return sqlSession.selectOne(NAMESPACE + ".select_review_profile", mno);
	} // end select_review_profile(mno)

	@Override
	public String select_review_region_name(int review_no) {
		return sqlSession.selectOne(NAMESPACE + ".select_review_region_name", review_no);
	} // end select_review_region_name(review_no)

	/**
	 * update
	 */

	/**
	 * delete
	 */

	/**
	 * BestVO
	 */
	@Override
	public int insertBest(BestVO bestvo) {
		// TODO Auto-generated method stub
		return 0;
	} // end insertBest(bestvo)

	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	// 메인페이지 디폴트 4개 조회수순으로 뿌리기
	@Override
	public List<ImgVO> select_review_top_image() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".select_top_review_image");
	}

	@Override
	public List<ReviewVO> select_review_top_title() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".select_top_review_title");
	}

	@Override
	public List<ReviewRegionVO> select_review_top_region() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".select_top_review_region");
	}

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	// 메인/후기 게시판 - 디폴트 4개 후기 등록순 뿌리기
	// 이미지 가져오기
	@Override
	public List<ImgVO> select_review_default_image() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".select_default_review_image");
	}

	// 제목 가져오기
	@Override
	public List<ReviewVO> select_review_default_title() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".select_default_review_title");
	}

	// 지역 가져오기
	@Override
	public List<ReviewRegionVO> select_review_default_region() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".select_default_review_region");
	}

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	// 후기 게시판 - 지역 검색
	// 이미지 가져오기
	@Override
	public List<ImgVO> select_review_region_image(String region_name) {
		// TODO Auto-generated method stub
		region_name = "%" + region_name + "%";
		return sqlSession.selectList(NAMESPACE + ".select_region_search_image", region_name);
	}

	// 제목 가져오기
	@Override
	public List<ReviewVO> select_review_region_title(String region_name) {
		// TODO Auto-generated method stub
		region_name = "%" + region_name + "%";
		return sqlSession.selectList(NAMESPACE + ".select_region_search_title", region_name);
	}

	// 지역 가져오기
	@Override
	public List<ReviewRegionVO> select_review_region_region(String region_name) {
		// TODO Auto-generated method stub
		region_name = "%" + region_name + "%";
		return sqlSession.selectList(NAMESPACE + ".select_region_search_region", region_name);
	}

} // end class TourReviewDAOImpl