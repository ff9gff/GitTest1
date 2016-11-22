package edu.spring.project03.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import edu.spring.project03.domain.TourJoinVO;

public class TourJoinDAOImple implements TourJoinDAO {
	private static final String NAMESPACE=
			"edu.spring.project03.TourJoinMapper";
	private static final Logger logger=
			LoggerFactory.getLogger(TourJoinDAOImple.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<TourJoinVO> select(int trip_no) {
		logger.info("select() 호출: trip_no="+trip_no);
		return sqlSession.selectList(NAMESPACE+".selectlist", trip_no);
	}

}
