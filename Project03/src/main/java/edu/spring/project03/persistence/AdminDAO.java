package edu.spring.project03.persistence;

import java.util.List;

import edu.spring.project03.domain.MemberVO;

public interface AdminDAO {

	
	public abstract List<MemberVO> read();
}
