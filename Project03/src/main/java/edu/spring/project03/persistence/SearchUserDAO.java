package edu.spring.project03.persistence;

import java.util.List;

import edu.spring.project03.domain.MemberVO;



public interface SearchUserDAO {

	//public abstract List<MsgVO> selectAll();
	
	
	public abstract List<MemberVO> searchUser(String userid);
	
	
	
}
