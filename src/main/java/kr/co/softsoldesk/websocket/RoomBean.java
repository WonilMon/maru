package kr.co.softsoldesk.websocket;

public class RoomBean {

	private int room_idx;
	private int sender_idx;
	private int receiver_idx;

	// -----------------------------------

	private String sender_nickname;
	private String receiver_nickname;
	private String receiver_img;

	// -----------------------------------

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

	public String getReceiver_img() {
		return receiver_img;
	}

	public void setReceiver_img(String receiver_img) {
		this.receiver_img = receiver_img;
	}

}
