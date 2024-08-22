package kr.co.softsoldesk.beans;

import org.springframework.stereotype.Component;

@Component
public class CommentBean {

	private int comment_idx;
	private String comment_text;
	private int comment_date;//게시글과의 통일성을 위하여 변수명을 변경

	private int user_idx;
	private int content_idx;
	private String user_nickname;//댓글을 생성할때 유저의 이름값을 가져오기 위해 등록
	
	private int comment_parent_idx;//부모가되는 댓글의 idx값
	private int comment_status;//댓글의 상태 등록

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

	public int getComment_date() {
		return comment_date;
	}

	public void setComment_date(int comment_date) {
		this.comment_date = comment_date;
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

	public int getComment_parent_idx() {
		return comment_parent_idx;
	}

	public void setComment_parent_idx(int comment_parent_idx) {
		this.comment_parent_idx = comment_parent_idx;
	}

	public int getComment_status() {
		return comment_status;
	}

	public void setComment_status(int comment_status) {
		this.comment_status = comment_status;
	}

	public String getUser_nickname() {
		return user_nickname;
	}

	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}
	
	
}
