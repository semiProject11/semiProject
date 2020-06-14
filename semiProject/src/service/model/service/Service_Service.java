package service.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import service.model.dao.ServiceDao;
import service.model.vo.ServiceBuyList;
import service.model.vo.Service_Category;
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



	
	
	
	
	
}
