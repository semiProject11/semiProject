package service.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Service_Review implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -835314886814833621L;
	private String sUserNo;
	private String bUserNo;
	private String userId;
	private String content;
	private String bStatus;
	private int rating;
	private Date wDate;
	
	
	public Service_Review() {
		super();
	}


	public Service_Review(String sUserNo, String bUserNo, String userId, String content, String bStatus, int rating,
			Date wDate) {
		super();
		this.sUserNo = sUserNo;
		this.bUserNo = bUserNo;
		this.userId = userId;
		this.content = content;
		this.bStatus = bStatus;
		this.rating = rating;
		this.wDate = wDate;
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


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getbStatus() {
		return bStatus;
	}


	public void setbStatus(String bStatus) {
		this.bStatus = bStatus;
	}


	public int getRating() {
		return rating;
	}


	public void setRating(int rating) {
		this.rating = rating;
	}


	public Date getwDate() {
		return wDate;
	}


	public void setwDate(Date wDate) {
		this.wDate = wDate;
	}


	@Override
	public String toString() {
		return "Service_Review [sUserNo=" + sUserNo + ", bUserNo=" + bUserNo + ", userId=" + userId + ", content="
				+ content + ", bStatus=" + bStatus + ", rating=" + rating + ", wDate=" + wDate + "]";
	}


	
	
}
