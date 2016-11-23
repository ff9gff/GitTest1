package edu.spring.project03.persistence;

import java.util.List;

import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.domain.TourJoinVO;



public interface TourJoinDAO {
	// 리스트 검색
	public abstract List<TourJoinVO> selectList(int trip_no);
	// 개인정보 검색
	public abstract List<PersonalVO> selectPerson(int trip_no);
	// 승인수정
	public abstract int updateApproval(int approval, int list_no);
	// 신청
	public abstract int insertApproval(int trip_no, int mno);
	
}
