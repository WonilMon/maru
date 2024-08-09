package kr.co.softsoldesk.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import kr.co.softsoldesk.beans.UserBean;

public class UserValidator implements Validator{

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
		UserBean userBean = (UserBean)target;
		
//		객체명 확인 (joinUserBean, tempLoginUserBean)
		String beanName = errors.getObjectName();
		System.out.println(beanName);
		
		if(beanName.equals("joinUserBean") || beanName.equals("modifyUserBean")) {
		
			if(userBean.getUser_pw().equals(userBean.getUser_pw2())==false) {
				errors.rejectValue("user_pw", "NotEquals");
				errors.rejectValue("user_pw2", "NotEquals");
			}
			
			if(userBean.isUserIdExist()==false && beanName.equals("joinUserBean")) {				
				errors.rejectValue("user_id", "DontCheckUserIdExist");
			}
			
		}
	
	}

}
