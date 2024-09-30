package kr.co.softsoldesk.DAO;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.ContentBean;
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
	
	// 로그인(API)
	public String getPass(String user_email) {
		return userMapper.getPass(user_email);
	}

	// 정보수정
	public UserBean getModifyUserBeanInfo(int user_idx) {
		return userMapper.getModifyUserInfo(user_idx);
	}
	
	// 내가 쓴 글 
	public List<ContentBean> getMyList(int user_idx, RowBounds rowBounds) {
		return userMapper.getMyList(user_idx, rowBounds);
	}
	
	// 내가 쓴 글 - 페이지네이션
	public int getMyListCnt(int user_idx) {
		return userMapper.getMyListCnt(user_idx);
	}

	// 정보수정
	public void modifyUserInfo(UserBean modifyUserBean) {
		userMapper.modifyUser(modifyUserBean);
	}

	// 정보수정
	public void modifyUser(UserBean modifyUser) {
		userMapper.modifyUser(modifyUser);
	}

	// 상태메시지 변경
	public void updateStatusText(String user_statustext, int user_idx) {
		userMapper.updateStatusText(user_statustext, user_idx);
	}
	
	// 모달 유저 정보
	public UserBean getUserModal(String user_nickname) {
		return userMapper.getUserModal(user_nickname);
	}

	// 회원삭제
	public void deleteUser(int user_idx) {
		userMapper.deleteUser(user_idx);
	}

	// 패스워드 업데이트
	public void updatePassword(String user_email, String newPassword) {
		userMapper.updatePassword(user_email, newPassword);
	}

	// 프로필 이미지 업로드
	public void updateImgFile(String user_img, int user_idx) {
		userMapper.updateImgFile(user_img, user_idx);
	}

	// 프로필 이미지 가져오기
	public String getImgFile(int user_idx) {
		return userMapper.getImgFile(user_idx);
	}
}
