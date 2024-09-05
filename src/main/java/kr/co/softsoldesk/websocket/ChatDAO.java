package kr.co.softsoldesk.websocket;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ChatDAO {

	@Autowired
	private ChatMapper chatMapper;

	// 메시지 저장
	public void saveMessage(MessagesBean messages) {
		chatMapper.saveMessage(messages);
	}

	// 최신 메시지 하나
	public int getMessages_idx() {
		return chatMapper.getMessages_idx();
	}

	// 최신 메시지 하나의 idx
	public int getRoom_idx(int messages_idx) {
		return chatMapper.getRoom_idx(messages_idx);
	}

	// 메시지 저장 (un_read)
	public void saveMessage_un_read(int messages_idx, int room_idx) {
		try {
			chatMapper.saveMessage_un_read(messages_idx, room_idx);
		} catch (Exception e) {
			e.printStackTrace();
			// 로그 또는 기타 예외 처리
		}
	}

	// 특정 채팅 방 들어갈 떄 un_read 삭제
	public void deleteUnRead(int room_idx) {
		chatMapper.deleteUnRead(room_idx);
	}

	// un_read 목록
	public List<UnReadBean> getUnReadList() {
		return chatMapper.getUnReadList();
	}

	// 채팅 방 목록
	public List<MessagesBean> getRoomList(int sender_idx) {
		return chatMapper.getRoomList(sender_idx);
	}

	// 채팅 방 목록2
	public List<MessagesBean> getRoomList2(int receiver_idx) {
		return chatMapper.getRoomList2(receiver_idx);
	}

	// 특정 채팅 방
	public RoomBean getRoom(int sender_idx, int receiver_idx) {
		return chatMapper.getRoom(sender_idx, receiver_idx);
	}

	// 특정 채팅 방 생성
	public void createRoom(int sender_idx, int receiver_idx) {
		chatMapper.createRoom(sender_idx, receiver_idx);
	}

	// 특정 채팅 방 메시지
	public List<MessagesBean> getMessages(int sender_idx, int receiver_idx) {
		return chatMapper.getMessages(sender_idx, receiver_idx);
	}

	// 로그인 유저 알림 메시지
	public List<MessagesBean> getMessagesAlert(int receiver_idx) {
		return chatMapper.getMessagesAlert(receiver_idx);
	}
}
