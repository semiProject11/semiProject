package board.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Files implements Serializable {
	
	/**
	 * 
	 */

	private static final long serialVersionUID = 5968278466996218602L;
	
	
	private int fid;
	private int board_no;
	private String origin_name;
	private String change_name;
	private String file_path;
	private Date upload_date;
	private int file_level;
	private int download_count;
	private String status;
	
	
	
	
	public Files() {
		super();
	}
	
	
	
	public Files(int fid, int board_no, String origin_name, String change_name, String file_path, Date upload_date,
			int file_level, int download_count, String status) {
		super();
		this.fid = fid;
		this.board_no = board_no;
		this.origin_name = origin_name;
		this.change_name = change_name;
		this.file_path = file_path;
		this.upload_date = upload_date;
		this.file_level = file_level;
		this.download_count = download_count;
		this.status = status;
	}
	
	
	
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
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
	public int getFile_level() {
		return file_level;
	}
	public void setFile_level(int file_level) {
		this.file_level = file_level;
	}
	public int getDownload_count() {
		return download_count;
	}
	public void setDownload_count(int download_count) {
		this.download_count = download_count;
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
		return "Files [fid=" + fid + ", board_no=" + board_no + ", origin_name=" + origin_name + ", change_name="
				+ change_name + ", file_path=" + file_path + ", upload_date=" + upload_date + ", file_level="
				+ file_level + ", download_count=" + download_count + ", status=" + status + "]";
	}
	
	
	
	
		

}
