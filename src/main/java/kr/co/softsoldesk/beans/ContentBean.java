package kr.co.softsoldesk.beans;

import java.util.List;

import javax.validation.constraints.NotBlank;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class ContentBean {

	private int content_idx;

	@NotBlank
	private String content_subject;

	@NotBlank
	private String content_text;

//	DB에 파일 이름을 담을 변수
	private String content_file;

	private String content_date;

	private boolean content_isAnonymous;

	private String content_hashTag1;
	private String content_hashTag2;
	private String content_hashTag3;

	private int content_views;

	private int user_idx;

	private int board_info_idx;

//	----------------------------------------------------------- ↓↓ DB 테이블에 없는 변수들 (추가한 변수들) ↓↓

	private String user_name; // 유저 테이블에 있는 작성자 이름

//	브라우저가 보낸 파일 데이터
	private MultipartFile upload_file;
//	파일을 올려보이면 여기서 해당 파일을 받고 경로를 지정한 후 content_file에다 주고 DB에 넘김

//	-----------------------------------------------------------
	


	public int getContent_idx() {
		return content_idx;
	}

	public void setContent_idx(int content_idx) {
		this.content_idx = content_idx;
	}

	public String getContent_subject() {
		return content_subject;
	}

	public void setContent_subject(String content_subject) {
		this.content_subject = content_subject;
	}

	public String getContent_text() {
		return content_text;
	}

	public void setContent_text(String content_text) {
		this.content_text = content_text;
	}

	public String getContent_file() {
		return content_file;
	}

	public void setContent_file(String content_file) {
		this.content_file = content_file;
	}

	public String getContent_date() {
		return content_date;
	}

	public void setContent_date(String content_date) {
		this.content_date = content_date;
	}

	public boolean isContent_isAnonymous() {
		return content_isAnonymous;
	}

	public void setContent_isAnonymous(boolean content_isAnonymous) {
		this.content_isAnonymous = content_isAnonymous;
	}

	public String getContent_hashTag1() {
		return content_hashTag1;
	}

	public void setContent_hashTag1(String content_hashTag1) {
		this.content_hashTag1 = content_hashTag1;
	}

	public String getContent_hashTag2() {
		return content_hashTag2;
	}

	public void setContent_hashTag2(String content_hashTag2) {
		this.content_hashTag2 = content_hashTag2;
	}

	public String getContent_hashTag3() {
		return content_hashTag3;
	}

	public void setContent_hashTag3(String content_hashTag3) {
		this.content_hashTag3 = content_hashTag3;
	}

	public int getContent_views() {
		return content_views;
	}

	public void setContent_views(int content_views) {
		this.content_views = content_views;
	}

	public int getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}

	public int getBoard_info_idx() {
		return board_info_idx;
	}

	public void setBoard_info_idx(int board_info_idx) {
		this.board_info_idx = board_info_idx;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public MultipartFile getUpload_file() {
		return upload_file;
	}

	public void setUpload_file(MultipartFile upload_file) {
		this.upload_file = upload_file;
	}

}
