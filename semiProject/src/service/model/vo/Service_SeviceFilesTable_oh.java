package service.model.vo;

import java.sql.Date;

public class Service_SeviceFilesTable_oh {
	
	private int fId;				//파일번호
	private int serviceNo;			//서비스번호
	private String originName;		//원본이름
	private String changeName;		//바뀐이름
	private String filePath;		//파일경로
	private Date uploadDate;		//올린날짜
	private int fileLevel;			//파일레벨
	private int downloadCount;		//다운로드횟수
	private String status;			//상태
	public Service_SeviceFilesTable_oh() {
		
	}
	public Service_SeviceFilesTable_oh(int fId, int serviceNo, String originName, String changeName, String filePath,
			Date uploadDate, int fileLevel, int downloadCount, String status) {

		this.fId = fId;
		this.serviceNo = serviceNo;
		this.originName = originName;
		this.changeName = changeName;
		this.filePath = filePath;
		this.uploadDate = uploadDate;
		this.fileLevel = fileLevel;
		this.downloadCount = downloadCount;
		this.status = status;
	}
	public int getfId() {
		return fId;
	}
	public void setfId(int fId) {
		this.fId = fId;
	}
	public int getServiceNo() {
		return serviceNo;
	}
	public void setServiceNo(int serviceNo) {
		this.serviceNo = serviceNo;
	}
	public String getOriginName() {
		return originName;
	}
	public void setOriginName(String originName) {
		this.originName = originName;
	}
	public String getChangeName() {
		return changeName;
	}
	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public Date getUploadDate() {
		return uploadDate;
	}
	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}
	public int getFileLevel() {
		return fileLevel;
	}
	public void setFileLevel(int fileLevel) {
		this.fileLevel = fileLevel;
	}
	public int getDownloadCount() {
		return downloadCount;
	}
	public void setDownloadCount(int downloadCount) {
		this.downloadCount = downloadCount;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Service_SeviceFilesTable_oh [fId=" + fId + ", serviceNo=" + serviceNo + ", originName=" + originName
				+ ", changeName=" + changeName + ", filePath=" + filePath + ", uploadDate=" + uploadDate
				+ ", fileLevel=" + fileLevel + ", downloadCount=" + downloadCount + ", status=" + status + "]";
	}
	
	
	
	
	
	
	

}
