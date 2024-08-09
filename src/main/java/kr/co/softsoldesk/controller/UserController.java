package kr.co.softsoldesk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.softsoldesk.beans.UserBean;

@Controller
@RequestMapping("/user") // user로 다 잡아와서
public class UserController {

//	-------------------------------------------

	@GetMapping("/profile")
	private String profile() {
		return "user/profile";
	}

	@GetMapping("/profile_modify")
	private String profile_modify() {
		return "user/profile_modify";
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
