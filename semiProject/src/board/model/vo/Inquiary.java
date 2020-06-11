package board.model.vo;

import java.io.Serializable;

public class Inquiary implements Serializable{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -7183120793529276575L;
	
	private int board_no;			//문의번호
	private String board_type;		//문의유형
	private String inquiry_content;	//답변내용
	private String inquiry_yn;		//답변여부
	private String inquiry_date;	//답변날짜
	
	
	public Inquiary() {
		super();
	}
	public Inquiary(int board_no, String board_type, String inquiry_content, String inquiry_yn, String inquiry_date) {
		super();
		this.board_no = board_no;
		this.board_type = board_type;
		this.inquiry_content = inquiry_content;
		this.inquiry_yn = inquiry_yn;
		this.inquiry_date = inquiry_date;
	}
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public String getBoard_type() {
		return board_type;
	}
	public void setBoard_type(String board_type) {
		this.board_type = board_type;
	}
	public String getInquiry_content() {
		return inquiry_content;
	}
	public void setInquiry_content(String inquiry_content) {
		this.inquiry_content = inquiry_content;
	}
	public String getInquiry_yn() {
		return inquiry_yn;
	}
	public void setInquiry_yn(String inquiry_yn) {
		this.inquiry_yn = inquiry_yn;
	}
	public String getInquiry_date() {
		return inquiry_date;
	}
	public void setInquiry_date(String inquiry_date) {
		this.inquiry_date = inquiry_date;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Inquiary [board_no=" + board_no + ", board_type=" + board_type + ", inquiry_content=" + inquiry_content
				+ ", inquiry_yn=" + inquiry_yn + ", inquiry_date=" + inquiry_date + "]";
	}
	
	

}
