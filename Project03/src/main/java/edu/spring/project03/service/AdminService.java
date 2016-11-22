package edu.spring.project03.service;

import java.util.List;

import edu.spring.project03.domain.MemberVO;

public interface AdminService {

	
	public List<MemberVO> newUserList();
	
	public List<MemberVO> userLevel12read();
	
	public int sendAllUserMessage( String msg_content);
}
