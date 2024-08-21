package kr.co.softsoldesk.service;

import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.softsoldesk.DAO.UserDAO;
import kr.co.softsoldesk.beans.IconBean;
import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.mapper.IconMapper;
import kr.co.softsoldesk.mapper.UserMapper;

@Service
public class UserService {

	@Resource(name = "loginUserBean") // RootAppContext에 올려놨던거 가져오기 (lazy를 줬기떄문에 이시점에서 생성)
	private UserBean loginUserBean;

	@Autowired
	private UserDAO userDao;
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private IconMapper iconMapper;

//	--------------------------------------------------------

//	회원가입
	public void addUser(UserBean addUserBean) {

		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate birthDate = LocalDate.parse(addUserBean.getUser_age(), formatter);
		LocalDate currentDate = LocalDate.now();
		Period age = Period.between(birthDate, currentDate);

		addUserBean.setUser_role("사용자");
		addUserBean.setUser_statustext("기본 상태메시지");
		addUserBean.setUser_point(500);
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

	  // 기존 상점 관련 메서드들
 // 기존 상점 관련 메서드들

	public int getUserPoints(int user_idx) {
	    UserBean user = getUserById(user_idx);
	    return user.getUser_point();
	}
	

    public UserBean getUserById(int user_idx) {
        return userMapper.getUserById(user_idx);
    }

    public void updateUserPoints(UserBean user) {
        userMapper.updateUser(user);
    }

    @Transactional
    public boolean buyIcon(int user_idx, int icon_idx) {
        // 사용자가 이미 아이콘을 소유하고 있는지 확인
        if (iconMapper.userOwnsIcon(user_idx, icon_idx) > 0) {
            return false; // 사용자가 중복된 아이콘을 소유하지 못하게 함
        }

        // 사용자와 아이콘 정보를 조회
        UserBean user = getUserById(user_idx);
        IconBean icon = iconMapper.getIconById(icon_idx);

        // 사용자가 아이콘을 구매할 충분한 포인트를 가지고 있는지 확인
        if (user.getUser_point() >= icon.getIcon_price()) {
            // 사용자의 포인트에서 아이콘 가격을 차감
            user.setUser_point(user.getUser_point() - icon.getIcon_price());
            // 데이터베이스에서 사용자의 포인트를 업데이트
            updateUserPoints(user);
            // 사용자의 아이콘 컬렉션에 아이콘을 추가
            iconMapper.insertUserIcon(user_idx, icon_idx);
            return true;
        } else {
            return false; // 사용자가 충분한 포인트를 가지고 있지 않음
        }
    }
}