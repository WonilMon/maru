package kr.co.softsoldesk.websocket;

import java.io.Serializable;

public class MessagesBean {

	private int messages_idx;
	private int room_idx;
	private int sender_idx;
	private int receiver_idx;
	private String messages_text;
	private String messages_date;

	// -----------------------------------

	private int user_idx;
	private String sender_nickname;
	private String receiver_nickname;
	private String user_img;

	// -----------------------------------

	public int getMessages_idx() {
		return messages_idx;
	}

	public void setMessages_idx(int messages_idx) {
		this.messages_idx = messages_idx;
	}

	public int getRoom_idx() {
		return room_idx;
	}

	public void setRoom_idx(int room_idx) {
		this.room_idx = room_idx;
	}

	public int getSender_idx() {
		return sender_idx;
	}

	public void setSender_idx(int sender_idx) {
		this.sender_idx = sender_idx;
	}

	public int getReceiver_idx() {
		return receiver_idx;
	}

	public void setReceiver_idx(int receiver_idx) {
		this.receiver_idx = receiver_idx;
	}

	public String getMessages_text() {
		return messages_text;
	}

	public void setMessages_text(String messages_text) {
		this.messages_text = messages_text;
	}

	public String getMessages_date() {
		return messages_date;
	}

	public void setMessages_date(String messages_date) {
		this.messages_date = messages_date;
	}

	public int getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}

	public String getSender_nickname() {
		return sender_nickname;
	}

	public void setSender_nickname(String sender_nickname) {
		this.sender_nickname = sender_nickname;
	}

	public String getReceiver_nickname() {
		return receiver_nickname;
	}

	public void setReceiver_nickname(String receiver_nickname) {
		this.receiver_nickname = receiver_nickname;
	}

	public String getUser_img() {
		return user_img;
	}

	public void setUser_img(String user_img) {
		this.user_img = user_img;
	}

}
