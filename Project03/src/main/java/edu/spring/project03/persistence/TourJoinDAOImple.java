package edu.spring.project03.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.domain.TourJoinVO;

public class TourJoinDAOImple implements TourJoinDAO {
	private static final String NAMESPACE=
			"edu.spring.project03.TourJoinMapper";
	private static final Logger logger=
			LoggerFactory.getLogger(TourJoinDAOImple.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<TourJoinVO> selectList(int trip_no) {
		logger.info("select() 호출: trip_no="+trip_no);
		return sqlSession.selectList(NAMESPACE+".selectlist", trip_no);
	}
	
	@Override
	public PersonalVO selectPerson(int mno) {
		return sqlSession.selectOne(NAMESPACE+".selectperson", mno);
	}
	
	@Override
	public int updateApproval(int approval, int list_no) {
		Map<String, Integer> value = new HashMap<>();
		value.put("approval", approval);
		value.put("list_no", list_no);
		return sqlSession.update(NAMESPACE+".updateapproval",value);
	}
	
	@Override
	public int insertApproval(int trip_no, int mno) {
		Map<String, Integer> value = new HashMap<>();
		value.put("trip_no", trip_no);
		value.put("mno", mno);
		return sqlSession.insert(NAMESPACE+".insert", value);
	}

}
