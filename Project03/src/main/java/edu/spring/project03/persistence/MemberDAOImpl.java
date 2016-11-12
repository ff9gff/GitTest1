package edu.spring.project03.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.project03.domain.MemberVO;

//@Component // 스프링에서 Component 빈으로 관리
@Repository // 스프링에서 DAO Componet 빈으로 관리
public class MemberDAOImpl implements MemberDAO {

	private static final String NAMESPACE =
			"edu.spring.project03.MemberMapper";
	
	// DB insert/update/delete/select 동작들은
	// SqlSession 객체를 사용해서 이루어지게 됨
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<MemberVO> select() {
		List<MemberVO> list = sqlSession.selectList(NAMESPACE+ ".member-select-all"); 
		return list;
	}

	@Override
	public MemberVO select(String userid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO login(MemberVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
} // end class MemberDAOImpl


















