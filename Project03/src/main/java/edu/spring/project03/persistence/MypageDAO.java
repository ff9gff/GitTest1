package edu.spring.project03.persistence;

import java.util.List;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.domain.RegionVO;
import edu.spring.project03.domain.TourRegisterVO;

public interface MypageDAO {
	
	public abstract PersonalVO selectpersonal(int mno);
	
	public abstract List<PersonalVO> selectPerson(int mno);
	
	public abstract List<ImgVO> select_mno(int mno);
	
	public abstract ImgVO selectProfile(int mno);
	
	public abstract List<ImgVO> select_join_mno(int mno);
	
	public abstract int updateProfile(PersonalVO vo);
	
	
	// 마이페이지에 뿌려지는 제목/지역	
	public abstract List<TourRegisterVO> select_mytour_title(int mno);
	public abstract List<RegionVO> select_mytour_region(int mno);

}
