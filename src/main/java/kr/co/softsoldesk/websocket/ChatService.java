package kr.co.softsoldesk.websocket;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ChatService {

	@Autowired
	private ChatDAO chatDAO;

	// 메시지 저장
	public void saveMessage(MessagesBean messages) {
		chatDAO.saveMessage(messages);
	}

	// 최신 메시지 하나
	public int getMessages_idx() {
		return chatDAO.getMessages_idx();
	}

	// 최신 메시지 하나의 idx
	public int getRoom_idx(int messages_idx) {
		return chatDAO.getRoom_idx(messages_idx);
	}

	// 메시지 저장 (un_read)
	public void saveMessage_un_read(int messages_idx, int room_idx) {
		chatDAO.saveMessage_un_read(messages_idx, room_idx);
	}

	// 특정 채팅 방 들어갈 떄 un_read 삭제
	public void deleteUnRead(int room_idx) {
		chatDAO.deleteUnRead(room_idx);
	}

	// un_read 목록
	public List<UnReadBean> getUnReadList() {
		return chatDAO.getUnReadList();
	}

	// 채팅 방 목록
	public List<MessagesBean> getRoomList(int sender_idx) {
		return chatDAO.getRoomList(sender_idx);
	}

	// 채팅 방 목록2
	public List<MessagesBean> getRoomList2(int receiver_idx) {
		return chatDAO.getRoomList2(receiver_idx);
	}

	// 특정 채팅 방
	public RoomBean getRoom(int sender_idx, int receiver_idx) {
		return chatDAO.getRoom(sender_idx, receiver_idx);
	}

	// 특정 채팅 방 생성
	public void createRoom(int sender_idx, int receiver_idx) {
		chatDAO.createRoom(sender_idx, receiver_idx);
	}

	// 특정 채팅 방의 메시지 기록 가져오기
	public List<MessagesBean> getMessages(int sender_idx, int receiver_idx) {
		return chatDAO.getMessages(sender_idx, receiver_idx);
	}

	// 로그인 유저 알림 메시지
	public List<MessagesBean> getMessagesAlert(int receiver_idx) {
		return chatDAO.getMessagesAlert(receiver_idx);
	}

}
