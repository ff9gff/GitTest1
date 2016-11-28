package edu.spring.project03.persistence;

import java.util.List;

import edu.spring.project03.domain.MemberVO;
import edu.spring.project03.domain.MsgVO;


//조승현 작성 
public interface SearchUserDAO {

	//public abstract List<MsgVO> selectAll();
	
	
	public abstract List<MemberVO> searchUser(String userid);
	
	//여기서 유저 정보는   메세지 보내는 사람 아이디 를 가지고 (personel tbl ) 에 있는 mno 를 가져온다. 
	public abstract int searchSndUno(String nickname);
	
	public abstract int sendMsgToU(MsgVO vo);
	
}
