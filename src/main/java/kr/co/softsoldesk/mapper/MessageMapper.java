package kr.co.softsoldesk.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface MessageMapper {

	// 메시지 전송
	@Insert("INSERT INTO message (message_idx, message_text, message_date, chat_idx, sender_idx) VALUES (message_seq.NEXTVAL, #{message_text}, SYSDATE, #{chat_idx}, #{sender_idx})")
	void sendMessage(String message_text, int chat_idx, int sender_idx);

	// 채팅방의 메시지 조회
	@Select("SELECT message_text, message_date, sender_idx FROM message WHERE chat_idx = #{chat_idx} ORDER BY message_date")
	List<Map<String, Object>> getMessagesByChat(int chat_idx);
}
