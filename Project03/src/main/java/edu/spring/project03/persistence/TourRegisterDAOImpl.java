package edu.spring.project03.persistence;


import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.RegionVO;
import edu.spring.project03.domain.TourRegisterVO;

@Repository
public class TourRegisterDAOImpl implements TourRegisterDAO {
	
	private static final String NAMESPACE = "edu.spring.Project03.TourRegisterMapper";
	
	//private static final Logger logger = LoggerFactory.getLogger(TourRegisterDAOImpl.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insert(TourRegisterVO vo) {
		return sqlSession.insert(NAMESPACE + ".insert-register", vo);
	}

	@Override
	public int insertThumnail(ImgVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE + ".insert-thumnail", vo);
	}

	@Override
	public int selectTrip_no(TourRegisterVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + ".select-trip_no", vo);
	}

	@Override
	public int insertRegion(RegionVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE + ".insert-region", vo);
	}
	
	@Override
	public int update(TourRegisterVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.update(NAMESPACE + ".update-register", vo);
	}
	
	@Override
	public int updateThumnail(ImgVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.update(NAMESPACE + ".update-thumnail", vo);
	}
	
	@Override
	public int updateRegion(RegionVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.update(NAMESPACE + ".update-region", vo);
	}

	@Override
	public int delete(int trip_no) {
		// TODO Auto-generated method stub
		return sqlSession.delete(NAMESPACE + ".delete-register", trip_no);
	}

	@Override
	public int deleteThumnail(int trip_no) {
		// TODO Auto-generated method stub
		return sqlSession.delete(NAMESPACE + ".delete-thumnail", trip_no);
	}

	@Override
	public int deleteRegion(int trip_no) {
		// TODO Auto-generated method stub
		return sqlSession.delete(NAMESPACE + ".delete-region", trip_no);
	}

	@Override
	public TourRegisterVO selectTourInfo(int trip_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + ".select_tourInfo_by_trip_no", trip_no);
	}

	@Override
	public RegionVO selectTourRegionInfo(int trip_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + ".select_tourRegionInfo_by_trip_no", trip_no);
	}

	@Override
	public ImgVO selectTourMainImage(int trip_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + ".select_tourMainImage_by_trip_no", trip_no);
	}


}
