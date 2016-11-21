package edu.spring.project03.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.project03.domain.MemberVO;
import edu.spring.project03.persistence.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService{


	private static final Logger logger = LoggerFactory.getLogger(AdminServiceImpl.class);
	
	@Autowired AdminDAO aDao;
	
	
	@Override
	public List<MemberVO> newUserList() {
		
		logger.info("adminService 지납니다. 여기에서 뷰에 리스트 뿌림");
		return aDao.read();
		
	}

	
	
}//end class 
