package edu.spring.project03.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ToggleMsgController {

	@RequestMapping(value = "tour/toggle_msg", method = RequestMethod.GET)
	public void toggleMsg() {
		
	}
	
}
