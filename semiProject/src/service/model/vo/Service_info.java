package service.model.vo;
import java.io.Serializable;
import java.sql.Date;

public class Service_info implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 6240049378751279762L;
	private String sUserNo;
	private int serviceNo;
	private String changeName;
	private String phone;
	private Date timeStart;
	private Date timeFinish;
	private String saleInfo;
	private String sExplain;
	private String availableArea;
	private String availableDate;
	private String subject;
	
	public Service_info() {
		super();
	}

	public Service_info(String sUserNo, int serviceNo, String changeName, String phone, Date timeStart, Date timeFinish,
			String saleInfo, String sExplain, String availableArea, String availableDate, String subject) {
		super();
		this.sUserNo = sUserNo;
		this.serviceNo = serviceNo;
		this.changeName = changeName;
		this.phone = phone;
		this.timeStart = timeStart;
		this.timeFinish = timeFinish;
		this.saleInfo = saleInfo;
		this.sExplain = sExplain;
		this.availableArea = availableArea;
		this.availableDate = availableDate;
		this.subject = subject;
	}

	public String getsUserNo() {
		return sUserNo;
	}

	public void setsUserNo(String sUserNo) {
		this.sUserNo = sUserNo;
	}

	public int getServiceNo() {
		return serviceNo;
	}

	public void setServiceNo(int serviceNo) {
		this.serviceNo = serviceNo;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getTimeStart() {
		return timeStart;
	}

	public void setTimeStart(Date timeStart) {
		this.timeStart = timeStart;
	}

	public Date getTimeFinish() {
		return timeFinish;
	}

	public void setTimeFinish(Date timeFinish) {
		this.timeFinish = timeFinish;
	}

	public String getSaleInfo() {
		return saleInfo;
	}

	public void setSaleInfo(String saleInfo) {
		this.saleInfo = saleInfo;
	}

	public String getsExplain() {
		return sExplain;
	}

	public void setsExplain(String sExplain) {
		this.sExplain = sExplain;
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

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	@Override
	public String toString() {
		return "Service_info [sUserNo=" + sUserNo + ", serviceNo=" + serviceNo + ", changeName=" + changeName
				+ ", phone=" + phone + ", timeStart=" + timeStart + ", timeFinish=" + timeFinish + ", saleInfo="
				+ saleInfo + ", sExplain=" + sExplain + ", availableArea=" + availableArea + ", availableDate="
				+ availableDate + ", subject=" + subject + "]";
	}
	
	
	
	
}
