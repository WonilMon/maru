package kr.co.softsoldesk.beans;

import org.springframework.stereotype.Component;

@Component
public class FavoriteBean {

	private int favorite_idx;

	private int user_idx;
	private int content_idx;

	// ---------------------------------------------------------------

	public int getFavorite_idx() {
		return favorite_idx;
	}

	public void setFavorite_idx(int favorite_idx) {
		this.favorite_idx = favorite_idx;
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
