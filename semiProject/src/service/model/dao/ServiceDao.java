package service.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import board.model.vo.Review;
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

	public ArrayList<Review> selectReviewList(Connection conn, String userNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		ArrayList<Review> re = new ArrayList<>();
		
		String query = "SELECT * FROM BOARD B JOIN REVIEW R ON(B.BOARD_NO = R.BOARD_NO) WHERE USER_NO = ? AND BOARD_CODE = 10";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Review review = 
						new Review(rset.getString("CONTENT"),
								rset.getInt("RATING"),
								rset.getInt("SERVICE_NO")
								);
				
				re.add(review);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		return re;
	}

	public String selectUserNo(Connection conn, int serviceNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String result = "";
		String query = "SELECT S_USER_NO FROM SERVICE WHERE SERVICE_NO =?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, serviceNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getString("S_USER_NO");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		return result;
	}
	
	
	public int inssertService(Connection conn, Service_ServiceTable_oh st) {
	      
	      
	      PreparedStatement pstmt = null;
	      int result1 = 0;
	      
	 //데이터가 없어서 임의의 값 넣음 
	   String query = "INSERT INTO SERVICE VALUES(SEQ_SERVICE.NEXTVAL,'서비스유저넘버',?,?,\r\n" + 
	         "DEFAULT,DEFAULT,DEFAULT,'게시판유저넘버',?,?,?,TO_DATE(?,'YYYYMMDD HH24:MI'),?,?,TO_DATE(?,'HH24:MI') ,\r\n" + 
	         "TO_DATE(?,'HH24:MI'),?,SYSDATE,?)";
	      
	   
	      try {
	         pstmt = conn.prepareStatement(query);
	         pstmt.setString(1, st.getSaleInfo());
	         pstmt.setString(2, st.getAvailableArea());
	         pstmt.setString(3, st.getSaleMethod());
	         pstmt.setString(4, st.getSubject());
	         pstmt.setString(5,st.getCategoryCode());
	         pstmt.setString(6, st.getDeadline());
	         pstmt.setInt(7,Integer.valueOf(st.getPriceBidding()));
	         pstmt.setInt(8, Integer.valueOf(st.getPriceSale()));
	         pstmt.setString(9, st.getContactTime_start());
	         pstmt.setString(10, st.getContactTime_finish());
	         pstmt.setString(11, st.getTitle());
	         pstmt.setString(12, st.getsExplain());
	         
	         result1 = pstmt.executeUpdate();
	         System.out.println("반환값은 : " + result1);
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally {
	         close(pstmt);
	      }
	      return result1;
	   
	      /* 스플릿으로 잘라서 배열에 넣어줘서 배열 숫자만큼 돌려주기  */
	      
	      
	   }

	   public int insertService1(Connection conn, String[] day) {
	      PreparedStatement pstmt = null;
	         int result2 = 0;
	         String aaa = "";
	         
	         
	       //데이터 없어서 임의의 값 넣음 
	            String query = "INSERT INTO DAYS VALUES(?,28)";
	            //서비스번호 임시로 넣어둠 !
	            
	         try {
	            for(int i=0; i < day.length; i++) {
	            pstmt = conn.prepareStatement(query);
	                aaa = day[i];
	               pstmt.setString(1, aaa);

	               result2 = pstmt.executeUpdate();

	            System.out.println("가능 날짜 반환값은 : " + result2);
	            
	            }
	         } catch (SQLException e) {
	            e.printStackTrace();
	         }finally {
	            close(pstmt);
	         }
	         return result2;
	      
	      
	      

	   
	   }
	      
	
	



}
