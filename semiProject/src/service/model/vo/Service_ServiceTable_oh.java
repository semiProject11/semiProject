package service.model.vo;

import java.sql.Date;

public class Service_ServiceTable_oh {
	
	private int serviceNo;					//서비스번호
	private String sUserNo;					//판매자번호
	private String categoryCode;			//카테고리코드
	private String title;					//서비스 제목
	private String saleMethod;				//판매방식
	private int priceSale;					//판매가격
	private int priceBidding;				//입찰금액
	private String deadline;				//마감시간
	private String subject;					//관련주제
	private String sExplain;				//서비스상세설명
	private String saleInfo;				//판매자정보
	private String availableArea;			//가능지역
	private String contactTime_start;		//연락가능시간_시작
	private String contactTime_finish;		//연락가능시간_마감 
	private int readCount;					//조회수
	private int fileCount;					//첨부파일갯수
	private String fileNY;					//파일첨부여부
	private String bUserNo;					//구매자번호
	private Date registerDate;				//등록날짜
	
	
	
	
	public Service_ServiceTable_oh() {
		
	}

	public Service_ServiceTable_oh(int serviceNo, String sUserNo, String categoryCode, String title, String saleMethod,
			int priceSale, int priceBidding, String deadline, String subject, String sExplain, String saleInfo,
			String availableArea, String contactTime_start, String contactTime_finish, int readCount, int fileCount,
			String fileNY, String bUserNo, Date registerDate) {
	
		this.serviceNo = serviceNo;
		this.sUserNo = sUserNo;
		this.categoryCode = categoryCode;
		this.title = title;
		this.saleMethod = saleMethod;
		this.priceSale = priceSale;
		this.priceBidding = priceBidding;
		this.deadline = deadline;
		this.subject = subject;
		this.sExplain = sExplain;
		this.saleInfo = saleInfo;
		this.availableArea = availableArea;
		this.contactTime_start = contactTime_start;
		this.contactTime_finish = contactTime_finish;
		this.readCount = readCount;
		this.fileCount = fileCount;
		this.fileNY = fileNY;
		this.bUserNo = bUserNo;
		this.registerDate = registerDate;
		
		
		
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
	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSaleMethod() {
		return saleMethod;
	}
	public void setSaleMethod(String saleMethod) {
		this.saleMethod = saleMethod;
	}
	public int getPriceSale() {
		return priceSale;
	}
	public void setPriceSale(int priceSale) {
		this.priceSale = priceSale;
	}
	public int getPriceBidding() {
		return priceBidding;
	}
	public void setPriceBidding(int priceBidding) {
		this.priceBidding = priceBidding;
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
	public String getsExplain() {
		return sExplain;
	}
	public void setsExplain(String sExplain) {
		this.sExplain = sExplain;
	}
	public String getSaleInfo() {
		return saleInfo;
	}
	public void setSaleInfo(String saleInfo) {
		this.saleInfo = saleInfo;
	}
	public String getAvailableArea() {
		return availableArea;
	}
	public void setAvailableArea(String availableArea) {
		this.availableArea = availableArea;
	}
	public String getContactTime_start() {
		return contactTime_start;
	}
	public void setContactTime_start(String contactTime_start) {
		this.contactTime_start = contactTime_start;
	}
	public String getContactTime_finish() {
		return contactTime_finish;
	}
	public void setContactTime_finish(String contactTime_finish) {
		this.contactTime_finish = contactTime_finish;
	}
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	public int getFileCount() {
		return fileCount;
	}
	public void setFileCount(int fileCount) {
		this.fileCount = fileCount;
	}
	public String getFileNY() {
		return fileNY;
	}
	public void setFileNY(String fileNY) {
		this.fileNY = fileNY;
	}
	public String getbUserNo() {
		return bUserNo;
	}
	public void setbUserNo(String bUserNo) {
		this.bUserNo = bUserNo;
	}
	public Date getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}
	@Override
	public String toString() {
		return "Service_ServiceTable_oh [serviceNo=" + serviceNo + ", sUserNo=" + sUserNo + ", categoryCode="
				+ categoryCode + ", title=" + title + ", saleMethod=" + saleMethod + ", priceSale=" + priceSale
				+ ", priceBidding=" + priceBidding + ", deadline=" + deadline + ", subject=" + subject + ", sExplain="
				+ sExplain + ", saleInfo=" + saleInfo + ", availableArea=" + availableArea + ", contactTime_start="
				+ contactTime_start + ", contactTime_finish=" + contactTime_finish + ", readCount=" + readCount
				+ ", fileCount=" + fileCount + ", fileNY=" + fileNY + ", bUserNo=" + bUserNo + ", registerDate="
				+ registerDate + "]";
	}
	



	



}
