package member.model.vo;

public class Account {
	private String bank;			// 은행명
	private String account_hold;	// 예금주
	private String account;			// 계좌번호
	
	public Account() {
	}


	public Account(String bank, String account_hold, String account) {
		this.bank = bank;
		this.account_hold = account_hold;
		this.account = account;
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


	@Override
	public String toString() {
		return "Account [bank=" + bank + ", account_hold=" + account_hold + ", account=" + account + "]";
	}
	
	
	
}
