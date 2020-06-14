package service.model.vo;

import java.sql.Date;

public class ServiceBuyList {
	private String changeName;
	private String title;
	private Date tradeDate;
	private String sUserName;
	private String sPhone;
	private int serviceNo;
	private String bUserNo;
	public ServiceBuyList() {
		super();
	}
	public ServiceBuyList(String changeName, String title, Date tradeDate, String sUserName, String sPhone,
			int serviceNo, String bUserNo) {
		super();
		this.changeName = changeName;
		this.title = title;
		this.tradeDate = tradeDate;
		this.sUserName = sUserName;
		this.sPhone = sPhone;
		this.serviceNo = serviceNo;
		this.bUserNo = bUserNo;
	}
	public String getChangeName() {
		return changeName;
	}
	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getTradeDate() {
		return tradeDate;
	}
	public void setTradeDate(Date tradeDate) {
		this.tradeDate = tradeDate;
	}
	public String getsUserName() {
		return sUserName;
	}
	public void setsUserName(String sUserName) {
		this.sUserName = sUserName;
	}
	public String getsPhone() {
		return sPhone;
	}
	public void setsPhone(String sPhone) {
		this.sPhone = sPhone;
	}
	public int getServiceNo() {
		return serviceNo;
	}
	public void setServiceNo(int serviceNo) {
		this.serviceNo = serviceNo;
	}
	public String getbUserNo() {
		return bUserNo;
	}
	public void setbUserNo(String bUserNo) {
		this.bUserNo = bUserNo;
	}
	@Override
	public String toString() {
		return "ServiceBuyList [changeName=" + changeName + ", title=" + title + ", tradeDate=" + tradeDate
				+ ", sUserName=" + sUserName + ", sPhone=" + sPhone + ", serviceNo=" + serviceNo + ", bUserNo="
				+ bUserNo + "]";
	}
	
	
}
