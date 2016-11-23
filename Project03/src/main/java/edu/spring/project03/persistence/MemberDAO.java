	package edu.spring.project03.persistence;

import java.util.ArrayList;
import java.util.List;

import edu.spring.project03.domain.MemberVO;

public interface MemberDAO {
		
	// MemberVO
	public abstract MemberVO login(MemberVO vo);	
	public abstract String selectUserid(String userid);
	
	// PersonalVO
	public abstract String selectNickname(String nickname);
	
	
	
	
	public abstract MemberVO select(int mno);
	
	
	
	
	
	
	
	
	
	
	

} // end interface MemberDAO