package edu.spring.project03.persistence;

import java.util.List;

import edu.spring.project03.domain.MsgDTO;
import edu.spring.project03.domain.MsgVO;
import edu.spring.project03.pageutil.MsgPaginationCriteria;
import edu.spring.project03.pageutil.PaginationCriteria;

public interface MsgAllDAO {

	
	public abstract List<MsgVO> read(int mno);
	
	public abstract String selectNick(int mno);
	
	public abstract List<MsgDTO> readAllget(int mno);
	
	public abstract List<MsgDTO> readAllsend(int mno);
	
	public abstract int deleteSelectMSG(int mno);
	
	public abstract String selectContextMSG(int mno);
	
	public abstract int getNumOfRecords(int mno);
	
	public abstract List<MsgDTO> readAllget2(MsgPaginationCriteria x );
	
	//받은 메일함의 개수를 나타 냅니다. 
	public abstract int getMsgTotalNumOfRecords(int mno);
	
	//받은 메일함을 위한 페이징 처리를 위한 문장 입니다. 
	public abstract List<MsgDTO> readGetPagingMSG(MsgPaginationCriteria x );
}
