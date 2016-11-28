package edu.spring.project03.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.spring.project03.domain.MemberVO;
import edu.spring.project03.service.SearchUserService;

@RestController
@RequestMapping(value = "/users")
public class SearchUserRESTcontroller {

	private static final Logger logger = LoggerFactory.getLogger(SearchUserRESTcontroller.class);

	@Autowired
	private SearchUserService suRestService;

	@RequestMapping(value = "/all/{userid}", method = RequestMethod.GET)
	public ResponseEntity<List<MemberVO>> readSearchUser(@PathVariable("userid") String userid) {
		logger.info("read My Search user ->" + userid);
		ResponseEntity<List<MemberVO>> entity = null;

		List<MemberVO> list = suRestService.readuser(userid);

		if (list != null) {
			// select 성공 한것이다.
			entity = new ResponseEntity<List<MemberVO>>(list, HttpStatus.OK);
			logger.info("select 성공 ");
		} else {
			// select 실패이다.
			entity = new ResponseEntity<List<MemberVO>>(list, HttpStatus.BAD_REQUEST);
			logger.info("select 실패 ");
		}

		logger.info("entity " + entity);
		// logger.info("list.mno "+ list.get(0).getUserid());
		// 출력 됨
		return entity;

	}

}// end clas\s
