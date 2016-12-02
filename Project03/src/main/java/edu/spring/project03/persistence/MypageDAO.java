package edu.spring.project03.persistence;

import java.util.List;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.PersonalVO;

public interface MypageDAO {
	
	public abstract PersonalVO selectpersonal(int mno);
	
	public abstract List<ImgVO> select_mno(int mno);
	
	public abstract ImgVO selectProfile(int mno);

}
