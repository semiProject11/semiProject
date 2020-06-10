package member.model.vo;

import java.io.Serializable;

public class Seller implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4258228989365707742L;
	
	private int userNo;	//회원번호
	private int reportNum;		//신고받은 횟수
	private int sellCount;		//판매 횟수

	
	public Seller() {
		super();
	}


	public Seller(int userNo, int reportNum, int sellCount) {
		super();
		this.userNo = userNo;
		this.reportNum = reportNum;
		this.sellCount = sellCount;
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


	public int getSellCount() {
		return sellCount;
	}


	public void setSellCount(int sellCount) {
		this.sellCount = sellCount;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "Seller [userNo=" + userNo + ", reportNum=" + reportNum + ", sellCount=" + sellCount + "]";
	}

}