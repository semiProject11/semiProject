package service.model.vo;

import java.io.Serializable;

public class Service_Category implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -7125783914619965678L;
	private String category_code; 		//카테고리 코드
	private String category_name;		//카테고리명
	
	
	
	
	
	public Service_Category() {
		super();
	}





	public Service_Category(String category_code, String category_name) {
		super();
		this.category_code = category_code;
		this.category_name = category_name;
	}





	public String getCategory_code() {
		return category_code;
	}





	public void setCategory_code(String category_code) {
		this.category_code = category_code;
	}





	public String getCategory_name() {
		return category_name;
	}





	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}





	public static long getSerialversionuid() {
		return serialVersionUID;
	}





	@Override
	public String toString() {
		return "Service_Category [category_code=" + category_code + ", category_name=" + category_name + "]";
	}

	
	
}
