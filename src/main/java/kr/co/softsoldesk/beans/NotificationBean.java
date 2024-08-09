package kr.co.softsoldesk.beans;

import org.springframework.stereotype.Component;

@Component
public class NotificationBean {

	private int notification_idx;
	private String notification_type;
	private boolean notification_isRead;
	private String notification_createdAt;

	private int user_idx;

	// ---------------------------------------------------------------
	
	public int getNotification_idx() {
		return notification_idx;
	}

	public void setNotification_idx(int notification_idx) {
		this.notification_idx = notification_idx;
	}

	public String getNotification_type() {
		return notification_type;
	}

	public void setNotification_type(String notification_type) {
		this.notification_type = notification_type;
	}

	public boolean isNotification_isRead() {
		return notification_isRead;
	}

	public void setNotification_isRead(boolean notification_isRead) {
		this.notification_isRead = notification_isRead;
	}

	public String getNotification_createdAt() {
		return notification_createdAt;
	}

	public void setNotification_createdAt(String notification_createdAt) {
		this.notification_createdAt = notification_createdAt;
	}

	public int getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}

}
