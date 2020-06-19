package service.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Service_Review implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -835314886814833621L;
	private int serviceNo;
	private String sUserNo;
	private String bUserNo;
	private String userId;
	private int rating;
	private String content;
	private Date wDate;
	private String bStatus;
	
	public Service_Review() {
		super();
	}

	public Service_Review(int serviceNo, String sUserNo, String bUserNo, String userId, int rating, String content,
			Date wDate, String bStatus) {
		super();
		this.serviceNo = serviceNo;
		this.sUserNo = sUserNo;
		this.bUserNo = bUserNo;
		this.userId = userId;
		this.rating = rating;
		this.content = content;
		this.wDate = wDate;
		this.bStatus = bStatus;
	}

	public int getServiceNo() {
		return serviceNo;
	}

	public void setServiceNo(int serviceNo) {
		this.serviceNo = serviceNo;
	}

	public String getsUserNo() {
		return sUserNo;
	}

	public void setsUserNo(String sUserNo) {
		this.sUserNo = sUserNo;
	}

	public String getbUserNo() {
		return bUserNo;
	}

	public void setbUserNo(String bUserNo) {
		this.bUserNo = bUserNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getwDate() {
		return wDate;
	}

	public void setwDate(Date wDate) {
		this.wDate = wDate;
	}

	public String getbStatus() {
		return bStatus;
	}

	public void setbStatus(String bStatus) {
		this.bStatus = bStatus;
	}

	@Override
	public String toString() {
		return "Service_Review [serviceNo=" + serviceNo + ", sUserNo=" + sUserNo + ", bUserNo=" + bUserNo + ", userId="
				+ userId + ", rating=" + rating + ", content=" + content + ", wDate=" + wDate + ", bStatus=" + bStatus
				+ "]";
	}
	
	

	
	
}
