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
	@Insert("insert into users values(user_seq.nextval, #{user_nickName}, #{user_email}, #{user_pw}, #{user_age}, #{user_gender})")
	void addUser(UserBean joinUserBean);
	
	// 회원정보 select
	@Select("select * from users where user_idx = #{user_idx}")
	UserBean getUser(int user_idx);

	// 유저 정보 수정 modify
	@Update("update users set user_nickName = #{user_nickName}, user_pw = #{user_pw} where user_idx = #{user_idx}")
	void modifyUser(UserBean modifyUserBean);
	
	// 회원 정보 삭제 delete
	@Delete("delete * from users where user_idx = #{user_idx}")
	void deleteUser(int user_idx);
	
}
