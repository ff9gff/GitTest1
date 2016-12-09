package edu.spring.project03.service;

import java.util.List;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.domain.RegionVO;
import edu.spring.project03.domain.ReviewRegionVO;
import edu.spring.project03.domain.ReviewVO;
import edu.spring.project03.domain.TourRegisterVO;

public interface MypageService {
	
	public abstract PersonalVO selectpersonal(int mno);
	
	public abstract List<PersonalVO> readPerson(int mno);
	
	public abstract List<ImgVO> read_mno(int mno);
	
	public abstract ImgVO readProfile(int mno);
	
	public abstract List<ImgVO> read_join_mno(int mno);
	
	public abstract int update_profile(PersonalVO vo);
	
	// 마이페이지에 뿌려지는 제목/지역	
	public abstract List<TourRegisterVO> read_mytour_title(int mno);
	public abstract List<RegionVO> read_mytour_region(int mno);
	
	// 후기 게시글 리스트
	public abstract List<ImgVO> read_review_mno(int mno);
	public abstract List<ReviewVO> read_review_title(int mno);
	public abstract List<ReviewRegionVO> read_review_region(int mno);
	
	// 내가 선택한 여행 게시글 제목/지역
	public abstract List<TourRegisterVO> read_mytourjoin_title(int mno);
	public abstract List<RegionVO> read_mytourjoin_region(int mno);

}
