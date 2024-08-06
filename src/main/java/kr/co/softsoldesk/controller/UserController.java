package kr.co.softsoldesk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user") // user로 다 잡아와서
public class UserController {

//	-------------------------------------------

	@GetMapping("/myPage")
	private String login() {
		return "user/myPage";
	}

	@GetMapping("/register")
	private String register() {
		return "user/register";
	}

	@GetMapping("/searchEmail")
	private String searchEmail() {
		return "user/searchEmail";
	}

	@GetMapping("/searchPassword")
	private String searchPassword() {
		return "user/searchPassword";
	}

}
