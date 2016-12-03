package edu.spring.project03.service;

import java.util.List;

import edu.spring.project03.domain.MemberVO;

public interface SearchUserService {

	public abstract List<MemberVO> readuser(String userid); // userSearch

	public abstract int sendMsgTO(int sd_mno, String getUser, String msg);
	// public abstract int

	
}
