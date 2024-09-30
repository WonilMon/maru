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
//	private String content_file;
	private List<String> content_files;
	
	private String test_file;

	private List<String> hashTags;

	private String content_date;

	private boolean content_isAnonymous;

	private int content_views;

	private int user_idx;

	private int board_info_idx;
	private int favorite_idx;
	
//	----------------------------------------------------------- ↓↓ DB 테이블에 없는 변수들 (추가한 변수들) ↓↓

	private String user_name; // 유저 테이블에 있는 작성자 이름
	private String user_icon;

	private int content_comment_count;

	private String board_info_name;
	
//	브라우저가 보낸 파일 데이터
//	private MultipartFile upload_file;
	private List<MultipartFile> upload_files;
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

	public int getContent_comment_count() {
		return content_comment_count;
	}

	public void setContent_comment_count(int content_comment_count) {
		this.content_comment_count = content_comment_count;
	}

	public List<String> getContent_files() {
		return content_files;
	}

	public void setContent_files(List<String> content_files) {
		this.content_files = content_files;
	}

	public List<MultipartFile> getUpload_files() {
		return upload_files;
	}

	public void setUpload_files(List<MultipartFile> upload_files) {
		this.upload_files = upload_files;
	}

	public List<String> getHashTags() {
		return hashTags;
	}

	public void setHashTags(List<String> hashTags) {
		this.hashTags = hashTags;
	}

	public String getTest_file() {
		return test_file;
	}

	public void setTest_file(String test_file) {
		this.test_file = test_file;
	}

	public int getFavorite_idx() {
		return favorite_idx;
	}

	public void setFavorite_idx(int favorite_idx) {
		this.favorite_idx = favorite_idx;
	}

	public String getBoard_info_name() {
		return board_info_name;
	}

	public void setBoard_info_name(String board_info_name) {
		this.board_info_name = board_info_name;
	}

	public String getUser_icon() {
		return user_icon;
	}

	public void setUser_icon(String user_icon) {
		this.user_icon = user_icon;
	}

}
