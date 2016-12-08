package edu.spring.project03.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.domain.RegionVO;
import edu.spring.project03.domain.ReviewRegionVO;
import edu.spring.project03.domain.ReviewVO;
import edu.spring.project03.domain.TourRegisterVO;

@Repository
public class MypageDAOImpl implements MypageDAO {
	
	private static final String NAMESPACE = "edu.spring.Project03.MypageMapper";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public PersonalVO selectpersonal(int mno) {
		
		return sqlSession.selectOne(NAMESPACE + ".select-personalbymno", mno);
	}
	
	@Override
	public List<PersonalVO> selectPerson(int mno) {

		return sqlSession.selectList(NAMESPACE + ".select-personalbymno", mno);
	}
	
	@Override
	public List<ImgVO> select_mno(int mno) {
		List<ImgVO> list = sqlSession.selectList(NAMESPACE + ".select_trip_mno", mno);
		return list;
	}
	
	@Override
	public ImgVO selectProfile(int mno) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+".selectProfile", mno);
	}

	@Override
	public List<ImgVO> select_join_mno(int mno) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".selectJoin", mno);
	}

	@Override
	public List<TourRegisterVO> select_mytour_title(int mno) {

		return sqlSession.selectList(NAMESPACE + ".select_mytour_title", mno);
	}

	@Override
	public List<RegionVO> select_mytour_region(int mno) {

		return sqlSession.selectList(NAMESPACE + ".select_mytour_region", mno);
	}
	
	// 후기 게시글 이미지
	@Override
	public List<ImgVO> select_review_mno(int mno) {
		
		return sqlSession.selectList(NAMESPACE + ".selectreview", mno);
	}
	
	// 후기 게시글 타이틀
	@Override
	public List<ReviewVO> select_review_title(int mno) {
	
		return sqlSession.selectList(NAMESPACE + ".select_review_title", mno);
	}
	
	// 후기 게시글 지역
	@Override
	public List<ReviewRegionVO> select_review_region(int mno) {
	
		return sqlSession.selectList(NAMESPACE + ".select_review_region", mno);
	}
	
	@Override
	public int updateProfile(PersonalVO vo) {
	
		return sqlSession.update(NAMESPACE + ".update-profile", vo);
	}

}
