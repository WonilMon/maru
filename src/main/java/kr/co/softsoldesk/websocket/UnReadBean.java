package kr.co.softsoldesk.websocket;

public class UnReadBean {

	private int un_read_idx;
	private int un_read_messages_idx;
	private int un_read_room_idx;

	// -----------------------------------

	private int receiver_idx;
	private String messages_text;
	private String messages_date;

	// -----------------------------------

	public int getUn_read_idx() {
		return un_read_idx;
	}

	public void setUn_read_idx(int un_read_idx) {
		this.un_read_idx = un_read_idx;
	}

	public int getUn_read_messages_idx() {
		return un_read_messages_idx;
	}

	public void setUn_read_messages_idx(int un_read_messages_idx) {
		this.un_read_messages_idx = un_read_messages_idx;
	}

	public int getUn_read_room_idx() {
		return un_read_room_idx;
	}

	public void setUn_read_room_idx(int un_read_room_idx) {
		this.un_read_room_idx = un_read_room_idx;
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

}
