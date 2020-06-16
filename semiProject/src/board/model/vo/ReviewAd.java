package board.model.vo;

import java.io.Serializable;

public class ReviewAd implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4731081338440423089L;

	private int board_no;	// 리뷰 번호
	private int rating;		// 평점
	private int service_no; // 서비스 번호
	
	
	public ReviewAd() {
	}


	public ReviewAd(int board_no, int rating, int service_no) {
		this.board_no = board_no;
		this.rating = rating;
		this.service_no = service_no;
	}


	public int getBoard_no() {
		return board_no;
	}


	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}


	public int getRating() {
		return rating;
	}


	public void setRating(int rating) {
		this.rating = rating;
	}


	public int getService_no() {
		return service_no;
	}


	public void setService_no(int service_no) {
		this.service_no = service_no;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "ReviewAd [board_no=" + board_no + ", rating=" + rating + ", service_no=" + service_no + "]";
	}
}
