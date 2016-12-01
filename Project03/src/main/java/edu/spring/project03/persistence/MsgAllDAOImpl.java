package edu.spring.project03.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.project03.domain.MsgDTO;
import edu.spring.project03.domain.MsgVO;

@Repository
public class MsgAllDAOImpl implements MsgAllDAO{

	
	private static Logger logger = LoggerFactory.getLogger(MsgAllDAOImpl.class);
	@Autowired
	private SqlSession sqlSession;
	
	private static final String NAMESPACE = "edu.spring.project03.MemberMapper";
	//private static final String NAMESPACE =
	//"edu.spring.project03.MemberMapper";
	
	@Override
	public List<MsgVO> read(int mno) {
		
		logger.info("여기는 msgAlldaoimple 지납ㄴ다. " + mno);
		List<MsgVO> vo=	sqlSession.selectList(NAMESPACE+".selectMsg" ,mno);
		
		
		return vo;
		
	}

	@Override
	public String selectNick(int mno) {
		
		
		logger.info("select닉네임 입니다. ");
		String ss = sqlSession.selectOne(NAMESPACE+".selectNickname", mno);
		logger.info("닉네임 몰까 여기는 selectnick "+ ss);
		
		return ss;
		
	}

	@Override
	public List<MsgDTO> readAllget(int mno) {
		logger.info("select Msg DTO닉네임 입니다. ");
		
		return sqlSession.selectList(NAMESPACE+".selectGetMsg", mno);
	}

	@Override
	public List<MsgDTO> readAllsend(int mno) {
		
		logger.info("select Msg DTO send name 닉네임 입니다. ");

		return sqlSession.selectList(NAMESPACE+".selectSendMsg", mno);
	}
	
	
	
	
	
	
	
	
	
	
	
	
}// end class 
