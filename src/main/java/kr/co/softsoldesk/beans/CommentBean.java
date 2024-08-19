package kr.co.softsoldesk.beans;

import org.springframework.stereotype.Component;

@Component
public class CommentBean {

	private int comment_idx;
	private String comment_text;
	private int comment_createdAt;

	private int user_idx;
	private int content_idx;

	// ---------------------------------------------------------------

	public int getComment_idx() {
		return comment_idx;
	}

	public void setComment_idx(int comment_idx) {
		this.comment_idx = comment_idx;
	}

	public String getComment_text() {
		return comment_text;
	}

	public void setComment_text(String comment_text) {
		this.comment_text = comment_text;
	}

	public int getComment_createdAt() {
		return comment_createdAt;
	}

	public void setComment_createdAt(int comment_createdAt) {
		this.comment_createdAt = comment_createdAt;
	}

	public int getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}

	public int getContent_idx() {
		return content_idx;
	}

	public void setContent_idx(int content_idx) {
		this.content_idx = content_idx;
	}

}
