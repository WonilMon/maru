package kr.co.softsoldesk.controller;

import java.util.HashMap;

import java.util.List;
import java.util.Map;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.auth0.jwt.JWT;
import com.auth0.jwt.interfaces.DecodedJWT;

import kr.co.softsoldesk.beans.ContentBean;
import kr.co.softsoldesk.beans.IconBean;
import kr.co.softsoldesk.beans.LineProfile;
import kr.co.softsoldesk.beans.PageBean;
import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.groups.LoginGroup;
import kr.co.softsoldesk.groups.ModifyGroup;
import kr.co.softsoldesk.groups.RegisterGroup;
import kr.co.softsoldesk.service.IconService;
import kr.co.softsoldesk.service.LineLoginService;
import kr.co.softsoldesk.service.UserIconService;
import kr.co.softsoldesk.service.UserService;
import kr.co.softsoldesk.validator.UserValidator;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private UserValidator userValidator;

	@Autowired
	private MailSender mailSender;

	@Autowired
	private LineLoginService lineLoginService;

	@Autowired
	private IconService iconService;

	@Autowired
	private UserIconService userIconService;

	@InitBinder("addUserBean")
	protected void initAddUserBinder(WebDataBinder binder) {
		binder.addValidators(userValidator);
	}

	@InitBinder("modifyUser")
	protected void initModifyUserBinder(WebDataBinder binder) {
		binder.addValidators(userValidator);
	}

	@InitBinder("tempLoginUserBean")
	protected void initTempLoginUserBinder(WebDataBinder binder) {
		binder.addValidators(userValidator);
	}

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

