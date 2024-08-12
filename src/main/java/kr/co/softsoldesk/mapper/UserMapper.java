package kr.co.softsoldesk.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.softsoldesk.beans.UserBean;

public interface UserMapper {

	// 1. 변수 하나로 끌고오고 싶다 -> int 등으로 숫자 하나만 넣어서 bean 끌고오기
	// 2. 여러 값을 담은 빈으로 끌고오고 싶다 -> bean으로 bean 끌고오기

	// 회원가입 insert
	@Insert("insert into users(user_idx, user_nickname, user_email, user_pass, user_age, user_gender) values(users_seq.nextval, #{user_nickname}, #{user_email}, #{user_pass}, #{user_age}, #{user_gender})")
	void addUser(UserBean assUserBean);

	// 회원정보 select
	@Select("select * from users where user_email = #{user_email} and user_pass = #{user_pass}")
	UserBean getLoginUser(UserBean tempLoginUserBean);

	// 유저 정보 수정 modify
	@Update("update users set user_nickName = #{user_nickName}, user_pw = #{user_pass} where user_idx = #{user_idx}")
	void modifyUser(UserBean modifyUserBean);

	// 회원 정보 삭제 delete
	@Delete("delete * from users where user_idx = #{user_idx}")
	void deleteUser(int user_idx);

	// 중복체크 nickname
	@Select("select user_nickname from users where user_nickname = #{user_nickname}")
	String checkUserNickNameExist(String user_nickname);

	// 중복체크 email
	@Select("select user_email from users where user_email = #{user_email}")
	String checkUserEmailExist(String user_email);

}
