package kr.co.softsoldesk.beans;

import org.springframework.stereotype.Component;

@Component
public class TransactionContentBean {

	private int transactionContent_idx;
	private String transactionContent_subject;
	private String transactionContent_text;
	private String transactionContent_createdAt;
	private boolean transactionContent_isAvailable;

	private int user_idx;
	
//	-----------------------------------------------------------

	public int getTransactionContent_idx() {
		return transactionContent_idx;
	}

	public void setTransactionContent_idx(int transactionContent_idx) {
		this.transactionContent_idx = transactionContent_idx;
	}

	public String getTransactionContent_subject() {
		return transactionContent_subject;
	}

	public void setTransactionContent_subject(String transactionContent_subject) {
		this.transactionContent_subject = transactionContent_subject;
	}

	public String getTransactionContent_text() {
		return transactionContent_text;
	}

	public void setTransactionContent_text(String transactionContent_text) {
		this.transactionContent_text = transactionContent_text;
	}

	public String getTransactionContent_createdAt() {
		return transactionContent_createdAt;
	}

	public void setTransactionContent_createdAt(String transactionContent_createdAt) {
		this.transactionContent_createdAt = transactionContent_createdAt;
	}

	public boolean isTransactionContent_isAvailable() {
		return transactionContent_isAvailable;
	}

	public void setTransactionContent_isAvailable(boolean transactionContent_isAvailable) {
		this.transactionContent_isAvailable = transactionContent_isAvailable;
	}

	public int getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}

}
