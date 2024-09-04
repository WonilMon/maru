package kr.co.softsoldesk.beans;

import org.springframework.stereotype.Component;

@Component
public class FaqBean {

	private int faq_idx;
	private String faq_user_nickname;
	private String faq_user_email;
	private String faq_user_text;
	private String faq_answer;

	// ------------------------------

	private String response_text;

	// ------------------------------

	public int getFaq_idx() {
		return faq_idx;
	}

	public void setFaq_idx(int faq_idx) {
		this.faq_idx = faq_idx;
	}

	public String getFaq_user_nickname() {
		return faq_user_nickname;
	}

	public void setFaq_user_nickname(String faq_user_nickname) {
		this.faq_user_nickname = faq_user_nickname;
	}

	public String getFaq_user_email() {
		return faq_user_email;
	}

	public void setFaq_user_email(String faq_user_email) {
		this.faq_user_email = faq_user_email;
	}

	public String getFaq_user_text() {
		return faq_user_text;
	}

	public void setFaq_user_text(String faq_user_text) {
		this.faq_user_text = faq_user_text;
	}

	public String getResponse_text() {
		return response_text;
	}

	public void setResponse_text(String response_text) {
		this.response_text = response_text;
	}

	public String getFaq_answer() {
		return faq_answer;
	}

	public void setFaq_answer(String faq_answer) {
		this.faq_answer = faq_answer;
	}

}
