package kr.co.softsoldesk.beans;

import org.springframework.stereotype.Component;

@Component
public class AdBean {

	private int ad_idx;
	private String ad_subject;
	private String ad_text;
	private String ad_image;
	private String ad_isActive;

//	-----------------------------------------------------------

	public int getAd_idx() {
		return ad_idx;
	}

	public void setAd_idx(int ad_idx) {
		this.ad_idx = ad_idx;
	}

	public String getAd_subject() {
		return ad_subject;
	}

	public void setAd_subject(String ad_subject) {
		this.ad_subject = ad_subject;
	}

	public String getAd_text() {
		return ad_text;
	}

	public void setAd_text(String ad_text) {
		this.ad_text = ad_text;
	}

	public String getAd_image() {
		return ad_image;
	}

	public void setAd_image(String ad_image) {
		this.ad_image = ad_image;
	}

	public String getAd_isActive() {
		return ad_isActive;
	}

	public void setAd_isActive(String ad_isActive) {
		this.ad_isActive = ad_isActive;
	}

}
