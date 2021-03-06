package edu.spring.project03.service;

import java.util.List;

import edu.spring.project03.domain.MsgDTO;
import edu.spring.project03.domain.MsgVO;
import edu.spring.project03.pageutil.MsgPaginationCriteria;
import edu.spring.project03.pageutil.PaginationCriteria;

public interface MsgAllService {

	public abstract List<MsgVO> readMyMsg(int mno);
	
	public abstract String readNickname(int mno);	
	
	//아래 이게 진짜다 위에는 지울 예정 ? 
	public abstract List<MsgDTO> readGetMsg(int mno); 
	
	public abstract List<MsgDTO> readSendMsg(int mno); 
	
	public abstract int deleteSelectMSGContext(int mno);
	
	// minimsg로 넘어가는 화면 입니다. 
	public abstract String selectMSGContext(int mni);
	
	//페이징 처리를 위한 메소드
	public abstract int getNumOfRecords(int mno);
	
	public abstract List<MsgDTO> readSendMsg2(MsgPaginationCriteria x); 
	
	//받은 쪽지함 서비스 
	public abstract int pageGetMsgOfRecords(int mno);
	
	public abstract List<MsgDTO> readPageGetMsgTxt(MsgPaginationCriteria x); 
}
