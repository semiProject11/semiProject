package service.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDao;
import board.model.vo.Inquiary;
import board.model.vo.Review;
import service.model.dao.ServiceDao;
import service.model.vo.Service;
import service.model.vo.ServiceBuyList;
import service.model.vo.ServiceSellList;
import service.model.vo.Service_Category;
import service.model.vo.Service_DaysTable_oh;
import service.model.vo.Service_List;
import service.model.vo.Service_ServiceTable_oh;

public class Service_Service {

	public ArrayList<Service_List> selectTradeList() {
		
		Connection conn=getConnection();
		ArrayList<Service_List> tradeList=new ServiceDao().selectTradeList(conn);
		close(conn);
		System.out.println("서비스단에서:"+tradeList);
		return tradeList;
	}
	

	public ArrayList<Service_ServiceTable_oh> selectServiceList() {
		Connection conn=getConnection();
		ArrayList<Service_ServiceTable_oh> serviceList=new ServiceDao().selectServiceList(conn);
		close(conn);
		System.out.println("서비스단에서:"+serviceList);
		return serviceList;
		
		
	}


	public Service_List selectTrade(int service_no) {
		Connection conn=getConnection();
		Service_List trade=new ServiceDao().selectTrade(conn,service_no);
		close(conn);
		System.out.println("서비스단에서:"+trade);
		return trade;
	}


	public Service_ServiceTable_oh selectTradeServ(int service_no) {
		Connection conn=getConnection();
		Service_ServiceTable_oh service=new ServiceDao().selectTradeServ(conn,service_no);
		close(conn);
		System.out.println("서비스단에서:"+service);
		return service;
	}


	public Service_Category selectTradeCategory(int service_no) {
		Connection conn=getConnection();
		Service_Category category=new ServiceDao().selectTradeCategory(conn,service_no);
		close(conn);
		System.out.println("서비스단에서:"+category);
		return category;
	}


	public int getBuyListCount(String userNo) {
		Connection conn=getConnection();
		int result = new ServiceDao().getBuyListCount(conn, userNo);
		
		
		close(conn);
		return result;
	}


	public ArrayList<ServiceBuyList> selectBuyServiceList(int currentPage, int limit, String userNo) {
		Connection conn=getConnection();
		
		ArrayList<ServiceBuyList> bsList = new ServiceDao().selectBuyServiceList(conn, currentPage, limit, userNo);
		
		close(conn);
		
		
		
		return bsList;
	}


	public ArrayList<Review> selectReviewList(String userNo) {
		Connection conn=getConnection();
		ArrayList<Review> re = new ServiceDao().selectReviewList(conn, userNo);
		
		close(conn);
		return re;
	}


	
	 public int insertService(Service_ServiceTable_oh st, String[] day) {
	      Connection conn = getConnection();
	      ServiceDao sDao = new ServiceDao();
	      
	      int result = sDao.inssertService(conn,st);
	      int result2 = sDao.insertService1(conn, day);
	      
	      if(result >0 && result2 >0) {
	         commit(conn);
	      }else {
	         rollback(conn);
	      }
	      close(conn);
	      return result;
	   }


	public Service selectServiceReview(int board_no) {
		Connection conn = getConnection();
		
		Service service = new ServiceDao().selectServiceReview(conn,board_no);
	
		close(conn);
		return service;
	}


	public ArrayList<Service> selectS_ReivewList() {
		Connection conn = getConnection();
		
		ArrayList<Service> sList = new ServiceDao().selectS_ReviewList(conn);

		close(conn);
		
		return sList;
	}


	public ArrayList<Service_Category> selectSC_ReivewList() {
		Connection conn = getConnection();
		
		ArrayList<Service_Category> scList = new ServiceDao().selectSC_ReviewList(conn);

		close(conn);
		
		return scList;

	}


	public ArrayList<Service_List> selectSL_ReivewList() {
		Connection conn = getConnection();
		
		ArrayList<Service_List> slList = new BoardDao().selectSL_ReviewList(conn);

		close(conn);
		
		return slList;
	}


	public Service_List selectLServiceReview(int board_no) {
		
		Connection conn = getConnection();
		
		Service_List lService = new ServiceDao().selectLServiceReview(conn, board_no);
	
		close(conn);
		return lService;
	}


	public Service_Category selectCServiceReview(int board_no) {
		
		Connection conn = getConnection();
		
		Service_Category cService = new ServiceDao().selectCServiceReview(conn, board_no);
	
		close(conn);
		return cService;
	}


	public ServiceBuyList selectBuyListServiceReview(int board_no) {
		
		Connection conn = getConnection();
		
		ServiceBuyList sbService = new ServiceDao().selectBuyListServiceReview(conn, board_no);
	
		close(conn);
		return sbService;
	}


	public int getSellListCount(String userNo) {
		Connection conn=getConnection();
		int result = new ServiceDao().getSellListCount(conn, userNo);
		
		
		close(conn);
		return result;
	}


	public ArrayList<ServiceSellList> selectSellServiceList(int currentPage, int limit, String userNo) {
		Connection conn=getConnection();
		
		ArrayList<ServiceSellList> bsList = new ServiceDao().selectSellServiceList(conn, currentPage, limit, userNo);
		
		close(conn);
		
		
		
		return bsList;
	}


	
	
	
	
	
}
