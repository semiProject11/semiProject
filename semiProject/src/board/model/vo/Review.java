package board.model.vo;

import java.sql.Date;

public class Review {
	private int boardNo;		// 게시물번호
	private String title;		// 제목
	private String content;		// 내용
	private String userNo;		// 작성자
	private Date writeDate;		// 작성일자
	private int readNo;			// 조회수
	private int rating;			// 평점
	private int serviceNo;		// 서비스 번호
	private String sUserNo;		// 판매자 번호
	public Review() {
		super();
	}
	public Review(int boardNo, String title, String content, String userNo, Date writeDate, int readNo, int rating,
			int serviceNo, String sUserNo) {
		super();
		this.boardNo = boardNo;
		this.title = title;
		this.content = content;
		this.userNo = userNo;
		this.writeDate = writeDate;
		this.readNo = readNo;
		this.rating = rating;
		this.serviceNo = serviceNo;
		this.sUserNo = sUserNo;
	}
	public Review(String content, int rating, int serviceNo) {
		super();
		this.content = content;
		this.rating = rating;
		this.serviceNo = serviceNo;
	}
	
	
	
	public Review(int rating, int serviceNo, String sUserNo) {
		super();
		this.rating = rating;
		this.serviceNo = serviceNo;
		this.sUserNo = sUserNo;
	}
	public Review(String title, String content, String userNo) {
		super();
		this.title = title;
		this.content = content;
		this.userNo = userNo;
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
	public int getReadNo() {
		return readNo;
	}
	public void setReadNo(int readNo) {
		this.readNo = readNo;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
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
	@Override
	public String toString() {
		return "Review [boardNo=" + boardNo + ", title=" + title + ", content=" + content + ", userNo=" + userNo
				+ ", writeDate=" + writeDate + ", readNo=" + readNo + ", rating=" + rating + ", serviceNo=" + serviceNo
				+ ", sUserNo=" + sUserNo + "]";
	}
	
	
	
	
	
}
