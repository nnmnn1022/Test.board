package com.example.springBoard.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainCotroller {
	
	@RequestMapping("/")
	public String home() {
		return "home"; // >> home.jsp로 넘어간다.

	}
	
	@RequestMapping("/login")
	public String login() {
		return "signup"; 

	}
	
	@RequestMapping("/login_result")
	public String login_result() {
		return "signup_result"; 

	}
	
	@RequestMapping("/board")
	public String board() {
		return "board"; 

	}
	
	@RequestMapping("/board_result")
	public String board_result() {
		return "board_result"; 

	}

}
