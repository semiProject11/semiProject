package board.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Report implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1293736034238480157L;
	
	private int board_no;			//신고번호
	private String re_content;		//답변내용
	private String re_yn;			//답변여부
	private Date re_date;			//답변날짜
	private int service_no;			//서비스번호
	private String report_type;		//신고유형
	private String report_name;		//신고명칭
	private String report_userId;	//신고대상 아이디
	private String title;			//제목
	private String content;			//내용
	private Date write_date;		//작성날짜

	
	public Report() {
		super();
	}
	
	public Report(int board_no, String re_content, String re_yn, Date re_date, int service_no, String report_type,
			String report_name, String report_userId) {
		super();
		this.board_no = board_no;
		this.re_content = re_content;
		this.re_yn = re_yn;
		this.re_date = re_date;
		this.service_no = service_no;
		this.report_type = report_type;
		this.report_name = report_name;
		this.report_userId = report_userId;
	}



	
	
	public Report(int board_no, String re_content, String re_yn, Date re_date, int service_no, String report_type,
			String report_name, String report_userId, String title, String content, Date write_date) {
		super();
		this.board_no = board_no;
		this.re_content = re_content;
		this.re_yn = re_yn;
		this.re_date = re_date;
		this.service_no = service_no;
		this.report_type = report_type;
		this.report_name = report_name;
		this.report_userId = report_userId;
		this.title = title;
		this.content = content;
		this.write_date = write_date;
	}

	public Report(int board_no, String re_content, String re_yn, Date re_date, int service_no, String report_type,
			String report_name) {
		super();
		this.board_no = board_no;
		this.re_content = re_content;
		this.re_yn = re_yn;
		this.re_date = re_date;
		this.service_no = service_no;
		this.report_type = report_type;
		this.report_name = report_name;
	}
	public Report(int board_no, String re_content, String re_yn, Date re_date, int service_no, String report_type) {
		super();
		this.board_no = board_no;
		this.re_content = re_content;
		this.re_yn = re_yn;
		this.re_date = re_date;
		this.service_no = service_no;
		this.report_type = report_type;
	}
	public String getReport_userId() {
		return report_userId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}

	public void setReport_userId(String report_userId) {
		this.report_userId = report_userId;
	}
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public String getReport_name() {
		return report_name;
	}

	public void setReport_name(String report_name) {
		this.report_name = report_name;
	}
	public String getRe_content() {
		return re_content;
	}
	public void setRe_content(String re_content) {
		this.re_content = re_content;
	}
	public String getRe_yn() {
		return re_yn;
	}
	public void setRe_yn(String re_yn) {
		this.re_yn = re_yn;
	}
	public Date getRe_date() {
		return re_date;
	}
	public void setRe_date(Date re_date) {
		this.re_date = re_date;
	}
	public int getService_no() {
		return service_no;
	}
	public void setService_no(int service_no) {
		this.service_no = service_no;
	}
	public String getReport_type() {
		return report_type;
	}
	public void setReport_type(String report_type) {
		this.report_type = report_type;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Report [board_no=" + board_no + ", re_content=" + re_content + ", re_yn=" + re_yn + ", re_date="
				+ re_date + ", service_no=" + service_no + ", report_type=" + report_type + ", report_name="
				+ report_name + ", report_userId=" + report_userId + ", title=" + title + ", content=" + content
				+ ", write_date=" + write_date + "]";
	}
	
	
	

}
