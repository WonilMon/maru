package kr.co.softsoldesk.websocket;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.softsoldesk.beans.ChattingBean;
import kr.co.softsoldesk.beans.ContentBean;

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
	
	// 메시지 전송할 방
	public int getReceiveRoomIdx(int receiver_idx, int sender_idx) {
		return chatDAO.getReceiveRoomIdx(receiver_idx, sender_idx);
	}
	
	// 채팅 중인지 확인
	public boolean getChattingLog(int user_idx, int room_idx) {
		boolean pass = false;
		System.out.println("채팅중:" + chatDAO.getChattingLog(user_idx, room_idx));
		if(chatDAO.getChattingLog(user_idx, room_idx) != null) {
			pass = true;
		}
		return pass;
	}

	// 특정 채팅 방 들어갈 떄 un_read 삭제
	public void deleteUnRead(int room_idx) {
		chatDAO.deleteUnRead(room_idx);
	}

	// 채팅 중
	public void chattingOn(int user_idx, int room_idx) {
		chatDAO.chattingOn(user_idx, room_idx);
	}
	
	// 채팅 끗
	public void chattingOff(int user_idx) {
		chatDAO.chattingOff(user_idx);
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
	
	// 나눔글 리스트
	public List<ContentBean> getShareList(int user_idx) {
		
		List<ContentBean> list = chatDAO.getShareList(user_idx);
		List<ContentBean> list2 = new ArrayList<ContentBean>();
		
		for(ContentBean content : list) {
			content.setTest_file(chatDAO.getFile(content.getContent_idx()));
			list2.add(content);
		}
		
		return list2;
	}

	// 로그인 유저 알림 메시지
	public List<MessagesBean> getMessagesAlert(int receiver_idx) {
		return chatDAO.getMessagesAlert(receiver_idx);
	}

}
