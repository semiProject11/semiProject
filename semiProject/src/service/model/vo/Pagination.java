package service.model.vo;

import java.io.Serializable;

public class Pagination implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 40307648633940241L;
	private int currentPage;	// 현제페이지
	private int listCount;		// 저장된 개시물 개수
	private int limit;			// 연산에 사용된 수
	private int maxPage;		// 마지막 페이지 번호
	private int startPage;		// 시작 페이지 번호
	private int endPage;		// 마지막 페이지 번호
	public Pagination() {
		super();
	}
	public Pagination(int currentPage, int listCount, int limit, int maxPage, int startPage, int endPage) {
		super();
		this.currentPage = currentPage;
		this.listCount = listCount;
		this.limit = limit;
		this.maxPage = maxPage;
		this.startPage = startPage;
		this.endPage = endPage;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getListCount() {
		return listCount;
	}
	public void setListCount(int listCount) {
		this.listCount = listCount;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public int getMaxPage() {
		return maxPage;
	}
	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	@Override
	public String toString() {
		return "Pagination [currentPage=" + currentPage + ", listCount=" + listCount + ", limit=" + limit + ", maxPage="
				+ maxPage + ", startPage=" + startPage + ", endPage=" + endPage + "]";
	}
	
	
}	
