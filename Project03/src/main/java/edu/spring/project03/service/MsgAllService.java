package edu.spring.project03.service;

import java.util.List;

import edu.spring.project03.domain.MsgDTO;
import edu.spring.project03.domain.MsgVO;

public interface MsgAllService {

	public abstract List<MsgVO> readMyMsg(int mno);
	
	public abstract String readNickname(int mno);	
	
	//아래 이게 진짜다 위에는 지울 예정 ? 
	public abstract List<MsgDTO> readGetMsg(int mno); 
	
	public abstract List<MsgDTO> readSendMsg(int mno); 
	
	
	
	
}
