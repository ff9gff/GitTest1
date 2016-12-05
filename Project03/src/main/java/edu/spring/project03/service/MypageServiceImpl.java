package edu.spring.project03.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.domain.RegionVO;
import edu.spring.project03.domain.TourRegisterVO;
import edu.spring.project03.persistence.MypageDAO;

@Service
public class MypageServiceImpl implements MypageService {
	
	@Autowired
	private MypageDAO mypageDAO;

	@Override
	public PersonalVO selectpersonal(int mno) {
		
		return mypageDAO.selectpersonal(mno);
	}
	
	@Override
	public List<PersonalVO> readPerson(int mno) {
	
		return mypageDAO.selectPerson(mno);
	}
	
	@Override
	public List<ImgVO> read_mno(int mno) {
		List<ImgVO> list = mypageDAO.select_mno(mno);
		return list;
	}
	
	@Override
	public ImgVO readProfile(int mno) {
		// TODO Auto-generated method stub
		return mypageDAO.selectProfile(mno);
	}

	@Override
	public List<ImgVO> read_join_mno(int mno) {
		// TODO Auto-generated method stub
		return mypageDAO.select_join_mno(mno);
	}

	@Override
	public List<TourRegisterVO> read_mytour_title(int mno) {

		return mypageDAO.select_mytour_title(mno);
	}

	@Override
	public List<RegionVO> read_mytour_region(int mno) {

		return mypageDAO.select_mytour_region(mno);
	}

}
