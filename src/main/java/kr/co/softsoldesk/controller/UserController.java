package kr.co.softsoldesk.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	private String profile(@RequestParam("user_idx") int user_idx, Model model) {
		UserBean profileUser = userService.getModifyUserInfo(user_idx);
		model.addAttribute("profileUser", profileUser);
		
		return "user/profile";
	}

	@GetMapping("/profile_modify")
	private String profile_modify(@RequestParam("user_idx") int user_idx, Model model) {
		
		UserBean modifyUser = userService.getModifyUserInfo(user_idx);
		model.addAttribute("modifyUser", modifyUser);
		model.addAttribute("user_idx", user_idx);
		
		return "user/profile_modify";
	}
	
	@PostMapping("/profile_modify_pro")
	public String profile_modify_pro(@Valid @ModelAttribute("modifyUser") UserBean modifyUser, BindingResult result) {
		
		System.out.println("controller: "+modifyUser.getUser_nickname());
		/*
		if(result.hasErrors()) {
			return "user/profile_modify";
		}*/
//		userService.getModifyUserInfo(modifyUser.getUser_idx());
		userService.modifyUser(modifyUser);
		
		return "user/profile_modify_success";
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
	
	@GetMapping("/deleteUser")
	private String deleteUser(@RequestParam("user_idx") int user_idx, HttpSession session) {
		
		userService.deleteUser(user_idx);
		loginUserBean.setUserLogin(false);
		session.invalidate();
		
		return "user/delete_success";
	}

}
