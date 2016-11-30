package edu.spring.project03.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.domain.TourRegisterVO;

@Repository
public class TourSearchDAOImpl implements TourSearchDAO {

	private static final String NAMESPACE2 =
			"edu.spring.project03.TourSearchMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<ImgVO> select_region(String region) {
		List<ImgVO> list = sqlSession.selectList(NAMESPACE2 + ".select_trip_region", region);
		return list;
	}

	@Override
	public List<ImgVO> select_region_date(TourRegisterVO vo) {
		List<ImgVO> list = sqlSession.selectList(NAMESPACE2 + ".select_trip_date", vo);
		return list;
	}
	
	@Override
	public List<ImgVO> select_region_image(ImgVO vo) {
		List<ImgVO> list = sqlSession.selectList(NAMESPACE2 + ".select_trip_region_image", vo);
		return list;
	}

	@Override
	public TourRegisterVO select_trip_by_no(int trip_no) {
		TourRegisterVO vo = sqlSession.selectOne(NAMESPACE2 + ".select_trip_by_no", trip_no);
		return vo;
	}
	
	@Override
	public PersonalVO select_trip_person(int mno) {
		return sqlSession.selectOne(NAMESPACE2+".select_trip_person", mno);
	}

	@Override
	public ImgVO select_trip_profile(int mno) {
		return sqlSession.selectOne(NAMESPACE2+".select_trip_profile", mno);
	}
}
