package service.model.vo;

import java.io.Serializable;

public class ServiceSellList implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -5194480675466719119L;
	private int serviceNo;			// 서비스번호
	private String title;			// 서비스 제목
	private String serviceStatus;	// 판매상태
	private String userName;		// 구매자이름
	private String phone;			// 구매자 연락처
	private int rating;				// 서비스 평점
	private String refundYN;		// 환불 여부
	public ServiceSellList() {
		super();
	}
	public ServiceSellList(int serviceNo, String title, String serviceStatus, String userName, String phone, int rating,
			String refundYN) {
		super();
		this.serviceNo = serviceNo;
		this.title = title;
		this.serviceStatus = serviceStatus;
		this.userName = userName;
		this.phone = phone;
		this.rating = rating;
		this.refundYN = refundYN;
	}
	public int getServiceNo() {
		return serviceNo;
	}
	public void setServiceNo(int serviceNo) {
		this.serviceNo = serviceNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getServiceStatus() {
		return serviceStatus;
	}
	public void setServiceStatus(String serviceStatus) {
		this.serviceStatus = serviceStatus;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getRefundYN() {
		return refundYN;
	}
	public void setRefundYN(String refundYN) {
		this.refundYN = refundYN;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "ServiceSellList [serviceNo=" + serviceNo + ", title=" + title + ", serviceStatus=" + serviceStatus
				+ ", userName=" + userName + ", phone=" + phone + ", rating=" + rating + ", refundYN=" + refundYN + "]";
	}
	
	
}
