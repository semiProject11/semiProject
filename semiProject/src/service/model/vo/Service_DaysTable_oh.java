package service.model.vo;

public class Service_DaysTable_oh {
	
	private String availableDate;			//가능요일
	private int serviceNo;					//서비스번호
	
	
	
	public Service_DaysTable_oh() {
	}
	
	
	
	public Service_DaysTable_oh(String availableDate, int serviceNo) {
		this.availableDate = availableDate;
		this.serviceNo = serviceNo;
	}





	public String getAvailableDate() {
		return availableDate;
	}





	public void setAvailableDate(String availableDate) {
		this.availableDate = availableDate;
	}





	public int getServiceNo() {
		return serviceNo;
	}





	public void setServiceNo(int serviceNo) {
		this.serviceNo = serviceNo;
	}





	@Override
	public String toString() {
		return "Service_DaysTable_oh [availableDate=" + availableDate + ", serviceNo=" + serviceNo + "]";
	}
	
	





}
