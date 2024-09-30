package kr.co.softsoldesk.beans;

import org.springframework.stereotype.Component;

@Component
public class ChattingBean {

	private int user_idx;
	private int room_idx;

	public int getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}

	public int getRoom_idx() {
		return room_idx;
	}

	public void setRoom_idx(int room_idx) {
		this.room_idx = room_idx;
	}

}
