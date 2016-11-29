package edu.spring.project03.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.project03.domain.BestVO;
import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.ReviewVO;

@Repository
public class TourReviewDAOImpl implements TourReviewDAO {
	
	private static final String NAMESPACE = "edu.spring.Project03.TourReviewMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
	/**
	 * ReviewVO 
	 */	
	@Override
	public int insertReview(ReviewVO reviewvo) {

		return sqlSession.insert(NAMESPACE + ".insert-review", reviewvo);
	} // end insertReview(reviewvo)
	
	@Override
	public int selectReview_no(ReviewVO reviewvo) {

		return sqlSession.selectOne(NAMESPACE + ".select-review_no", reviewvo);
	} // end selectReview_no(reviewvo)
	
	
	/**
	 * BestVO 
	 */		
	@Override
	public int insertBest(BestVO bestvo) {
		// TODO Auto-generated method stub
		return 0;
	} // end insertBest(bestvo)
	
	
	/**
	 * ImgVO 
	 */	
	@Override
	public int insertThumnail(ImgVO imgvo) {

		return sqlSession.insert(NAMESPACE + ".insert-thumnail", imgvo);
	} // end insertThumnail(vo)
	
	
	
} // end class TourReviewDAOImpl