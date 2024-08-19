package kr.co.softsoldesk.beans;

import org.springframework.stereotype.Component;

@Component
public class FaqBean {

	private String faq_user_email;
	private String faq_user_text;

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

}
