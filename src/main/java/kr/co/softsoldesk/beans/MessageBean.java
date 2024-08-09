package kr.co.softsoldesk.beans;

import org.springframework.stereotype.Component;

@Component
public class MessageBean {

	private int message_idx;
	private String message_text;
	private String message_createdAt;

	private int chat_idx;
	private int sender_idx;

	// ---------------------------------------------------------------
	
	public int getMessage_idx() {
		return message_idx;
	}

	public void setMessage_idx(int message_idx) {
		this.message_idx = message_idx;
	}

	public String getMessage_text() {
		return message_text;
	}

	public void setMessage_text(String message_text) {
		this.message_text = message_text;
	}

	public String getMessage_createdAt() {
		return message_createdAt;
	}

	public void setMessage_createdAt(String message_createdAt) {
		this.message_createdAt = message_createdAt;
	}

	public int getChat_idx() {
		return chat_idx;
	}

	public void setChat_idx(int chat_idx) {
		this.chat_idx = chat_idx;
	}

	public int getSender_idx() {
		return sender_idx;
	}

	public void setSender_idx(int sender_idx) {
		this.sender_idx = sender_idx;
	}

}
