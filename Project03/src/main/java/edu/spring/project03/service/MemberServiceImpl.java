package edu.spring.project03.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.project03.domain.MemberVO;
import edu.spring.project03.domain.TourRegisterVO;
import edu.spring.project03.persistence.MemberDAO;

//@Component // 스프링 프레임워크가 bean으로 관리하는 클래스
@Service // 스프링 프레임워크가 Service bean으로 관리하는 클래스
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO dao;

	@Override
	public List<MemberVO> read() {
		List<MemberVO> list = dao.select();
		return list;
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

	@Override
	public List<TourRegisterVO> read_region(String region) {
		List<TourRegisterVO> list = dao.select_region(region);
		return list;
	}
	
	@Override
	public List<TourRegisterVO> read_region_date(TourRegisterVO vo) {
		List<TourRegisterVO> list = dao.select_region_date(vo);
		return list;
	}

	
	
} // end class MemberServiceImpl






