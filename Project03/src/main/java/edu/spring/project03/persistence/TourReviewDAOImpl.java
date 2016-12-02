package edu.spring.project03.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.project03.domain.BestVO;
import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.ReviewRegionVO;
import edu.spring.project03.domain.ReviewVO;

@Repository
public class TourReviewDAOImpl implements TourReviewDAO {
	
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
		return sqlSession.selectOne(NAMESPACE + "select_review-register_data", review_no);
	} // end selectRegister_data(review_no)
	
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
	
	
} // end class TourReviewDAOImpl