package kr.co.softsoldesk.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.softsoldesk.beans.LineProfile;
import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	/*
	 * @Autowired private LineLoginService lineLoginService;
	 */

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

		return "user/profile_modify";
	}

	@PostMapping("/profile_modify_pro")
	public String profile_modify_pro(@Valid @ModelAttribute("modifyUser") UserBean modifyUser, BindingResult result) {

		if (result.hasErrors()) {
			return "user/profile_modify";
		}

		userService.modifyUser(modifyUser);

		return "user/profile_modify_success";
	}

	@PostMapping("/updateStatus")
	@ResponseBody
	public String updateStatus(@RequestParam("user_statustext") String user_statustext,
			@RequestParam("user_idx") int user_idx) {

		try {
			userService.updateStatusText(user_statustext, user_idx);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	@GetMapping("/register")
	public String register(@RequestParam(value = "api_email", required = false, defaultValue = "") String api_email,
			Model model) {
		model.addAttribute("api_email", api_email);
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
	/*
	 * @PostMapping("/google")
	 * 
	 * @ResponseBody public Map<String, Object> google(@RequestBody Map<String,
	 * String> request,
	 * 
	 * @ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean, Model model,
	 * HttpSession session) {
	 * 
	 * Map<String, Object> response = new HashMap<>();
	 * 
	 * String user_email = request.get("api_email");
	 * System.out.println("Received email: " + user_email);
	 * 
	 * userService.getLoginUserAPI(user_email);
	 * 
	 * if (loginUserBean.isUserLogin() == true) { session.setAttribute("user_idx",
	 * loginUserBean.getUser_idx()); response.put("success", true); } else {
	 * response.put("success", false); }
	 * 
	 * return response; }
	 * 
	 * @RequestMapping("/line") public String lineCallback(@RequestParam(value =
	 * "code", required = false) String code,
	 * 
	 * @RequestParam(value = "state", required = false) String state, HttpSession
	 * session, Model model) {
	 * 
	 * UserBean tempLoginUserBean = new UserBean();
	 * 
	 * // Access Token 발급 String accessToken =
	 * lineLoginService.getAccessToken(code);
	 * 
	 * // 사용자 프로필 정보 가져오기 LineProfile profile =
	 * lineLoginService.getUserProfile(accessToken);
	 * 
	 * System.out.println(profile.getUserId());
	 * System.out.println(profile.getDisplayName());
	 * System.out.println(profile.getUserEmail());
	 * 
	 * // 사용자 정보를 세션에 저장 session.setAttribute("userProfile", profile);
	 * model.addAttribute("tempLoginUserBean", tempLoginUserBean);
	 * 
	 * // 로그인 후 리다이렉트할 페이지 return "main"; }
	 */

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

	@PostMapping("/buyIcon")
	public ResponseEntity<String> buyIcon(@RequestBody Map<String, Integer> request) {
		int user_idx = request.get("user_idx");
		int icon_idx = request.get("icon_idx");

		boolean success = userService.buyIcon(user_idx, icon_idx);
		if (success) {
			return ResponseEntity.ok("success");
		} else {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("insufficient_points");
		}

	}
}
