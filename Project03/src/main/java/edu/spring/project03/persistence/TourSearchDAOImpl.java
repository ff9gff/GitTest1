package edu.spring.project03.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.domain.RegionVO;
import edu.spring.project03.domain.TourRegisterVO;

@Repository
public class TourSearchDAOImpl implements TourSearchDAO {

	private static final String NAMESPACE2 =
			"edu.spring.project03.TourSearchMapper";
	
	@Autowired
	private SqlSession sqlSession;
	

	@Override
	public List<ImgVO> select_region_date(TourRegisterVO vo) {
		List<ImgVO> list = sqlSession.selectList(NAMESPACE2 + ".select_main_trip_image", vo);
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
	
	@Override
	public List<String> select_trip_region_name(int trip_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE2+".select_trip_region_name", trip_no);
	}

	@Override
	public List<TourRegisterVO> select_main_title_info(TourRegisterVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE2 + ".select_main_trip_title", vo);
	}

	@Override
	public List<RegionVO> select_main_region_info(TourRegisterVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE2 + ".select_main_trip_region", vo);
	}

	@Override
	public TourRegisterVO select_register_data(int trip_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE2 + ".select_register_data", trip_no);
	}
	
	
	
	@Override
	public List<ImgVO> select_region(String region) {
		region = "%" + region + "%";
		List<ImgVO> list = sqlSession.selectList(NAMESPACE2 + ".select_main_image_region", region);
		return list;
	}

	@Override
	public List<TourRegisterVO> select_main_title_region(String region) {
		// TODO Auto-generated method stub
		region = "%" + region + "%";
		return sqlSession.selectList(NAMESPACE2 + ".select_main_title_region", region);
	}

	@Override
	public List<RegionVO> select_main_region_region(String region) {
		// TODO Auto-generated method stub
		region = "%" + region + "%";
		return sqlSession.selectList(NAMESPACE2 + ".select_main_region_region", region);
	}
}
