package edu.spring.project03.persistence;


import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import edu.spring.project03.domain.MemberVO;


//@Component // 스프링에서 Component 빈으로 관리
@Repository // 스프링에서 DAO Componet 빈으로 관리
public class MemberDAOImpl implements MemberDAO {

	private static final String NAMESPACE = "edu.spring.project03.MemberMapper";
	private static final Logger logger = LoggerFactory.getLogger(MemberDAOImpl.class);
	
		
	// DB insert/update/delete/select 동작들은
	// SqlSession 객체를 사용해서 이루어지게 됨
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public MemberVO login(MemberVO vo) {
		logger.info("login() 호출...");			
		
		return sqlSession.selectOne(NAMESPACE + ".login", vo);
	} // end login(vo)
	
	@Override
	public String selectUserid(String userid) {
		logger.info("selectUserid() 호출...");
				
		return sqlSession.selectOne(NAMESPACE + ".select-by-userid", userid);
	} // end select(userid)
	
	@Override
	public String selectNickname(String nickname) {
		logger.info("selectNickname() 호출...");
				
		return sqlSession.selectOne(NAMESPACE + ".select-by-nickname", nickname);
	} // end select(nickname)
	
	
	

	
	
	/***
	 * 
	 */
	
	

	
	@Override
	public MemberVO select(int mno) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	






	
	
	
	
} // end class MemberDAOImpl