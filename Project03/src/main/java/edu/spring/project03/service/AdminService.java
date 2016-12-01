package edu.spring.project03.service;

import java.util.List;

import edu.spring.project03.domain.DomainDTO;
import edu.spring.project03.domain.MemberVO;

public interface AdminService {

	
	public List<MemberVO> newUserList();
	
	public List<MemberVO> userLevel12read();
	
	public int sendAllUserMessage( String msg_content);
	
	//관리자 메인 화면을 수정 하겠습니다. 11.28 
	public List<DomainDTO> readAdminDomain();
	
	
	//  유저 정보를 모두 가져옵니다. 레벨  0 
	public List<Integer> readLevelZero();
	
	// update 
	public int updateLevelOne(int mno);
}
