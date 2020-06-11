package service112233.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Service implements Serializable{
	
	/**
	 * 
	 */
	
	private static final long serialVersionUID = -7961949604715510761L;
	
	private String categoryName;		// 서비스 카테고리
	private String sTitle;				// 서비스 제목
	private String saleMethod;			// 판매방식
	private int salePrice;				// 일반_판매가격
	private int biddingPrice;			// 경매_입찰금액
	private String deadline;			// 경매_마감시간
	private String subject;				// 관련주제
	private String sDetailContent;		// 서비스설명
	private String sellerInfo;			// 판매자상세정보
	private String availableArea;		//가능지역
	private String availableDate;		//가능날짜
	private String contacTime_start;	//연락가능시간_시작시간
	private String contacTime_finish;	//연락가능시간_마감시간
	
	public Service() {
		
	}

	public Service(String categoryName, String sTitle, String saleMethod, int salePrice, int biddingPrice,
			String deadline, String subject, String sDetailContent, String sellerInfo, String availableArea,
			String availableDate, String contacTime_start, String contacTime_finish) {
		super();
		this.categoryName = categoryName;
		this.sTitle = sTitle;
		this.saleMethod = saleMethod;
		this.salePrice = salePrice;
		this.biddingPrice = biddingPrice;
		this.deadline = deadline;
		this.subject = subject;
		this.sDetailContent = sDetailContent;
		this.sellerInfo = sellerInfo;
		this.availableArea = availableArea;
		this.availableDate = availableDate;
		this.contacTime_start = contacTime_start;
		this.contacTime_finish = contacTime_finish;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getsTitle() {
		return sTitle;
	}

	public void setsTitle(String sTitle) {
		this.sTitle = sTitle;
	}

	public String getSaleMethod() {
		return saleMethod;
	}

	public void setSaleMethod(String saleMethod) {
		this.saleMethod = saleMethod;
	}

	public int getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}

	public int getBiddingPrice() {
		return biddingPrice;
	}

	public void setBiddingPrice(int biddingPrice) {
		this.biddingPrice = biddingPrice;
	}

	public String getDeadline() {
		return deadline;
	}

	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getsDetailContent() {
		return sDetailContent;
	}

	public void setsDetailContent(String sDetailContent) {
		this.sDetailContent = sDetailContent;
	}

	public String getSellerInfo() {
		return sellerInfo;
	}

	public void setSellerInfo(String sellerInfo) {
		this.sellerInfo = sellerInfo;
	}

	public String getAvailableArea() {
		return availableArea;
	}

	public void setAvailableArea(String availableArea) {
		this.availableArea = availableArea;
	}

	public String getAvailableDate() {
		return availableDate;
	}

	public void setAvailableDate(String availableDate) {
		this.availableDate = availableDate;
	}

	public String getContacTime_start() {
		return contacTime_start;
	}

	public void setContacTime_start(String contacTime_start) {
		this.contacTime_start = contacTime_start;
	}

	public String getContacTime_finish() {
		return contacTime_finish;
	}

	public void setContacTime_finish(String contacTime_finish) {
		this.contacTime_finish = contacTime_finish;
	}



	@Override
	public String toString() {
		return "Service [categoryName=" + categoryName + ", sTitle=" + sTitle + ", saleMethod=" + saleMethod
				+ ", salePrice=" + salePrice + ", biddingPrice=" + biddingPrice + ", deadline=" + deadline
				+ ", subject=" + subject + ", sDetailContent=" + sDetailContent + ", sellerInfo=" + sellerInfo
				+ ", availableArea=" + availableArea + ", availableDate=" + availableDate + ", contacTime_start="
				+ contacTime_start + ", contacTime_finish=" + contacTime_finish + "]";
	}


	

	

	
	
}