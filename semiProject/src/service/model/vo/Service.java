package service.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Service implements Serializable{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 718624158012136231L;
	
	private int serviceNo;			// 서비스 번호
	private int s_user_no;			// 판매자 번호
	private String sale_info;		// 판매자 정보
	private String available_area;  // 가능지역
	private Date contactTime;		// 조회수
	private String image;			
	private int readCount;
	private int file_count;
	private String file_YN;
	private int b_user_no;
	private String saleMethod;
	private Date deadline;
	private int price_bidding;
	private int price_sale;
	private String subject;			// 관련주제
	private String category_code;	// 카테고리 코드
	private String file_level;		// 
	private String division;
	
	public Service() {

	}

	public Service(int serviceNo, int s_user_no, String sale_info, String available_area, Date contactTime,
			String image, int readCount, int file_count, String file_YN, int b_user_no, String saleMethod,
			Date deadline, int price_bidding, int price_sale, String subject, String category_code, String file_level,
			String division) {
		super();
		this.serviceNo = serviceNo;
		this.s_user_no = s_user_no;
		this.sale_info = sale_info;
		this.available_area = available_area;
		this.contactTime = contactTime;
		this.image = image;
		this.readCount = readCount;
		this.file_count = file_count;
		this.file_YN = file_YN;
		this.b_user_no = b_user_no;
		this.saleMethod = saleMethod;
		this.deadline = deadline;
		this.price_bidding = price_bidding;
		this.price_sale = price_sale;
		this.subject = subject;
		this.category_code = category_code;
		this.file_level = file_level;
		this.division = division;
	}

	public int getServiceNo() {
		return serviceNo;
	}

	public void setServiceNo(int serviceNo) {
		this.serviceNo = serviceNo;
	}

	public int getS_user_no() {
		return s_user_no;
	}

	public void setS_user_no(int s_user_no) {
		this.s_user_no = s_user_no;
	}

	public String getSale_info() {
		return sale_info;
	}

	public void setSale_info(String sale_info) {
		this.sale_info = sale_info;
	}

	public String getAvailable_area() {
		return available_area;
	}

	public void setAvailable_area(String available_area) {
		this.available_area = available_area;
	}

	public Date getContactTime() {
		return contactTime;
	}

	public void setContactTime(Date contactTime) {
		this.contactTime = contactTime;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}

	public int getFile_count() {
		return file_count;
	}

	public void setFile_count(int file_count) {
		this.file_count = file_count;
	}

	public String getFile_YN() {
		return file_YN;
	}

	public void setFile_YN(String file_YN) {
		this.file_YN = file_YN;
	}

	public int getB_user_no() {
		return b_user_no;
	}

	public void setB_user_no(int b_user_no) {
		this.b_user_no = b_user_no;
	}

	public String getSaleMethod() {
		return saleMethod;
	}

	public void setSaleMethod(String saleMethod) {
		this.saleMethod = saleMethod;
	}

	public Date getDeadline() {
		return deadline;
	}

	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}

	public int getPrice_bidding() {
		return price_bidding;
	}

	public void setPrice_bidding(int price_bidding) {
		this.price_bidding = price_bidding;
	}

	public int getPrice_sale() {
		return price_sale;
	}

	public void setPrice_sale(int price_sale) {
		this.price_sale = price_sale;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getCategory_code() {
		return category_code;
	}

	public void setCategory_code(String category_code) {
		this.category_code = category_code;
	}

	public String getFile_level() {
		return file_level;
	}

	public void setFile_level(String file_level) {
		this.file_level = file_level;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Service [serviceNo=" + serviceNo + ", s_user_no=" + s_user_no + ", sale_info=" + sale_info
				+ ", available_area=" + available_area + ", contactTime=" + contactTime + ", image=" + image
				+ ", readCount=" + readCount + ", file_count=" + file_count + ", file_YN=" + file_YN + ", b_user_no="
				+ b_user_no + ", saleMethod=" + saleMethod + ", deadline=" + deadline + ", price_bidding="
				+ price_bidding + ", price_sale=" + price_sale + ", subject=" + subject + ", category_code="
				+ category_code + ", file_level=" + file_level + ", division=" + division + "]";
	}
	
	
	
	
	
}