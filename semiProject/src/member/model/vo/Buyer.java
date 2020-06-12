package member.model.vo;

import java.io.Serializable;

public class Buyer implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4483615063164657695L;
	
	private int userNo; 		//회원번호
	private int reportNum;		//신고받은 횟수
	private int buyCount;		//구매 횟수
	
	
	
	public Buyer() {
		super();
	}



	public Buyer(int userNo, int reportNum, int buyCount) {
		super();
		this.userNo = userNo;
		this.reportNum = reportNum;
		this.buyCount = buyCount;
	}



	public int getUserNo() {
		return userNo;
	}



	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}



	public int getReportNum() {
		return reportNum;
	}



	public void setReportNum(int reportNum) {
		this.reportNum = reportNum;
	}



	public int getBuyCount() {
		return buyCount;
	}



	public void setBuyCount(int buyCount) {
		this.buyCount = buyCount;
	}



	public static long getSerialversionuid() {
		return serialVersionUID;
	}



	@Override
	public String toString() {
		return "Buyer [userNo=" + userNo + ", reportNum=" + reportNum + ", buyCount=" + buyCount + "]";
	}

	
	
}