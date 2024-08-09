package kr.co.softsoldesk.beans;

import org.springframework.stereotype.Component;

@Component
public class AuthenticationBean {

	private int authentication_idx;
	private String authentication_name;

//	-----------------------------------------------------------
	
	public int getAuthentication_idx() {
		return authentication_idx;
	}

	public void setAuthentication_idx(int authentication_idx) {
		this.authentication_idx = authentication_idx;
	}

	public String getAuthentication_name() {
		return authentication_name;
	}

	public void setAuthentication_name(String authentication_name) {
		this.authentication_name = authentication_name;
	}

}
