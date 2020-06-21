package member.model.vo;

import java.io.Serializable;

public class Account implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 3459518965162170721L;
	private String bank;			// 은행명
	private String account_hold;	// 예금주
	private String account;			// 계좌번호
	private String userNo;			// 회원번호

	public Account() {
		super();
	}
	public Account(String bank, String account_hold, String account, String userNo) {
		super();
		this.bank = bank;
		this.account_hold = account_hold;
		this.account = account;
		this.userNo = userNo;
	}
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	public String getAccount_hold() {
		return account_hold;
	}
	public void setAccount_hold(String account_hold) {
		this.account_hold = account_hold;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	@Override
	public String toString() {
		return "Account [bank=" + bank + ", account_hold=" + account_hold + ", account=" + account + ", userNo="
				+ userNo + "]";
	}
	
	
	
	
}
