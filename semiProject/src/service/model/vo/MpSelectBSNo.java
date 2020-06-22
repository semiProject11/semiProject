package service.model.vo;

import java.io.Serializable;

public class MpSelectBSNo implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1228138414534149143L;
	private String buyerNo;			// 구매자 번호
	private String sellerNo;		// 판매자 번호
	private int price;				// 가격
	public MpSelectBSNo() {
		super();
	}
	public MpSelectBSNo(String buyerNo, String sellerNo, int price) {
		super();
		this.buyerNo = buyerNo;
		this.sellerNo = sellerNo;
		this.price = price;
	}
	public String getBuyerNo() {
		return buyerNo;
	}
	public void setBuyerNo(String buyerNo) {
		this.buyerNo = buyerNo;
	}
	public String getSellerNo() {
		return sellerNo;
	}
	public void setSellerNo(String sellerNo) {
		this.sellerNo = sellerNo;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "MpSelectBSNo [buyerNo=" + buyerNo + ", sellerNo=" + sellerNo + ", price=" + price + "]";
	}
	
	
}
