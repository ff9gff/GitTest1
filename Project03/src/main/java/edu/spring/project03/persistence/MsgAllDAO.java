package edu.spring.project03.persistence;

import java.util.List;

import edu.spring.project03.domain.MsgDTO;
import edu.spring.project03.domain.MsgVO;
import edu.spring.project03.pageutil.PaginationCriteria;

public interface MsgAllDAO {

	
	public abstract List<MsgVO> read(int mno);
	
	public abstract String selectNick(int mno);
	
	public abstract List<MsgDTO> readAllget(int mno);
	
	public abstract List<MsgDTO> readAllsend(int mno);
	
	public abstract List<MsgDTO> readAllget2(PaginationCriteria x );
}