//	-------------------------------------------

	@GetMapping("/profile")
	private String profile(@RequestParam("user_idx") int user_idx, Model model, HttpSession session,
			@RequestParam(value = "page", defaultValue = "1") int page) {

		UserBean profileUser = userService.getModifyUserInfo(user_idx);

		String img = userService.getImgFile(user_idx);

		// 아이콘 경로를 세션에 추가
		String iconPath = (String) session.getAttribute("icon_path");
		if (iconPath == null) {
			iconPath = ""; // 기본값 설정, 없을 경우
		}

		List<IconBean> userIcons = userIconService.getIconsByUserId(user_idx);

		List<ContentBean> myList = userService.getMyList(user_idx, page);

		PageBean pageBean = userService.getMyListCnt(user_idx, page);

		model.addAttribute("img", img);
		model.addAttribute("profileUser", profileUser);
		model.addAttribute("iconPath", iconPath); // 프로필 아이콘 경로 추가
		model.addAttribute("userIcons", userIcons);
		model.addAttribute("myList", myList);
		model.addAttribute("pageBean", pageBean);

		return "user/profile";
	}

	@GetMapping("/profile_modify")
	private String profile_modify(@RequestParam("user_idx") int user_idx, Model model) {

		UserBean modifyUser = userService.getModifyUserInfo(user_idx);
		model.addAttribute("modifyUser", modifyUser);

		String img = userService.getImgFile(user_idx);

		List<IconBean> userIcons = userIconService.getIconsByUserId(user_idx);

		model.addAttribute("img", img);
		model.addAttribute("userIcons", userIcons);
		model.addAttribute("loginUserBean", loginUserBean);

		System.out.println(loginUserBean.getUser_idx());

		return "user/profile_modify";
	}

	@PostMapping("/updateIcon")
	public String updateUserIcon(@RequestParam("icon_idx") int iconIdx, @RequestParam("user_idx") int userIdx,
			Model model) {
		try {
			// 유효성 검사
			if (iconIdx <= 0) {
				throw new IllegalArgumentException("Invalid icon index");
			}

			// 아이콘 경로를 가져와서 모델에 저장
			String iconPath = iconService.getIconPathByIconIdx(iconIdx);
			model.addAttribute("iconPath", iconPath);

			// 데이터베이스에 아이콘 경로 업데이트
			userService.updateUserIcon(userIdx, iconPath);

			// loginUserBean에 아이콘 경로 설정
			loginUserBean.setUser_icon(iconPath);

			// 프로필 페이지로 리디렉션
			return "redirect:/user/profile_modify?user_idx=" + userIdx;
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	@PostMapping("/profile_modify_pro")
	public String profile_modify_pro(@Validated(ModifyGroup.class) @ModelAttribute("modifyUser") UserBean modifyUser,
			BindingResult result, Model model) {

		if (result.hasErrors()) {
			return "user/profile_modify"; // 에러 발생 시 다시 profile_modify로 돌아감
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
	public String register_pro(@Validated(RegisterGroup.class) @ModelAttribute("addUserBean") UserBean addUserBean,
			BindingResult result, @RequestParam("g-recaptcha-response") String recaptchaResponse,
			RedirectAttributes redirectAttributes) {

		// reCAPTCHA설정
		final String RECAPTCHA_VERIFY_URL = "https://www.google.com/recaptcha/api/siteverify";
		final String SECRET_KEY = "6LclwjAqAAAAAMq08LudjKkl1UZD_7UDi-zyj_oB";

		RestTemplate restTemplate = new RestTemplate();

		// 헤더 리퀘스트바디 확인
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);

		MultiValueMap<String, String> requestBody = new LinkedMultiValueMap<>();
		requestBody.add("secret", SECRET_KEY);
		requestBody.add("response", recaptchaResponse);

		HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<>(requestBody, headers);

		// reCAPTCHA검증API불러오기
		ResponseEntity<Map> responseEntity = restTemplate.postForEntity(RECAPTCHA_VERIFY_URL, requestEntity, Map.class);
		Map<String, Object> response = responseEntity.getBody();

		// 검증결과 확인
		if (response == null) {
			System.out.println("Error: reCAPTCHA response is null.");
			redirectAttributes.addFlashAttribute("message", "reCAPTCHA認証に失敗しました。再試行してください。");
			return "redirect:/user/register";
		}

		// 검증responce확인용
		System.out.println("reCAPTCHA response: " + response);

		boolean success = Boolean.TRUE.equals(response.get("success"));
		if (!success) {
			// reCAPTCHA실패시
			redirectAttributes.addFlashAttribute("message", "reCAPTCHA認証に失敗しました。再試行してください。");
			return "redirect:/user/register";
		}

		// 폼 유효성검사 오류시 등록 페이지로 돌아가기
		if (result.hasErrors()) {
			return "user/register";
		}

		// 유저등록실행
		userService.addUser(addUserBean);

		return "user/register_success";
	}

	@PostMapping("/login_pro")
	private String login_pro(
			@Validated(LoginGroup.class) @ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean,
			BindingResult result, HttpSession session) {

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

	@PostMapping("/google")
	@ResponseBody
	public Map<String, Object> google(@RequestBody Map<String, String> request,
			@ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean, Model model, HttpSession session) {

		Map<String, Object> response = new HashMap<>();

		tempLoginUserBean.setUser_email(request.get("api_email"));

		userService.getLoginUserAPI(tempLoginUserBean);

		if (loginUserBean.isUserLogin() == true) {
			session.setAttribute("user_idx", loginUserBean.getUser_idx());
			response.put("success", true);
		} else {
			response.put("success", false);
		}
		return response;
	}

	@RequestMapping("/line")
	public String lineCallback(@RequestParam(value = "code", required = false) String code,
			@RequestParam(value = "state", required = false) String state, HttpSession session, Model model) {

		// Access Token과 Id Token을 동시에 가져옴
		Map<String, String> tokens = lineLoginService.getTokens(code);
		String accessToken = tokens.get("access_token");
		String idToken = tokens.get("id_token");

		// 사용자 프로필 정보 가져오기
		LineProfile profile = lineLoginService.getUserProfile(accessToken);

		// JWT 디코딩하여 이메일 추출
		DecodedJWT decodedJWT = JWT.decode(idToken);
		String user_email = decodedJWT.getClaim("email").asString();

		System.out.println(profile.getUserId());
		System.out.println(profile.getDisplayName());
		System.out.println(user_email); // email 출력

		// 사용자 정보를 세션에 저장
		session.setAttribute("userProfile", profile);
		model.addAttribute("tempLoginUserBean", new UserBean());

		UserBean tempLoginUserBean = new UserBean();
		tempLoginUserBean.setUser_email(user_email);

		userService.getLoginUserAPI(tempLoginUserBean);

		if (loginUserBean.isUserLogin() == true) {
			session.setAttribute("user_idx", loginUserBean.getUser_idx());
			return "user/login_success";
		} else {
			model.addAttribute("api_email", user_email);
			model.addAttribute("addUserBean", new UserBean());
			return "user/register";
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

	@PostMapping("/search_password_pro")
	public String searchPasswordPro(@ModelAttribute("searchPasswordBean") UserBean searchPasswordBean) {

		boolean emailExists = userService.checkUserEmailExist(searchPasswordBean.getUser_email());

		if (emailExists == true) {
			return "user/password_reset_fail";
		} else {
			String newPassword = userService.resetPassword(searchPasswordBean.getUser_email());
			try {
				return "user/send_mail_success";
			} catch (Exception e) {
				e.printStackTrace();
				return "user/send_mail_fail";
			}
		}
	}

}
