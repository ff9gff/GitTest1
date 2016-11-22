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


	@Override
	public List<MemberVO> userLevel12read() {
		logger.info("integer 로 구성된 mno들을 뽑아냄 ");
		return aDao.readAllUser12();
	}


	
	@Override
	public int sendAllUserMessage( String msg_content) {
		int result=0;  
		List<MemberVO> user12List =aDao.readAllUser12();//get(0).toString()
		logger.info("sendAllUserMessage 지나요 user12List.size() -> "+user12List.size()); //Integer.parseInt(args[0]);
		logger.info("sendAllUserMessage toString "+ user12List.get(1)); 
		logger.info("msg_content-> "+msg_content);
		//logger.info("sendAllUserMessage 지나요 "+ user12List.get(0).toString());
		//logger.info("sew 버여져 "+user12List.get(0).intValue());
		//logger.info("sendAllUserMessage 지나요 "+ Integer.parseInt(user12List.get(0).toString()));
		for(int i = 0 ; i <user12List.size();i++){
		result =aDao.sendAllUserMsg(user12List.get(i).getMno(), msg_content);
		
		}
		return result;
	}

	
	
}//end class 
