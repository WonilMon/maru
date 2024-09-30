package kr.co.softsoldesk.websocket;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import kr.co.softsoldesk.beans.ChattingBean;
import kr.co.softsoldesk.beans.ContentBean;

public interface ChatMapper {

	// 메시지 삽입
	@Insert("INSERT INTO messages (messages_idx, room_idx, sender_idx, receiver_idx, messages_text, messages_date) "
			+ "VALUES (messages_seq.nextval, #{room_idx}, #{sender_idx}, #{receiver_idx}, #{messages_text}, sysdate)")
	void saveMessage(MessagesBean messages);

	// 최신 메시지 하나
	@Select("select max(messages_idx) from messages")
	int getMessages_idx();
	
	// 최신 메시지 하나의 idx
	@Select("select room_idx from messages where messages_idx = #{messages_idx}")
	int getRoom_idx(int messages_idx);
	
	// 메시지 삽입(un_read)
	@Insert("INSERT INTO un_read (un_read_idx, un_read_messages_idx, un_read_room_idx) VALUES (un_read_seq.nextval, #{messages_idx}, #{room_idx})")
	void saveMessage_un_read(@Param("messages_idx")int messages_idx, @Param("room_idx")int room_idx);

	// 메시지 전송할 방
	@Select("SELECT CASE WHEN COUNT(*) > 0 THEN MAX(room_idx) ELSE 0 END AS room_idx FROM room WHERE sender_idx = #{receiver_idx} AND receiver_idx = #{sender_idx}")
	int getReceiveRoomIdx(@Param("receiver_idx")int receiver_idx, @Param("sender_idx") int sender_idx);
	
	// 채팅 중인지 확인
	@Select("select * from chatting where user_idx = #{user_idx} and room_idx = #{room_idx}")
	ChattingBean getChattingLog(@Param("user_idx")int user_idx, @Param("room_idx") int room_idx);
	
	// 특정 채팅 방 들어갈 떄 un_read 삭제
	@Delete("delete un_read where un_read_room_idx = #{room_idx}")
	void deleteUnRead(@Param("room_idx")int room_idx);
	
	// 채팅 중
	@Insert("insert into chatting (user_idx, room_idx) values (#{user_idx}, #{room_idx})")
	void chattingOn(@Param("user_idx")int user_idx, @Param("room_idx")int room_idx);

	// 채팅 끗
	@Delete("delete chatting where user_idx = #{user_idx}")
	void chattingOff(@Param("user_idx")int user_idx);
	
	// un_read 목록
	@Select("SELECT un.un_read_room_idx, m.receiver_idx as receiver_idx, m.messages_text as messgaes_text, m.messages_date as messages_date "
			+ "FROM messages m "
			+ "JOIN un_read un ON m.messages_idx = un.un_read_messages_idx "
			+ "WHERE (m.room_idx, m.messages_date) IN ( "
			+ "SELECT room_idx, MIN(messages_date) "
			+ "FROM messages "
			+ "GROUP BY room_idx)")
	List<UnReadBean> getUnReadList();
	
	// 채팅 방 목록
	@Select("WITH RankedMessages AS ("
			+ "SELECT u1.user_nickname AS sender_nickname, u2.user_nickname AS receiver_nickname, u2.user_img AS user_img, r.room_idx, m.receiver_idx, m.messages_idx, m.messages_text, m.messages_date, "
			+ "ROW_NUMBER() OVER (PARTITION BY r.room_idx ORDER BY m.messages_date DESC) AS rn "
			+ "FROM messages m "
			+ "JOIN users u1 ON m.sender_idx = u1.user_idx "
			+ "JOIN users u2 ON m.receiver_idx = u2.user_idx "
			+ "JOIN room r ON m.room_idx = r.room_idx "
			+ "WHERE r.sender_idx = #{sender_idx}) "
			+ "SELECT sender_nickname, receiver_nickname, user_img, room_idx, receiver_idx, messages_idx, messages_text, messages_date "
			+ "FROM RankedMessages "
			+ "WHERE rn = 1 "
			+ "ORDER BY messages_date desc")
	List<MessagesBean> getRoomList(@Param("sender_idx") int sender_idx);
	
