package kr.co.softsoldesk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

//	@GetMapping("/register")
//	private String register() {
//		return "user/register";
//	}
	
	@GetMapping("/register")
    public String showRegisterForm(Model model) {
        model.addAttribute("user", new UserBean()); // User는 적절한 엔티티/DTO 클래스
        return "user/register"; // JSP 파일 이름
    }

    @PostMapping("/user")
    public String processRegister(@ModelAttribute("user") UserBean user, Model model) {
        // 가입 처리 로직
        return "registerSuccess"; // 성공시 이동할 JSP 파일
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
