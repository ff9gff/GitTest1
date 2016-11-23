package edu.spring.project03.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.project03.domain.MemberVO;
import edu.spring.project03.persistence.MemberDAO;

//@Component // 스프링 프레임워크가 bean으로 관리하는 클래스
@Service // 스프링 프레임워크가 Service bean으로 관리하는 클래스
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;

	
	/*
	 * MemberVO
	 */	
	
	@Override
	public MemberVO login(MemberVO vo) {

		return memberDAO.login(vo);
	} // end login(vo)
	
	@Override
	public String readUserid(String userid) {
				
		return memberDAO.selectUserid(userid);
	} // end readUserid(userid)
	
	
	/*
	 * PersonalVO
	 */	
	@Override
	public String readNickname(String nickname) {
		
		return memberDAO.selectNickname(nickname);
	} // end readNickname(nickname)
	
	
	/**
	 * 
	 */
	
	






	
	
} // end class MemberServiceImpl