	package edu.spring.project03.persistence;

import java.util.List;

import edu.spring.project03.domain.MemberVO;
import edu.spring.project03.domain.TourRegisterVO;

public interface MemberDAO {

	public abstract List<MemberVO> select();

	public abstract MemberVO select(String userid);

	public abstract MemberVO login(MemberVO vo);
	
	public abstract List<MemberVO> select_region(String region);
	
	public abstract List<MemberVO> select_region_date(TourRegisterVO vo);

}
