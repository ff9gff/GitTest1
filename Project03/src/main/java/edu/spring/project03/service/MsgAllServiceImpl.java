package edu.spring.project03.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.project03.domain.MsgDTO;
import edu.spring.project03.domain.MsgVO;
import edu.spring.project03.pageutil.PaginationCriteria;
import edu.spring.project03.persistence.MsgAllDAO;

@Service
public class MsgAllServiceImpl implements MsgAllService {

	
	private static Logger logger = LoggerFactory.getLogger(MsgAllServiceImpl.class);
	
	@Autowired
	private MsgAllDAO msgAlldao;
	
	
	@Override
	public List<MsgVO> readMyMsg(int mno) {
		
		logger.info("msg all service 지남" + mno);
		
		List<MsgVO> list = msgAlldao.read(mno);
	
		logger.info("list 사이즈 확인 "+ list.size());
		return list;
	}


	@Override
	public String readNickname(int mno) {
		logger.info("닉네임 찾는 서비스 ");
		logger.info("ㅡmno -> "+mno);
	String s1=	msgAlldao.selectNick(mno);
	logger.info(s1);
		return msgAlldao.selectNick(mno);
	}


	@Override
	public List<MsgDTO> readGetMsg(int mno) {
		// TODO 자동 생성된 메소드 스텁
		//readGetMsg readAllget dao 
		//msgAlldao.readAllget(mno);
		logger.info("mno "+ mno);
	List<MsgDTO> list =msgAlldao.readAllget(mno);
	
	logger.info("sssss" +list.size());
	logger.info("mno 다시와  "+ mno);
		return list;
	}


	@Override
	public List<MsgDTO> readSendMsg(int mno) {
		logger.info("여기는 mno sendMsg" + mno);
		List<MsgDTO> read = msgAlldao.readAllsend(mno);
		logger.info("read의 사이즈는 " + read.size());
		
		return read;
	}


	@Override
	public List<MsgDTO> readSendMsg2(PaginationCriteria x) {
		
		return msgAlldao.readAllget2(x);
	}





}
