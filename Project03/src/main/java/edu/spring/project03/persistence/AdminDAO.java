package edu.spring.project03.persistence;

import java.util.List;

import edu.spring.project03.domain.DomainDTO;
import edu.spring.project03.domain.MemberVO;

public interface AdminDAO {

	
	public abstract List<MemberVO> read();
	
	
	public abstract List<MemberVO> readAllUser12();
	
	public abstract int sendAllUserMsg(int mno , String msg_content);
	
	
	// 진짜 메인 화면에서 관리자의 모습을 보여 줄 화면 입니다. 
	public abstract List<DomainDTO> readRealDAdmim();
	
	// 레벨 0 인 사람들 불러 오기 
	
	public abstract List<Integer> readlevelZero();
	
	// 업데이트 하는 섭니다. 
	public abstract int updateLevelOne(int mno);
	
}
