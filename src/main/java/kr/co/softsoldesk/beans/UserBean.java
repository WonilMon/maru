package kr.co.softsoldesk.beans;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.softsoldesk.groups.LoginGroup;
import kr.co.softsoldesk.groups.ModifyGroup;
import kr.co.softsoldesk.groups.RegisterGroup;

@Component
public class UserBean {

	private int user_idx;

	@Size(min = 2, max = 4, groups = { ModifyGroup.class, RegisterGroup.class })
	@Pattern(regexp = "[가-힣]*", groups = { ModifyGroup.class, RegisterGroup.class })
	private String user_nickname;

	@Size(min = 4, max = 30, groups = { LoginGroup.class, RegisterGroup.class })
	@Pattern(regexp = "^[\\w.-]+@[\\w.-]+\\.[a-zA-Z]{2,6}$", groups = { LoginGroup.class, RegisterGroup.class })
	private String user_email;

	@Size(min = 4, max = 20, groups = { LoginGroup.class, RegisterGroup.class, ModifyGroup.class })
	@Pattern(regexp = "[a-zA-Z0-9]*", groups = { LoginGroup.class, RegisterGroup.class, ModifyGroup.class })
	private String user_pass;

	private String user_role;
	private int user_point;

	@NotBlank
	private String user_age;
	private String user_gender;
	private String user_statustext;
	private String user_img;
	private String user_zodiac;

//	----------------------------------------------------------- ↓↓ DB 테이블에 없는 변수들 (추가한 변수들) ↓↓

	// 내 필요에 의해 넣은 DB에 없는 변수
	@Size(min = 4, max = 20, groups = { ModifyGroup.class, RegisterGroup.class })
	@Pattern(regexp = "[a-zA-Z0-9]*", groups = { ModifyGroup.class, RegisterGroup.class })
	private String user_pass2;

	// 회원가입 전 중복확인 판별
	private boolean userNickNameExist;
	private boolean userEmailExist;

	// 로그인 상태
	private boolean userLogin;

	// 생성자
	public UserBean() {
		this.userNickNameExist = false; // 중복확인 판별 초기값 false
		this.userEmailExist = false; // 중복확인 판별 초기값 false
		this.userLogin = false; // 로그인 판별 초기값 false
	}

	// -----------------------------------------------------
	public int getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}

	public String getUser_nickname() {
		return user_nickname;
	}

	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_pass() {
		return user_pass;
	}

	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}

	public String getUser_role() {
		return user_role;
	}

	public void setUser_role(String user_role) {
		this.user_role = user_role;
	}

	public int getUser_point() {
		return user_point;
	}

	public void setUser_point(int user_point) {
		this.user_point = user_point;
	}

	public String getUser_age() {
		return user_age;
	}

	public void setUser_age(String user_age) {
		this.user_age = user_age;
	}

	public String getUser_gender() {
		return user_gender;
	}

	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}

	public String getUser_statustext() {
		return user_statustext;
	}

	public void setUser_statustext(String user_statustext) {
		this.user_statustext = user_statustext;
	}

	public String getUser_pass2() {
		return user_pass2;
	}

	public void setUser_pass2(String user_pass2) {
		this.user_pass2 = user_pass2;
	}

	public boolean isUserNickNameExist() {
		return userNickNameExist;
	}

	public void setUserNickNameExist(boolean userNickNameExist) {
		this.userNickNameExist = userNickNameExist;
	}

	public boolean isUserEmailExist() {
		return userEmailExist;
	}

	public void setUserEmailExist(boolean userEmailExist) {
		this.userEmailExist = userEmailExist;
	}

	public boolean isUserLogin() {
		return userLogin;
	}

	public void setUserLogin(boolean userLogin) {
		this.userLogin = userLogin;
	}

	public String getUser_img() {
		return user_img;
	}

	public void setUser_img(String user_img) {
		this.user_img = user_img;
	}
	
	public String getUser_zodiac() {
		return user_zodiac;
	}

	public void setUser_zodiac(String user_zodiac) {
		
        this.user_zodiac=user_zodiac;
	}
	
}
