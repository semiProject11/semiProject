package board.model.vo;

import java.io.Serializable;

public class Pagination implements Serializable{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -87160770839993671L;
	private int currentPage; //현재 페이지
	private int listCount; 	 //총 게시글 수
	private int limit;		//한 페이지에 들어갈 게시글 수
	private int maxPage;	//페이지의 총 마지막 페이지
	private int startPage;	//보여지는 페이지의 첫번째 페이지
	private int endPage;	//보여지는 페이지의 마지막 페이지
	
	
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
