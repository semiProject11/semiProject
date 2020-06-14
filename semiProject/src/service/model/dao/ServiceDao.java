package service.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import service.model.vo.ServiceBuyList;
import service.model.vo.Service_Category;
import service.model.vo.Service_List;
import service.model.vo.Service_ServiceTable_oh;

public class ServiceDao {

	public ArrayList<Service_List> selectTradeList(Connection conn) {
		
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		String query="SELECT * FROM LIST L JOIN SERVICE S ON(L.SERVICE_NO=S.SERVICE_NO) JOIN MEMBER M ON(L.B_USER_NO=M.USER_NO)";
		ArrayList<Service_List> tradeList=new ArrayList<>();
		
		try {
			pstmt=conn.prepareStatement(query);
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				
				Service_List s=new Service_List(rset.getInt("service_no"),
												rset.getDate("trade_date"),
												rset.getString("s_user_no"),
												rset.getString("b_user_no"),
												rset.getString("refund_yn"));
				tradeList.add(s);
				
			}
			
			
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		
		return tradeList;
	}

	public ArrayList<Service_ServiceTable_oh> selectServiceList(Connection conn) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		String query="SELECT * FROM LIST L JOIN SERVICE S ON(L.SERVICE_NO=S.SERVICE_NO) JOIN MEMBER M ON(L.B_USER_NO=M.USER_NO)";
		ArrayList<Service_ServiceTable_oh> serviceList=new ArrayList<>();
		
		try {
			pstmt=conn.prepareStatement(query);
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				
				Service_ServiceTable_oh s=new Service_ServiceTable_oh
									(rset.getInt("service_no"),
									rset.getString("s_user_no"),
									rset.getString("category_code"),
									rset.getString("title"),
									rset.getString("salemethod"),
									rset.getInt("price_sale"),
									rset.getInt("price_bidding"),
									rset.getString("deadline"),
									rset.getString("subject"),
									rset.getString("s_explain"),
									rset.getString("sale_info"),
									rset.getString("available_area"),
									rset.getString("contacttime_start"),
									rset.getString("contacttime_finish"),
									rset.getInt("readcount"),
									rset.getInt("file_count"),
									rset.getString("file_yn"),
									rset.getString("b_user_no"),
									rset.getDate("register_date"));
		
				serviceList.add(s);
				
			}
			
			
			} catch (SQLException e) {
				
				e.printStackTrace();
			}finally {
				close(pstmt);
				close(rset);
			}
			
		return serviceList;
	}

	public Service_List selectTrade(Connection conn, int service_no) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		String query="SELECT * FROM LIST WHERE SERVICE_NO=?";
		Service_List trade=new Service_List();
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, service_no);
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				
				trade=new Service_List(rset.getInt("service_no"),
												rset.getDate("trade_date"),
												rset.getString("s_user_no"),
												rset.getString("b_user_no"),
												rset.getString("refund_yn"));
			
			}
			
			
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		
		return trade;
	}

	public Service_ServiceTable_oh selectTradeServ(Connection conn, int service_no) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		String query="SELECT * FROM SERVICE WHERE SERVICE_NO=?";
		Service_ServiceTable_oh service=new Service_ServiceTable_oh();
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, service_no);
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				
				service=new Service_ServiceTable_oh
									(rset.getInt("service_no"),
									rset.getString("s_user_no"),
									rset.getString("category_code"),
									rset.getString("title"),
									rset.getString("salemethod"),
									rset.getInt("price_sale"),
									rset.getInt("price_bidding"),
									rset.getString("deadline"),
									rset.getString("subject"),
									rset.getString("s_explain"),
									rset.getString("sale_info"),
									rset.getString("available_area"),
									rset.getString("contacttime_start"),
									rset.getString("contacttime_finish"),
									rset.getInt("readcount"),
									rset.getInt("file_count"),
									rset.getString("file_yn"),
									rset.getString("b_user_no"),
									rset.getDate("register_date"));
		
		
				
			}
			
			
			} catch (SQLException e) {
				
				e.printStackTrace();
			}finally {
				close(pstmt);
				close(rset);
			}
			
		return service;
	}

	public Service_Category selectTradeCategory(Connection conn, int service_no) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		String query="SELECT * FROM LIST L JOIN SERVICE S ON(L.SERVICE_NO=S.SERVICE_NO) JOIN CATEGORY C ON(C.CATEGORY_CODE=S.CATEGORY_CODE) WHERE L.SERVICE_NO=?";
		Service_Category category=null;
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1,service_no);
			
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				
				category=new Service_Category(rset.getString("category_code"),rset.getString("category_name"));
				
			}
			
			
			
			
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
	
		
		return category;
	}

	public int getBuyListCount(Connection conn, String userNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		String query = "SELECT COUNT(*) C FROM SERVICE WHERE B_USER_NO = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt("C");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		
		
		return result;
	}

	public ArrayList<ServiceBuyList> selectBuyServiceList(Connection conn, int currentPage, int limit, String userNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		ArrayList<ServiceBuyList> bsList = new ArrayList<>();
		
		int starRow = (currentPage-1)*limit+1;
		int endRow = currentPage * limit;
		
		String query = "SELECT * FROM (SELECT ROWNUM RNUM, S.* FROM SERVICE_BUY_LIST S WHERE B_USER_NO = ? ORDER BY 4 DESC) WHERE RNUM BETWEEN ? AND ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userNo);
			pstmt.setInt(2, starRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				ServiceBuyList service = 
						new ServiceBuyList(rset.getString("CHANGE_NAME"),
								rset.getString("TITLE"),
								rset.getDate("TRADE_DATE"),
								rset.getString("USER_NAME"),
								rset.getString("PHONE"),
								rset.getInt("SERVICE_NO"),
								rset.getString("B_USER_NO"));
				
				bsList.add(service);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		
		return bsList;
	}



}