	// 채팅 방 목록2
	@Select("WITH RankedMessages AS ("
			+ "SELECT u1.user_nickname AS sender_nickname, u2.user_nickname AS receiver_nickname, u2.user_img AS user_img, r.room_idx, m.receiver_idx, m.messages_idx, m.messages_text, m.messages_date, "
			+ "ROW_NUMBER() OVER (PARTITION BY r.room_idx ORDER BY m.messages_date DESC) AS rn "
			+ "FROM messages m "
			+ "JOIN users u1 ON m.sender_idx = u1.user_idx "
			+ "JOIN users u2 ON m.receiver_idx = u2.user_idx "
			+ "JOIN room r ON m.room_idx = r.room_idx "
			+ "WHERE r.receiver_idx = #{receiver_idx}) "
			+ "SELECT sender_nickname, receiver_nickname, user_img, room_idx, receiver_idx, messages_idx, messages_text, messages_date "
			+ "FROM RankedMessages "
			+ "WHERE rn = 1 "
			+ "ORDER BY messages_date desc")
	List<MessagesBean> getRoomList2(int receiver_idx);

	// 특정 채팅 방
	@Select("SELECT r.room_idx, r.sender_idx, r.receiver_idx, u1.user_nickname AS sender_nickname, u2.user_nickname AS receiver_nickname, u2.user_img AS receiver_img　"
			+ "FROM room r "
			+ "join users u1 on u1.user_idx = r.sender_idx "
			+ "join users u2 on u2.user_idx = r.receiver_idx "
			+ "WHERE r.sender_idx = #{sender_idx} and r.receiver_idx = #{receiver_idx}"
			+ "AND ROWNUM = 1")
	RoomBean getRoom(@Param("sender_idx") int sender_idx, @Param("receiver_idx") int receiver_idx);

	// 새로운 채팅 방 생성
	@Insert("INSERT INTO room (room_idx, sender_idx, receiver_idx) VALUES (room_seq.nextval, #{sender_idx}, #{receiver_idx})")
	void createRoom(@Param("sender_idx") int sender_idx, @Param("receiver_idx") int receiver_idx);

	// 특정 채팅 방 메시지
	@Select("SELECT m.messages_idx, m.room_idx, m.sender_idx, m.receiver_idx, m.messages_text, m.messages_date, u.user_nickname as sender_nickname "
			+ "FROM messages m "
			+ "join users u on m.sender_idx = u.user_idx "
			+ "WHERE (sender_idx = #{sender_idx} and receiver_idx = #{receiver_idx}) "
			+ "or (sender_idx = #{receiver_idx} and receiver_idx = #{sender_idx}) "
			+ "order by messages_date asc")
	List<MessagesBean> getMessages(@Param("sender_idx") int sender_idx, @Param("receiver_idx") int receiver_idx);
	
	// 나눔글 리스트
	@Select("select content_idx, content_subject, content_date "
			+ "from content "
			+ "where user_idx = #{user_idx} "
			+ "and board_info_idx = 4")
	List<ContentBean> getShareList(int user_idx);
	
	// 나눔글의 사진 한 장만 가져오기
	@Select("select file_name from content_file where content_idx = #{content_idx} and rownum =1")
	String getFile(int content_idx);
	
	// 로그인 유저 알림 메시지
	@Select("SELECT m.messages_text, m.messages_date, u.user_idx as user_idx, u.user_nickname as user_nickname, u.user_img as user_img "
			+ "FROM messages m " 
			+ "JOIN un_read un ON un.un_read_messages_idx = m.messages_idx "
			+ "JOIN users u ON u.user_idx = m.sender_idx "
			+ "WHERE m.receiver_idx = #{receiver_idx} " 
			+ "ORDER BY m.messages_date ASC")
	List<MessagesBean> getMessagesAlert(@Param("receiver_idx") int receiver_idx);

}
