package kr.co.softsoldesk.beans;

import org.springframework.stereotype.Component;

@Component
public class ChatBean {

	private int chat_idx;
	private String chat_createdAt;

	private int user_idx1;
	private int user_idx2;

	// ---------------------------------------------------------------

	public int getChat_idx() {
		return chat_idx;
	}

	public void setChat_idx(int chat_idx) {
		this.chat_idx = chat_idx;
	}

	public int getUser_idx1() {
		return user_idx1;
	}

	public void setUser_idx1(int user_idx1) {
		this.user_idx1 = user_idx1;
	}

	public int getUser_idx2() {
		return user_idx2;
	}

	public void setUser_idx2(int user_idx2) {
		this.user_idx2 = user_idx2;
	}

	public String getChat_createdAt() {
		return chat_createdAt;
	}

	public void setChat_createdAt(String chat_createdAt) {
		this.chat_createdAt = chat_createdAt;
	}

}
