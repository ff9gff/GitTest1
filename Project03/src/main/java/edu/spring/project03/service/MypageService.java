package edu.spring.project03.service;

import java.util.List;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.PersonalVO;

public interface MypageService {
	
	public abstract PersonalVO selectpersonal(int mno);
	
	public abstract List<ImgVO> read_mno(int mno);
	
	public abstract ImgVO readProfile(int mno);

}
