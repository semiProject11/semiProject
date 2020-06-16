package service.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import service.model.dao.ServiceDao;
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


	
	
//  public int insertService1(Service_ServiceTable_oh st) {
//  
//     Connection conn;
//     
//     conn = getConnection();
//  
//     int result1 = new ServiceDao().insertService1(conn,st);
//  
//  if(result1 > 0) {
//     System.out.println("커밋됨");
//     commit(conn);
//  }else {
//     System.out.println("롤백됨");
//     rollback(conn);
//  }
//  close(conn);
//  
//  return result1;
//}

public int insertService(Service_ServiceTable_oh st, Service_DaysTable_oh sd) {
  Connection conn = getConnection();
  ServiceDao sDao = new ServiceDao();
  
  int result = sDao.inssertService(conn,st);
  int result2 = sDao.insertService1(conn, sd);
  
  if(result>0 && result2>0) {
     commit(conn);
  }else {
     rollback(conn);
  }
  close(conn);
  return result;
}

  




	
	
	
	
	
}
