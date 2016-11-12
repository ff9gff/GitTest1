package edu.spring.project03.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import edu.spring.project03.domain.MemberVO;

//@Component // 스프링 프레임워크가 bean으로 관리하는 클래스
@Service // 스프링 프레임워크가 Service bean으로 관리하는 클래스
public class MemberServiceImpl implements MemberService {

	@Override
	public List<MemberVO> read() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO read(String userid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO login(MemberVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
} // end class MemberServiceImpl






