	package edu.spring.project03.persistence;

import java.util.List;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.MemberVO;
import edu.spring.project03.domain.TourRegisterVO;

public interface MemberDAO {

	public abstract List<MemberVO> select();

	public abstract MemberVO select(String userid);

	public abstract MemberVO login(MemberVO vo);
	
	public abstract List<TourRegisterVO> select_region(String region);
	
	public abstract List<TourRegisterVO> select_region_date(TourRegisterVO vo);
	
	public abstract List<ImgVO> select_region_image(ImgVO vo);

}
