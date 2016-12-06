package edu.spring.project03.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.spring.project03.service.MsgAllService;

@RestController
@RequestMapping(value = "/msg")
public class MsgRESTController {

	private static Logger logger = LoggerFactory.getLogger(MsgRESTController.class);
	
	@Autowired
	private MsgAllService msgService;
	
	@RequestMapping(value="/numText/{no}" , method = RequestMethod.DELETE)
	public int DeleteTxtOne(@PathVariable("no") int no){
		
		logger.info("no" + no);
		int result = msgService.deleteSelectMSGContext(no);
		
		if(result == 1 ){
			logger.info("삭제 성공입니다.");
		}else{
			logger.info("삭제 실패 ");
		}
		
		
		
		
		return 0; 
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}//end class 
