package edu.spring.project03.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.project03.domain.MemberVO;

@Repository
public class AdminDAOImpl implements AdminDAO {

	
	private static final Logger logger = LoggerFactory.getLogger(AdminDAOImpl.class);
	
	private static final String NAMESPACE = "edu.spring.project03.SearchMember";
	//newUser
	
	@Autowired SqlSession sqlSession;
	
	@Override //관리자 메인 페이지에 뿌려주는 새로가입한 사람들 리스트 불러오게 함 
	public List<MemberVO> read() {
		logger.info("관리자 페이지에 들어가는 새로가입한 사람들 리스트를 보여줍니다. ");
		List<MemberVO> newlist = sqlSession.selectList(NAMESPACE+".newUser"); 
		return newlist;
	}//end read() 

	
	
	
}//end class 
