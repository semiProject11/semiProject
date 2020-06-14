package service.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Service_List implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -5052308582654982895L;
	
	private int service_no;			//서비스번호	
	private Date trade_date;		//거래일자
	private String s_user_no;		//판매자번호
	private String b_user_no;		//구매자번호
	private String refund_yn;		//환불여부
	
	
	
	public Service_List() {
		super();
	}
	public Service_List(int service_no, Date trade_date, String s_user_no, String b_user_no, String refund_yn) {
		super();
		this.service_no = service_no;
		this.trade_date = trade_date;
		this.s_user_no = s_user_no;
		this.b_user_no = b_user_no;
		this.refund_yn = refund_yn;
	}
	public int getService_no() {
		return service_no;
	}
	public void setService_no(int service_no) {
		this.service_no = service_no;
	}
	public Date getTrade_date() {
		return trade_date;
	}
	public void setTrade_date(Date trade_date) {
		this.trade_date = trade_date;
	}
	public String getS_user_no() {
		return s_user_no;
	}
	public void setS_user_no(String s_user_no) {
		this.s_user_no = s_user_no;
	}
	public String getB_user_no() {
		return b_user_no;
	}
	public void setB_user_no(String b_user_no) {
		this.b_user_no = b_user_no;
	}
	public String getRefund_yn() {
		return refund_yn;
	}
	public void setRefund_yn(String refund_yn) {
		this.refund_yn = refund_yn;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Service_List [service_no=" + service_no + ", trade_date=" + trade_date + ", s_user_no=" + s_user_no
				+ ", b_user_no=" + b_user_no + ", refund_yn=" + refund_yn + "]";
	}
	
	
	
	
	

}
