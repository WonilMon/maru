package kr.co.softsoldesk.beans;

import org.springframework.stereotype.Component;

@Component
public class IconBean {

	private int icon_idx;
	private String icon_name;
	private String icon_path;

	private int user_idx;

//	-----------------------------------------------------------

	public int getIcon_idx() {
		return icon_idx;
	}

	public void setIcon_idx(int icon_idx) {
		this.icon_idx = icon_idx;
	}

	public String getIcon_name() {
		return icon_name;
	}

	public void setIcon_name(String icon_name) {
		this.icon_name = icon_name;
	}

	public String getIcon_path() {
		return icon_path;
	}

	public void setIcon_path(String icon_path) {
		this.icon_path = icon_path;
	}

	public int getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}

}
