package board.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Board implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -6409406789796536528L;
	
	private int board_no;			//게시글 번호
	private String title;			//제목
	private String content;			//내용
	private int user_no;			//작성자 회원번호
	private Date write_date;		//작성일자
	private int read_num;			//조회수
	private int board_code;			//게시물 코드
	private String board_status;	//삭제여부
	private String user_name;		//게시글 작성자명
	
	
	
	
	public Board(int board_no, String title, Date write_date) {
		super();
		this.board_no = board_no;
		this.title = title;
		this.write_date = write_date;
	}


	public Board() {
		super();
	}


	public Board(int board_no, String title, String content, int user_no, Date write_date, int read_num, int board_code,
			String board_status, String user_name) {
		super();
		this.board_no = board_no;
		this.title = title;
		this.content = content;
		this.user_no = user_no;
		this.write_date = write_date;
		this.read_num = read_num;
		this.board_code = board_code;
		this.board_status = board_status;
		this.user_name = user_name;
	}


	public int getBoard_no() {
		return board_no;
	}


	public void setBoard_no(int board_no) {
		this.board_no = board_no;
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


	public int getUser_no() {
		return user_no;
	}


	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}


	public Date getWrite_date() {
		return write_date;
	}


	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}


	public int getRead_num() {
		return read_num;
	}


	public void setRead_num(int read_num) {
		this.read_num = read_num;
	}


	public int getBoard_code() {
		return board_code;
	}


	public void setBoard_code(int board_code) {
		this.board_code = board_code;
	}


	public String getBoard_status() {
		return board_status;
	}


	public void setBoard_status(String board_status) {
		this.board_status = board_status;
	}


	public String getUser_name() {
		return user_name;
	}


	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "Board [board_no=" + board_no + ", title=" + title + ", content=" + content + ", user_no=" + user_no
				+ ", write_date=" + write_date + ", read_num=" + read_num + ", board_code=" + board_code
				+ ", board_status=" + board_status + ", user_name=" + user_name + "]";
	}
	
	
}