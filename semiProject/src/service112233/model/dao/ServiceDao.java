package service112233.model.dao;

import java.sql.PreparedStatement;

import com.sun.corba.se.pept.transport.Connection;

import service112233.model.vo.Service;

public class ServiceDao {

	public int insertService(Connection conn, Service sv) {
		PreparedStatement pstmt = null;
		int result = 0;
//		String query = "INSERT INTO SERVICE VALUES (?,?,?,?,?,?,?,?,?,?) ";
		
		//테이블 3개 insert join문 ㅠ 
		
		try {
		pstmt.conn.prepareStatememt(query);
		pstmt.setString(1,sv.getCategoryName());
		pstmt.setString(2, sv.getsTitle());
		pstmt.setString(3, sv.getSaleMethod());
		pstmt.setInt(4,Integer.valueOf(sv.getSalePrice()));
		pstmt.setInt(5, Integer.valueOf(sv.getBiddingPrice()));
		pstmt.setString(5, sv.getDeadline());
		pstmt.setString(6, sv.getSubject());
		pstmt.setString(7, sv.getsDetailContent());
		pstmt.setString(8, sv.getAvailableDate());
		pstmt.setString(9, sv.getContacTime_start());
		pstmt.setString(10, sv.getContacTime_finish());
		
			
		result = pstmt.executeUpdate();
				
				
				
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
