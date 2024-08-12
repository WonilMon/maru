package kr.co.softsoldesk.service;

import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.softsoldesk.DAO.UserDAO;
import kr.co.softsoldesk.beans.UserBean;

@Service
public class UserService {

	@Resource(name = "loginUserBean") // RootAppContext에 올려놨던거 가져오기 (lazy를 줬기떄문에 이시점에서 생성)
	private UserBean loginUserBean;

	@Autowired
	private UserDAO userDao;

//	--------------------------------------------------------

//	회원가입
	public void addUser(UserBean addUserBean) {

		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate birthDate = LocalDate.parse(addUserBean.getUser_age(), formatter);
		LocalDate currentDate = LocalDate.now();
		Period age = Period.between(birthDate, currentDate);

		addUserBean.setUser_age(String.valueOf(age.getYears()));

		userDao.addUser(addUserBean);
	}

//	중복확인 NickName
	public boolean checkUserNickNameExist(String user_nickname) {
		String checkNickName = userDao.checkUserNickNameExist(user_nickname);
		if (checkNickName == null) {
			return true;
		} else {
			return false;
		}
	}

//	중복확인 Email
	public boolean checkUserEmailExist(String user_email) {
		String checkEmail = userDao.checkUserEmailExist(user_email);
		if (checkEmail == null) {
			return true;
		} else {
			return false;
		}
	}

//	로그인
	public void getLoginUser(UserBean tempLoginUserBean) {

//		있으면 해당 유저의 이름,id,pw가 들어있을 것이고, 없으면 깡통이겠죠
		UserBean tempLoginUserBean2 = userDao.getLoginUser(tempLoginUserBean);

		if (tempLoginUserBean2 != null) {
			loginUserBean.setUser_idx(tempLoginUserBean2.getUser_idx());
			loginUserBean.setUser_nickname(tempLoginUserBean2.getUser_nickname());
			loginUserBean.setUser_age(tempLoginUserBean2.getUser_age());
			loginUserBean.setUser_gender(tempLoginUserBean2.getUser_gender());
			loginUserBean.setUser_pass(tempLoginUserBean2.getUser_pass());
			loginUserBean.setUser_point(tempLoginUserBean2.getUser_point());
			loginUserBean.setUser_role(tempLoginUserBean2.getUser_role());
			loginUserBean.setUser_statustext(tempLoginUserBean2.getUser_statustext());
			loginUserBean.setUserLogin(true); // 판별을 true로 바꾸기
		}
	}

////	modify
//	public void getModifyUserInfo(UserBean modifyUserBean) {
//		
//		UserBean tempModifyUserBean = userDao.getModifyUserBeanInfo(loginUserBean.getUser_idx());
////		loginUserBean.getUser_idx() : 싱글톤이기에 아까 넣은 loginUserBean의 idx를 이용한다
//
//		modifyUserBean.setUser_idx(tempModifyUserBean.getUser_idx());
//		modifyUserBean.setUser_id(tempModifyUserBean.getUser_id());
//		modifyUserBean.setUser_name(tempModifyUserBean.getUser_name());
//
//	}
//	
////	modify update
//	public void modifyUserInfo(UserBean modifyUserBean) {
//		
//		modifyUserBean.setUser_idx(loginUserBean.getUser_idx());
//		
//		System.out.println("1:" +modifyUserBean.getUser_idx());
//		System.out.println("2:" +modifyUserBean.getUser_id());
//		System.out.println("3:" +modifyUserBean.getUser_name());
//		System.out.println("4:" +modifyUserBean.getUser_pw());
//		System.out.println("5:" +modifyUserBean.getUser_pw2());
//		
//		userDao.modifyUserInfo(modifyUserBean);
//		
//	}

}