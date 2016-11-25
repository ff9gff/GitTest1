package edu.spring.project03.persistence;

import java.util.List;

import edu.spring.project03.domain.MemberVO;

public interface AdminDAO {

	
	public abstract List<MemberVO> read();
	
	
	public abstract List<MemberVO> readAllUser12();
	
	public abstract int sendAllUserMsg(int mno , String msg_content);
	
	
}
