package kr.co.softsoldesk.beans;

import org.springframework.stereotype.Component;

@Component
public class GoodsBean {

	private int goods_idx;
	private String goods_name;
	private int goods_price;

	private int icon_idx;

//	-----------------------------------------------------------

	public int getGoods_idx() {
		return goods_idx;
	}

	public void setGoods_idx(int goods_idx) {
		this.goods_idx = goods_idx;
	}

	public String getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}

	public int getGoods_price() {
		return goods_price;
	}

	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}

	public int getIcon_idx() {
		return icon_idx;
	}

	public void setIcon_idx(int icon_idx) {
		this.icon_idx = icon_idx;
	}

}
