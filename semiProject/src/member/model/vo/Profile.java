package member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Profile implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -8491996824735553963L;
	
	private int fid;
	private int user_no;
	private String origin_name;
	private String change_name;
	private String file_path;
	private Date upload_date;
	private String status;
	public Profile() {
		super();
	}
	public Profile(int fid, int user_no, String origin_name, String change_name, String file_path, Date upload_date,
			String status) {
		super();
		this.fid = fid;
		this.user_no = user_no;
		this.origin_name = origin_name;
		this.change_name = change_name;
		this.file_path = file_path;
		this.upload_date = upload_date;
		this.status = status;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public String getOrigin_name() {
		return origin_name;
	}
	public void setOrigin_name(String origin_name) {
		this.origin_name = origin_name;
	}
	public String getChange_name() {
		return change_name;
	}
	public void setChange_name(String change_name) {
		this.change_name = change_name;
	}
	public String getFile_path() {
		return file_path;
	}
	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}
	public Date getUpload_date() {
		return upload_date;
	}
	public void setUpload_date(Date upload_date) {
		this.upload_date = upload_date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Profile [fid=" + fid + ", user_no=" + user_no + ", origin_name=" + origin_name + ", change_name="
				+ change_name + ", file_path=" + file_path + ", upload_date=" + upload_date + ", status=" + status
				+ "]";
	}
	
	
	
	
	
	
	
	
	

}
