package edu.spring.project03.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.project03.domain.MemberVO;




@Repository
public class SearchUserDAOImpl implements SearchUserDAO {

	private static final Logger logger =LoggerFactory.getLogger(SearchUserDAOImpl.class);
	private static final String NAMESPACE =
			"edu.spring.project03.SearchMember";
			//"edu.spring.wmmsg.MsgMapper";
	
	@Autowired SqlSession sqlSession;
	/*
	 * edu.spring.ex02.BoardMapper
	<select id="searchUserName" resultType="MemberVO2">
	 * */
	@Override
	public List<MemberVO> searchUser(String userid) {
		logger.info("여기는 SearchUserDAOIMPLE 입니다. user 값은 " + userid);
		userid = /*"%" +*/ userid + "%";
		List<MemberVO> list = sqlSession.selectList(NAMESPACE+".searchUserName", userid);
		
		return list;
		
	}
	

}
