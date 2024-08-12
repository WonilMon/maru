package kr.co.softsoldesk.DAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.UserBean;
import kr.co.softsoldesk.mapper.UserMapper;

@Repository
public class UserDAO {

	@Autowired
	private UserMapper userMapper;

	// 회원가입
	public void addUser(UserBean addUserBean) {
		userMapper.addUser(addUserBean);
	}

	// 중복확인 nickname
 	public String checkUserNickNameExist(String user_nickname) {
		return userMapper.checkUserNickNameExist(user_nickname);
	}
	// 중복확인 email
	public String checkUserEmailExist(String user_email) {
		return userMapper.checkUserEmailExist(user_email);
	}

	// 로그인
	public UserBean getLoginUser(UserBean tempLoginUserBean) {
		return userMapper.getLoginUser(tempLoginUserBean);
	}

//	// 정보수정
//	public UserBean getModifyUserBeanInfo(int user_idx) {
//		return userMapper.getModifyUserInfo(user_idx);
//	}
//
//	// 정보수정
//	public void modifyUserInfo(UserBean modifyUserBean) {
//		userMapper.modifyUserInfo(modifyUserBean);
//	}

}
