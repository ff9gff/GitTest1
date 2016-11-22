	package edu.spring.project03.persistence;

import java.util.List;

import edu.spring.project03.domain.MemberVO;

public interface MemberDAO {
		
	// MemberVO
	public abstract MemberVO login(MemberVO vo);
	
	
	// PersonalVO
	
	
	
	
	public abstract MemberVO select(String userid);
	public abstract MemberVO select(int mno);
	
	
	
	
	
	
	
	
	public abstract List<MemberVO> select();
	
	

} // end interface MemberDAO