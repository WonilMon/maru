package kr.co.softsoldesk.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import kr.co.softsoldesk.beans.UserBean;

public class UserValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {

		return UserBean.class.isAssignableFrom(clazz);
//		이걸로 받아서
//		위배되면 밑의 validate로 보낼거임 
	}

	@Override
	public void validate(Object target, Errors errors) {
//		문제 1. valid 어노테이션이 붙은이상 joinUserBean, tempLoginUserBean이 target으로 다 들어와버림

//		obj타입으로 target에 넣어 받아온 데이터들을 UserBean으로 다운캐스팅
		UserBean userBean = (UserBean) target;

		System.out.println(userBean.getUser_nickname());
		System.out.println(userBean.getUser_email());
		System.out.println(userBean.getUser_pass());
		System.out.println(userBean.getUser_pass2());
		System.out.println(userBean.getUser_age());
		System.out.println(userBean.getUser_gender());
		
		
//		객체명 확인 (joinUserBean, tempLoginUserBean)
		String beanName = errors.getObjectName();
		System.out.println(beanName);

		if (beanName.equals("addUserBean") || beanName.equals("modifyUser")) {

			if (userBean.getUser_pass().equals(userBean.getUser_pass2()) == false) {
				errors.rejectValue("user_pass", "NotEquals");
				errors.rejectValue("user_pass2", "NotEquals");
			}

			if (userBean.isUserNickNameExist() == false) {
				errors.rejectValue("user_nickname", "DontCheckUserNickNameExist");
			}

			if (userBean.isUserEmailExist() == false && beanName.equals("addUserBean")) {
				errors.rejectValue("user_email", "DontCheckUserEmailExist");
			}

			if (userBean.getUser_gender().equals("선택")) {
				errors.rejectValue("user_gender", "NotBlankGender");
			}

		}

	}

}
