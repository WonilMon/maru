package kr.co.softsoldesk.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
import org.springframework.web.multipart.MultipartFile;

import com.auth0.jwt.JWT;
import com.auth0.jwt.interfaces.DecodedJWT;

import kr.co.softsoldesk.beans.LineProfile;
import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.beans.IconBean;
import kr.co.softsoldesk.groups.LoginGroup;
import kr.co.softsoldesk.groups.ModifyGroup;
import kr.co.softsoldesk.groups.RegisterGroup;
import kr.co.softsoldesk.service.IconService;
import kr.co.softsoldesk.service.UserIconService;
import kr.co.softsoldesk.service.UserService;
import kr.co.softsoldesk.validator.UserValidator;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

//	@Autowired
//	private LineLoginService lineLoginService;

	@Autowired
	private UserValidator userValidator;

	@Autowired
	private MailSender mailSender;
	
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
	public String profile(@RequestParam("user_idx") int user_idx, Model model, HttpSession session) {
	    // 사용자 정보 및 프로필 이미지 경로 가져오기
	    UserBean profileUser = userService.getModifyUserInfo(user_idx);
	    String img = userService.getImgFile(user_idx);

	    // 아이콘 경로를 세션에 추가 
	    String iconPath = (String) session.getAttribute("icon_path");
	    if (iconPath == null) {
	        iconPath = ""; // 기본값 설정, 없을 경우
	    }
	    // 모델에 정보 추가
	    model.addAttribute("img", img);
	    
	    
	    //아이콘 관련
	    model.addAttribute("profileUser", profileUser);
	    model.addAttribute("iconPath", iconPath); // 프로필 아이콘 경로 추가

	    // 사용자 아이콘 목록을 가져옴
	    List<IconBean> userIcons = userIconService.getIconsByUserId(user_idx);
	    model.addAttribute("userIcons", userIcons);

	    return "user/profile";
	}

	@GetMapping("/profile_modify")
	public String profile_modify(@RequestParam("user_idx") int user_idx, Model model) {
	    UserBean modifyUser = userService.getModifyUserInfo(user_idx);
	    model.addAttribute("modifyUser", modifyUser);

	    String img = userService.getImgFile(user_idx);
	    model.addAttribute("img", img);

	    // 아이콘 목록을 모델에 추가
	    List<IconBean> userIcons = userIconService.getIconsByUserId(user_idx);
	    model.addAttribute("userIcons", userIcons);
	    

	    return "user/profile_modify";
	}
	// 사용자 프로필 아이콘 업데이트 (POST 요청으로 수정)
    @PostMapping("/updateIcon")
    public String updateUserIcon(
            @RequestParam("icon_idx") int iconIdx,
            @RequestParam("user_idx") int userIdx,
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
			BindingResult result) {

		if (result.hasErrors()) {
			return "user/register";
		}

		userService.addUser(addUserBean);

		return "user/register_success";
	}

	@PostMapping("/login_pro")
	private String login_pro(
			@Validated(LoginGroup.class) @ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean,
			BindingResult result, HttpSession session) {

		System.out.println(
				"UserBean data: " + tempLoginUserBean.getUser_email() + ", " + tempLoginUserBean.getUser_pass());

		if (result.hasErrors()) {
			System.out.println("Validation errors:");
			result.getAllErrors().forEach(error -> System.out.println(error.getDefaultMessage()));
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

	@PostMapping("/search_password_pro")
	public String searchPasswordPro(@ModelAttribute("searchPasswordBean") UserBean searchPasswordBean) {

		boolean emailExists = userService.checkUserEmailExist(searchPasswordBean.getUser_email());

		if (emailExists == true) {
			return "user/password_reset_fail";
		} else {
			String newPassword = userService.resetPassword(searchPasswordBean.getUser_email());
			System.out.println("新しいパスワード: " + newPassword);

			try {
				sendMail(searchPasswordBean.getUser_email(), newPassword);
				return "user/send_mail_success";
			} catch (Exception e) {
				e.printStackTrace();
				return "user/send_mail_fail";
			}
		}
	}

	private void sendMail(String to, String newPassword) throws Exception {
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setTo(to);
		mailMessage.setSubject("【重要】パスワードリセットのお知らせ");
		mailMessage.setText("こんにちは、\n\n" + "ご依頼に基づき、アカウントのパスワードがリセットされました。\n" + "新しいパスワードは以下の通りです:\n\n" + "新しいパスワード: "
				+ newPassword + "\n\n" + "セキュリティ保護のため、ログイン後、速やかにパスワードを変更することをお勧めします。\n\n"
				+ "もしこのメールに覚えがない場合は、アカウントの不正利用の可能性があります。" + "直ちにサイト内のFAQにアクセスし、サポートチームにご連絡ください。\n\n"
				+ "また、その他の質問やサポートが必要な場合も、同じくFAQページをご参照ください。\n\n" + "この度はご利用いただき、誠にありがとうございます。\n\n" + "敬具,\n"
				+ "サポートチーム");

		mailSender.send(mailMessage);
	}

}
