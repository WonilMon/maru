package kr.co.softsoldesk.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.groups.LoginGroup;
import kr.co.softsoldesk.groups.RegisterGroup;

@Component
public class UserValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return UserBean.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		UserBean userBean = (UserBean) target;

		// 유효성 검사 대상 객체의 이름에 따라 다른 검증을 수행
		if (errors.getObjectName().equals("tempLoginUserBean")) {
			validateLogin(userBean, errors);
		} else if (errors.getObjectName().equals("addUserBean")) {
			validateRegistration(userBean, errors);
		} else if (errors.getObjectName().equals("modifyUser")) {
			validateModification(userBean, errors);
		}
	}

	// 로그인에 대한 검증
	private void validateLogin(UserBean userBean, Errors errors) {
		if (userBean.getUser_email() == null || userBean.getUser_email().isEmpty()) {
			errors.rejectValue("user_email", "NotEmpty.userBean.user_email");
		}
		if (userBean.getUser_pass() == null || userBean.getUser_pass().isEmpty()) {
			errors.rejectValue("user_pass", "NotEmpty.userBean.user_pass");
		}
	}

	// 회원가입에 대한 검증
	private void validateRegistration(UserBean userBean, Errors errors) {
		if (userBean.getUser_pass() == null || !userBean.getUser_pass().equals(userBean.getUser_pass2())) {
			errors.rejectValue("user_pass", "NotEquals");
			errors.rejectValue("user_pass2", "NotEquals");
		}
		if (!userBean.isUserNickNameExist()) {
			errors.rejectValue("user_nickname", "DontCheckUserNickNameExist");
		}
		if (!userBean.isUserEmailExist()) {
			errors.rejectValue("user_email", "DontCheckUserEmailExist");
		}
		if ("선택".equals(userBean.getUser_gender())) {
			errors.rejectValue("user_gender", "NotBlankGender");
		}
	}

	// 정보 수정에 대한 검증
	private void validateModification(UserBean userBean, Errors errors) {
		if (userBean.getUser_pass() == null || !userBean.getUser_pass().equals(userBean.getUser_pass2())) {
			errors.rejectValue("user_pass", "NotEquals");
			errors.rejectValue("user_pass2", "NotEquals");
		}
		if (!userBean.isUserNickNameExist()) {
			errors.rejectValue("user_nickname", "DontCheckUserNickNameExist");
		}
	}
}
