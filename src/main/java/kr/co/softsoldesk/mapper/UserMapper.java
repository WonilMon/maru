package kr.co.softsoldesk.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import kr.co.softsoldesk.beans.UserBean;

public interface UserMapper {

	// 1. 변수 하나로 끌고오고 싶다 -> int 등으로 숫자 하나만 넣어서 bean 끌고오기
	// 2. 여러 값을 담은 빈으로 끌고오고 싶다 -> bean으로 bean 끌고오기

	// 회원가입 insert
	@Insert("insert into users(user_idx, user_nickname, user_email, user_pass, user_age, user_gender, user_role, user_point, user_statustext, user_zodiac) values(users_seq.nextval, #{user_nickname}, #{user_email}, #{user_pass}, #{user_age}, #{user_gender}, #{user_role}, #{user_point}, #{user_statustext}, #{user_zodiac})")
	void addUser(UserBean addUserBean);

	// 회원정보 select
	@Select("select * from users where user_email = #{user_email} and user_pass = #{user_pass}")
	UserBean getLoginUser(UserBean tempLoginUserBean);

	// 회원정보 select (API)
	@Select("select * from users where user_email = #{user_email}")
	UserBean getLoginUserAPI(String user_email);

	@Select("select * from users where user_idx=${user_idx}")
	UserBean getModifyUserInfo(int user_idx);

	// 유저 정보 수정 modify
	@Update("update users set user_nickname = #{user_nickname}, user_pass = #{user_pass} where user_idx = #{user_idx}")
	void modifyUser(UserBean modifyUserBean);

	// 상태메시지 수정
	@Update("UPDATE users SET user_statustext = #{user_statustext} WHERE user_idx = #{user_idx}")
	void updateStatusText(@Param("user_statustext") String user_statustext, @Param("user_idx") int user_idx);

	// 회원 정보 삭제 delete
	@Delete("delete from users where user_idx = #{user_idx}")
	void deleteUser(int user_idx);

	// 중복체크 nickname
	@Select("select user_nickname from users where user_nickname = #{user_nickname}")
	String checkUserNickNameExist(String user_nickname);

	// 중복체크 email
	@Select("select user_email from users where user_email = #{user_email}")
	String checkUserEmailExist(String user_email);

	// 패스워드 리셋
	@Update("UPDATE users SET user_pass = #{newPassword} WHERE user_email = #{user_email}")
	void updatePassword(@Param("user_email") String user_email, @Param("newPassword") String newPassword);

	// 상점에서 user_idx 끌어오기
	@Select("SELECT * FROM users WHERE user_idx = #{user_idx}")
	UserBean getUserById(int user_idx);

	@Update("UPDATE users SET user_point = #{user_point} WHERE user_idx = #{user_idx}")
	void updateUser(UserBean user);

	// buyIcon 요청으로 user_icon 테이블에 넣기
	@Insert("INSERT INTO user_icon (user_icon_idx, user_idx, icon_idx) VALUES (user_icon_seq.NEXTVAL, #{user_idx}, #{icon_idx})")
	void insertUserIcon(@Param("user_idx") int user_idx, @Param("icon_idx") int icon_idx);

	// 프로필 이미지 업로드
	@Update("update users set user_img = #{user_img} where user_idx = #{user_idx}")
	void updateImgFile(@Param("user_img") String user_img, @Param("user_idx") int user_idx);

	// 프로필 이미지 가져오기
	@Select("select user_img from users where user_idx = #{user_idx}")
	String getImgFile(int user_idx);
   
	// 아이콘 경로 업데이트 메서드
    @Update("UPDATE users SET user_icon = #{iconPath} WHERE user_idx = #{userIdx}")
    void updateUserIcon(@Param("userIdx") int userIdx, @Param("iconPath") String iconPath);

	
    }
	

