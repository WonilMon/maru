package kr.co.softsoldesk.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

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
	public String register(Model model) {
		model.addAttribute("addUserBean", new UserBean());
		return "user/register";
	}

	@PostMapping("/register_pro")
	public String register_pro(@Valid @ModelAttribute("addUserBean") UserBean addUserBean, BindingResult result) {

		if (result.hasErrors()) {
			return "user/register";
		}

		userService.addUser(addUserBean);

		return "user/register_success";
	}

	@PostMapping("/login_pro")
	private String login_pro(@ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean,
			@Valid BindingResult result, HttpSession session) {

		if (result.hasErrors()) {
			return "main";
		}

		userService.getLoginUser(tempLoginUserBean);

		if (loginUserBean.isUserLogin() == true) {
			session.setAttribute("user_idx", loginUserBean.getUser_idx());
			return "user/login_success";
		} else {
			return "user/login_fail";
		}
	}

	@GetMapping("/not_login")
	public String not_login() {
		return "user/not_login";
	}

	@GetMapping("/logout")
	private String logout(HttpSession session) {
		loginUserBean.setUserLogin(false);
		session.invalidate(); // 세션 무효화
		return "user/logout";
	}

	@GetMapping("/search_password")
	private String search_password(Model model) {
		model.addAttribute("searchPasswordBean", new UserBean());
		return "user/search_password";
	}

}
