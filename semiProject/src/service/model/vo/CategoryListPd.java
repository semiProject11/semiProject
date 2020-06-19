package service.model.vo;

import java.io.Serializable;

public class CategoryListPd {
	

	
	private int seviceNo;			// 서비스 번호
	private String sUserNo;			// 판매자 번호
	private String salemethod;		// 판매 방식
	private String categoryCode;	// 카테고리
	private String categoryName;	// 카테고리 이름
	private String chageName;
	private String userId;			// 
	private String sTitle;
	private int priceSale;
	private int priceBidding;
	private String gradeName;
	private String gradeNo;
	private int readCount;
	private String deadLine;
	private String sStatus;
	
	public CategoryListPd() {
		super();
	}

	public CategoryListPd(int seviceNo, String sUserNo, String salemethod, String categoryCode, String categoryName,
			String chageName, String userId, String sTitle, int priceSale, int priceBidding, String gradeName,
			String gradeNo, int readCount, String deadLine, String sStatus) {
		super();
		this.seviceNo = seviceNo;
		this.sUserNo = sUserNo;
		this.salemethod = salemethod;
		this.categoryCode = categoryCode;
		this.categoryName = categoryName;
		this.chageName = chageName;
		this.userId = userId;
		this.sTitle = sTitle;
		this.priceSale = priceSale;
		this.priceBidding = priceBidding;
		this.gradeName = gradeName;
		this.gradeNo = gradeNo;
		this.readCount = readCount;
		this.deadLine = deadLine;
		this.sStatus = sStatus;
	}

	public int getSeviceNo() {
		return seviceNo;
	}

	public void setSeviceNo(int seviceNo) {
		this.seviceNo = seviceNo;
	}

	public String getsUserNo() {
		return sUserNo;
	}

	public void setsUserNo(String sUserNo) {
		this.sUserNo = sUserNo;
	}

	public String getSalemethod() {
		return salemethod;
	}

	public void setSalemethod(String salemethod) {
		this.salemethod = salemethod;
	}

	public String getCategoryCode() {
		return categoryCode;
	}

	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getChageName() {
		return chageName;
	}

	public void setChageName(String chageName) {
		this.chageName = chageName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getsTitle() {
		return sTitle;
	}

	public void setsTitle(String sTitle) {
		this.sTitle = sTitle;
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

	public String getGradeName() {
		return gradeName;
	}

	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}

	public String getGradeNo() {
		return gradeNo;
	}

	public void setGradeNo(String gradeNo) {
		this.gradeNo = gradeNo;
	}

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}

	public String getDeadLine() {
		return deadLine;
	}

	public void setDeadLine(String deadLine) {
		this.deadLine = deadLine;
	}

	public String getsStatus() {
		return sStatus;
	}

	public void setsStatus(String sStatus) {
		this.sStatus = sStatus;
	}

	@Override
	public String toString() {
		return "CategoryListPd [seviceNo=" + seviceNo + ", sUserNo=" + sUserNo + ", salemethod=" + salemethod
				+ ", categoryCode=" + categoryCode + ", categoryName=" + categoryName + ", chageName=" + chageName
				+ ", userId=" + userId + ", sTitle=" + sTitle + ", priceSale=" + priceSale + ", priceBidding="
				+ priceBidding + ", gradeName=" + gradeName + ", gradeNo=" + gradeNo + ", readCount=" + readCount
				+ ", deadLine=" + deadLine + ", sStatus=" + sStatus + "]";
	}







	

	


	
	


	
	

	
	
	
	
	
	
}
