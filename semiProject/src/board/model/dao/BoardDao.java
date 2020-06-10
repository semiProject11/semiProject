package board.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import board.model.vo.Board;

public class BoardDao {

	public int getListCount(Connection conn) {
		PreparedStatement pstmt=null;
		int result=0;
		String query="SELECT COUNT(*) FROM SERVICE";
		
		try {
			pstmt=conn.prepareStatement(query);
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		
		return result;
	}

	public ArrayList selectList(Connection conn, int currentPage, int limit) {
		
		
		//★★★★쿼리문이랑 event객체는 테스트용으로 순번을 위해 뷰 만들고 차후 새로 수정해야함
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		ArrayList list=new ArrayList<>();
		String query="SELECT * FROM SERVICE WHERE S_USER_NO=1"; //이벤트 리스트뽑는거라 작성자가 admin인걸로 바꿔줘야하고 순번도 다시 매겨줘야함
		
		try {
			pstmt=conn.prepareStatement(query);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
		
				Board event=new Board(rs.getInt("service_no"),
											rs.getString("S_TITLE"),
											rs.getDate("REGISTER_DATE"));
											
					list.add(event);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		
		
		return list;
	}

}
