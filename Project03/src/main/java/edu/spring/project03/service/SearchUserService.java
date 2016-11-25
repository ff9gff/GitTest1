package edu.spring.project03.service;

import java.util.List;

import edu.spring.project03.domain.MemberVO;
import edu.spring.project03.domain.MsgVO;


public interface SearchUserService {

	
	public abstract List<MemberVO> readuser(String userid); //userSearch
	
	public abstract int sendMsgTO(String userid , String getUser , String msg);
	//public abstract int 
}
