package kr.co.softsoldesk.websocket;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.softsoldesk.beans.UserBean;

@Controller
public class ChatController {

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	@Autowired
	private ChatService chatService;

	@Autowired
	private SimpMessagingTemplate messagingTemplate;

	// -----------------------------------------

	@MessageMapping("/chat")
	public void send(MessagesBean messages) {

		System.out.println("controller");
		System.out.println("메시지 방번호 : " + messages.getRoom_idx());
		System.out.println("메시지 보내는 사람 : " + messages.getSender_idx());
		System.out.println("메시지 받는사람 : " + messages.getReceiver_idx());
		System.out.println("메시지 정보 : " + messages.getMessages_text());
		System.out.println("메시지 시간 : " + messages.getMessages_date());

		chatService.saveMessage(messages);

		int getMessages_idx = chatService.getMessages_idx();
		int getRoom_idx = chatService.getRoom_idx(getMessages_idx);

		chatService.saveMessage_un_read(getMessages_idx, getRoom_idx);

		messagingTemplate.convertAndSend("/topic/messages/" + messages.getRoom_idx(), messages);
	}

	// 채팅 방 목록
	@GetMapping("/chat/roomList")
	public String roomList(@RequestParam("sender_idx") int sender_idx, Model model) {

		int receiver_idx = sender_idx;
		
		List<MessagesBean> rooms = chatService.getRoomList(sender_idx);
		List<MessagesBean> rooms2 = chatService.getRoomList2(receiver_idx);
		List<UnReadBean> unReads = chatService.getUnReadList();

		model.addAttribute("rooms", rooms);
		model.addAttribute("rooms2", rooms2);
//		model.addAttribute("unReads", unReads);
		model.addAttribute("sender_idx", loginUserBean.getUser_idx());

		return "chat/roomList";

	}

	// 특정 채팅 방 이동
	@GetMapping("/chat/room")
	public String chatRoom(@RequestParam("sender_idx") int sender_idx, @RequestParam("receiver_idx") int receiver_idx,
			Model model) {

		RoomBean test_room = chatService.getRoom(sender_idx, receiver_idx);

		if (test_room == null) {
			chatService.createRoom(sender_idx, receiver_idx);
		}

		RoomBean room = chatService.getRoom(sender_idx, receiver_idx);
		RoomBean room_reverse = chatService.getRoom(receiver_idx, sender_idx);

		if(room_reverse!=null) {
			chatService.deleteUnRead(room_reverse.getRoom_idx());	
		}

		model.addAttribute("room", room);
		model.addAttribute("receiver_idx_real", room.getReceiver_idx());
		model.addAttribute("messages", chatService.getMessages(sender_idx, receiver_idx));
		model.addAttribute("loginUserBean", loginUserBean);
		
		return "chat/room";
	}

	// 안읽은 메시지 알림
	@GetMapping("/notifications")
	@ResponseBody
	public List<MessagesBean> getMessagesAlert(@RequestParam("receiver_idx") int receiver_idx) {
		return chatService.getMessagesAlert(receiver_idx);
	}

}
