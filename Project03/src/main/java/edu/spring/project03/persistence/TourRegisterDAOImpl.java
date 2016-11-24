package edu.spring.project03.persistence;


import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.project03.domain.TourRegisterVO;

@Repository
public class TourRegisterDAOImpl implements TourRegisterDAO {
	
	private static final String NAMESPACE = "edu.spring.Project03.TourRegisterMapper";
	
	private static final Logger logger = LoggerFactory.getLogger(TourRegisterDAOImpl.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insert(TourRegisterVO vo) {
		
		logger.info("insert() 호출!");

		logger.info("회원 번호: " + vo.getMno());	
		logger.info("여행 제목: " + vo.getTitle());	
		logger.info("성별 조건: " + vo.getCondition_sex());
		logger.info("나이 조건: " + vo.getCondition_age());
		logger.info("컨텐츠: " + vo.getContent());
		logger.info("시작 날짜: " + vo.getStart_date());
		logger.info("종료 날짜: " + vo.getEnd_date());
		
		
		return sqlSession.insert(NAMESPACE + ".insert-register", vo);
	}

}
