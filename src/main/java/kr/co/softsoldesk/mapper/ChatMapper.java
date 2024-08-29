package kr.co.softsoldesk.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface ChatMapper {

	// 채팅방 생성
	@Insert("INSERT INTO chat (chat_idx, chat_date, user_idx1, user_idx2) VALUES (chat_seq.NEXTVAL, SYSDATE, #{user_idx1}, #{user_idx2})")
	void createChat(int user_idx1, int user_idx2);

	// 유저들 간의 채팅방 조회
	@Select("SELECT chat_idx FROM chat WHERE (user_idx1 = #{user_idx1} AND user_idx2 = #{user_idx2}) OR (user_idx1 = #{user_idx2} AND user_idx2 = #{user_idx1})")
	Integer getChatByUsers(int user_idx1, int user_idx2);

	// 사용자와 관련된 채팅방 목록 조회
	@Select("SELECT chat_idx, user_idx1, user_idx2 FROM chat WHERE user_idx1 = #{userIdx} OR user_idx2 = #{userIdx}")
	List<Map<String, Object>> getChatLogsByUser(int userIdx);
}
