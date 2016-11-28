package edu.spring.project03.persistence;

import java.util.List;

import edu.spring.project03.domain.MsgDTO;
import edu.spring.project03.domain.MsgVO;

public interface MsgAllDAO {

	
	public abstract List<MsgVO> read(int mno);
	
	public abstract String selectNick(int mno);
	
	public abstract List<MsgDTO> readAllget(int mno);
}
