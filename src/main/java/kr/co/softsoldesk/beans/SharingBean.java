package kr.co.softsoldesk.beans;

import org.springframework.stereotype.Component;

@Component
public class SharingBean {

	private int share_idx;
	private String share_file;
	private int sender_idx;
	private int receiver_idx;
	private int after_point;

	// ----------------------------------

	private String content_subject;
	private String content_text;
	private String content_date;

	private String sender_name;
	private String receiver_name;

	// ----------------------------------

	public int getShare_idx() {
		return share_idx;
	}

	public void setShare_idx(int share_idx) {
		this.share_idx = share_idx;
	}

	public String getShare_file() {
		return share_file;
	}

	public void setShare_file(String share_file) {
		this.share_file = share_file;
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

	public String getContent_subject() {
		return content_subject;
	}

	public void setContent_subject(String content_subject) {
		this.content_subject = content_subject;
	}

	public String getContent_date() {
		return content_date;
	}

	public void setContent_date(String content_date) {
		this.content_date = content_date;
	}

	public String getSender_name() {
		return sender_name;
	}

	public void setSender_name(String sender_name) {
		this.sender_name = sender_name;
	}

	public String getReceiver_name() {
		return receiver_name;
	}

	public void setReceiver_name(String receiver_name) {
		this.receiver_name = receiver_name;
	}

	public String getContent_text() {
		return content_text;
	}

	public void setContent_text(String content_text) {
		this.content_text = content_text;
	}

	public int getAfter_point() {
		return after_point;
	}

	public void setAfter_point(int after_point) {
		this.after_point = after_point;
	}

}
