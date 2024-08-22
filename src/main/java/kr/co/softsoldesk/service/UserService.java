package kr.co.softsoldesk.service;

import java.time.LocalDate;
import java.time.Month;
import java.time.MonthDay;
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
		
		// 별자리 계산
        String zodiacSign = getZodiacSign(birthDate);
        

		addUserBean.setUser_role("사용자");
		addUserBean.setUser_statustext("기본 상태메시지");
		addUserBean.setUser_point(500);
		addUserBean.setUser_age(String.valueOf(age.getYears()));
		addUserBean.setUser_zodiac(zodiacSign);

		userDao.addUser(addUserBean);
	}
	
//별자리
	public static String getZodiacSign(LocalDate date) {
        MonthDay birthMonthDay = MonthDay.from(date);
        
        if (birthMonthDay.isAfter(MonthDay.of(Month.MARCH, 20)) && birthMonthDay.isBefore(MonthDay.of(Month.APRIL, 20))) {
            return "양자리";
        } else if (birthMonthDay.isAfter(MonthDay.of(Month.APRIL, 19)) && birthMonthDay.isBefore(MonthDay.of(Month.MAY, 21))) {
            return "황소자리";
        } else if (birthMonthDay.isAfter(MonthDay.of(Month.MAY, 20)) && birthMonthDay.isBefore(MonthDay.of(Month.JUNE, 21))) {
            return "쌍둥이자리";
        } else if (birthMonthDay.isAfter(MonthDay.of(Month.JUNE, 20)) && birthMonthDay.isBefore(MonthDay.of(Month.JULY, 23))) {
            return "게자리";
        } else if (birthMonthDay.isAfter(MonthDay.of(Month.JULY, 22)) && birthMonthDay.isBefore(MonthDay.of(Month.AUGUST, 23))) {
            return "사자자리";
        } else if (birthMonthDay.isAfter(MonthDay.of(Month.AUGUST, 22)) && birthMonthDay.isBefore(MonthDay.of(Month.SEPTEMBER, 23))) {
            return "처녀자리";
        } else if (birthMonthDay.isAfter(MonthDay.of(Month.SEPTEMBER, 22)) && birthMonthDay.isBefore(MonthDay.of(Month.OCTOBER, 23))) {
            return "천칭자리";
        } else if (birthMonthDay.isAfter(MonthDay.of(Month.OCTOBER, 22)) && birthMonthDay.isBefore(MonthDay.of(Month.NOVEMBER, 22))) {
            return "전갈자리";
        } else if (birthMonthDay.isAfter(MonthDay.of(Month.NOVEMBER, 21)) && birthMonthDay.isBefore(MonthDay.of(Month.DECEMBER, 22))) {
            return "사수자리";
        } else if (birthMonthDay.isAfter(MonthDay.of(Month.DECEMBER, 21)) || birthMonthDay.isBefore(MonthDay.of(Month.JANUARY, 20))) {
            return "염소자리";
        } else if (birthMonthDay.isAfter(MonthDay.of(Month.JANUARY, 19)) && birthMonthDay.isBefore(MonthDay.of(Month.FEBRUARY, 19))) {
            return "물병자리";
        } else if (birthMonthDay.isAfter(MonthDay.of(Month.FEBRUARY, 18)) && birthMonthDay.isBefore(MonthDay.of(Month.MARCH, 21))) {
            return "물고기자리";
        } else {
            return "Unknown";
        }
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
			loginUserBean.setUser_img(tempLoginUserBean2.getUser_img());
			loginUserBean.setUser_zodiac(tempLoginUserBean2.getUser_zodiac());
			loginUserBean.setUserLogin(true); // 판별을 true로 바꾸기
		}
	}

//	로그인 API
	public void getLoginUserAPI(String user_email) {

//		있으면 해당 유저의 이름,id,pw가 들어있을 것이고, 없으면 깡통이겠죠
		UserBean tempLoginUserBean2 = userDao.getLoginUserAPI(user_email);

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

			System.out.println("google" + tempLoginUserBean2.getUser_idx());
			System.out.println("google" + tempLoginUserBean2.getUser_email());
			System.out.println("google" + tempLoginUserBean2.getUser_nickname());
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

	public UserBean getModifyUserInfo(int user_idx) {

		return userDao.getModifyUserBeanInfo(user_idx);
	}

//	
//	modify update
	public void modifyUserInfo(UserBean modifyUserBean) {

		modifyUserBean.setUser_idx(loginUserBean.getUser_idx());


//		System.out.println("1:" +modifyUserBean.getUser_idx());
//		System.out.println("2:" +modifyUserBean.getUser_email());
//		System.out.println("3:" +modifyUserBean.getUser_nickname());
//		System.out.println("4:" +modifyUserBean.getUser_pass());
//		System.out.println("5:" +modifyUserBean.getUser_pass2());

		userDao.modifyUserInfo(modifyUserBean);

	}

	public void modifyUser(UserBean modifyUser) {
		userDao.modifyUser(modifyUser);
	}

	// 회원삭제
	public void deleteUser(int user_idx) {
		userDao.deleteUser(user_idx);
	}

	// 상태메시지 변경
	public void updateStatusText(String user_statustext, int user_idx) {
		userDao.updateStatusText(user_statustext, user_idx);
	}
	
	//프로필 이미지 업로드
	public void updateImgFile(String user_img, int user_idx) {
		userDao.updateImgFile(user_img, user_idx);
	}
	
	//프로필 이미지 가져오기
	public String getImgFile(int user_idx) {
		return userDao.getImgFile(user_idx);
	}
}
