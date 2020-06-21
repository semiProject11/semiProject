package board.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class InquiaryList implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -8165173604398372869L;
	private int boardNo;			// 게시물번호
	private String title;			// 제목
	private String content;			// 내용
	private String userNo;			// 작성자
	private Date writeDate;			// 작성일
	private String boardStatus;		// 삭제여부
	private String inquiryContent;	// 답변내용
	private String inquiryYN;		// 답변여부
	private Date inquiryDate;		// 답변일자
	private String boardType;		// 문의유형
	public InquiaryList() {
		super();
	}
	
	public InquiaryList(int boardNo, String title, String content, String userNo, Date writeDate, String inquiryContent,
			Date inquiryDate, String boardType) {
		super();
		this.boardNo = boardNo;
		this.title = title;
		this.content = content;
		this.userNo = userNo;
		this.writeDate = writeDate;
		this.inquiryContent = inquiryContent;
		this.inquiryDate = inquiryDate;
		this.boardType = boardType;
	}

	public InquiaryList(int boardNo, String title, Date writeDate, String inquiryYN, String boardType) {
		super();
		this.boardNo = boardNo;
		this.title = title;
		this.writeDate = writeDate;
		this.inquiryYN = inquiryYN;
		this.boardType = boardType;
	}


	public InquiaryList(int boardNo, String title, String content, String userNo, Date writeDate, String boardStatus,
			String inquiryContent, String inquiryYN, Date inquiryDate, String boardType) {
		super();
		this.boardNo = boardNo;
		this.title = title;
		this.content = content;
		this.userNo = userNo;
		this.writeDate = writeDate;
		this.boardStatus = boardStatus;
		this.inquiryContent = inquiryContent;
		this.inquiryYN = inquiryYN;
		this.inquiryDate = inquiryDate;
		this.boardType = boardType;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
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
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public String getBoardStatus() {
		return boardStatus;
	}
	public void setBoardStatus(String boardStatus) {
		this.boardStatus = boardStatus;
	}
	public String getInquiryContent() {
		return inquiryContent;
	}
	public void setInquiryContent(String inquiryContent) {
		this.inquiryContent = inquiryContent;
	}
	public String getInquiryYN() {
		return inquiryYN;
	}
	public void setInquiryYN(String inquiryYN) {
		this.inquiryYN = inquiryYN;
	}
	public Date getInquiryDate() {
		return inquiryDate;
	}
	public void setInquiryDate(Date inquiryDate) {
		this.inquiryDate = inquiryDate;
	}
	public String getBoardType() {
		return boardType;
	}
	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}
	@Override
	public String toString() {
		return "InquiaryList [boardNo=" + boardNo + ", title=" + title + ", content=" + content + ", userNo=" + userNo
				+ ", writeDate=" + writeDate + ", boardStatus=" + boardStatus + ", inquiryContent=" + inquiryContent
				+ ", inquiryYN=" + inquiryYN + ", inquiryDate=" + inquiryDate + ", boardType=" + boardType + "]";
	}
	
	
}
