package edu.spring.project03.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.project03.domain.MemberVO;
import edu.spring.project03.persistence.SearchUserDAO;


@Service
public class SearchUserServiceImpl implements SearchUserService {

	
	private static final Logger logger =
			LoggerFactory.getLogger(SearchUserServiceImpl.class);
	
	
	@Autowired
	private SearchUserDAO suDao;
	
	@Override
	public List<MemberVO> readuser(String userid) {
		
		logger.info("SearchUserServiceimple 을 지납니다.");
		logger.info("userid " +userid ); //잘 넘어감 
		List<MemberVO> list =	suDao.searchUser(userid);
		logger.info("list => "+list.size());
		return suDao.searchUser(userid);
	}

}
