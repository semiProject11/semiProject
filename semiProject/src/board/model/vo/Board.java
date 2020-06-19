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
	private String user_id;		//게시글 작성자명
	private int board_id;		//게시판 상의 번호
	
	
	
	
	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public int getBoard_id() {
		return board_id;
	}


	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}


	public Board(int board_no, String title, String content, int user_no, Date write_date, int read_num, int board_code,
			String board_status, String user_id, int board_id) {
		super();
		this.board_no = board_no;
		this.title = title;
		this.content = content;
		this.user_no = user_no;
		this.write_date = write_date;
		this.read_num = read_num;
		this.board_code = board_code;
		this.board_status = board_status;
		this.user_id = user_id;
		this.board_id = board_id;
	}


	public Board(int board_no, String title, String content, int user_no, Date write_date, int read_num, int board_code,
			String board_status, int board_id) {
		super();
		this.board_no = board_no;
		this.title = title;
		this.content = content;
		this.user_no = user_no;
		this.write_date = write_date;
		this.read_num = read_num;
		this.board_code = board_code;
		this.board_status = board_status;
		this.board_id = board_id;
	}


	public Board(int board_no, String title, String content, int board_code, String user_id) {
		super();
		this.board_no = board_no;
		this.title = title;
		this.content = content;
		this.board_code = board_code;
		this.user_id = user_id;
	}


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
			String board_status) {
		super();
		this.board_no = board_no;
		this.title = title;
		this.content = content;
		this.user_no = user_no;
		this.write_date = write_date;
		this.read_num = read_num;
		this.board_code = board_code;
		this.board_status = board_status;
	}


	public Board(int board_no, String title, String content, int user_no, Date write_date, int read_num, int board_code,
			String board_status, String user_id) {
		super();
		this.board_no = board_no;
		this.title = title;
		this.content = content;
		this.user_no = user_no;
		this.write_date = write_date;
		this.read_num = read_num;
		this.board_code = board_code;
		this.board_status = board_status;
		this.user_id = user_id;
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


	public String getuser_id() {
		return user_id;
	}


	public void setuser_id(String user_id) {
		this.user_id = user_id;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "Board [board_no=" + board_no + ", title=" + title + ", content=" + content + ", user_no=" + user_no
				+ ", write_date=" + write_date + ", read_num=" + read_num + ", board_code=" + board_code
				+ ", board_status=" + board_status + ", user_id=" + user_id + ", board_id=" + board_id + "]";
	}
	
	
}