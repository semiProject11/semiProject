package member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import member.model.vo.Member;

import static common.JDBCTemplate.*;

public class MemberDao {

	public Member loginMember(Connection conn, Member member) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Member loginUser = null;
		
		String query = "SELECT * FROM MEMBER WHERE USER_ID=? AND USER_PWD=? AND STATUS = 'N'";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, member.getUserId());
			pstmt.setString(2, member.getUserPwd());
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				loginUser = new Member(rset.getInt("USER_NO"),
										rset.getString("USER_ID"),
										rset.getString("USER_PWD"),
										rset.getString("USER_NAME"),
										rset.getInt("BIRTH"),
										rset.getString("PHONE"),
										rset.getString("EMAIL"),
										rset.getInt("POINT"),
										rset.getDate("ENROLL_DATE"),
										rset.getDate("DROP_DATE"),
										rset.getString("STATUS"),
										rset.getString("GRADE"),
										rset.getInt("GRADE_TOT"),
										rset.getString("PROFILE"),
										rset.getString("SELL_YN"),
										rset.getString("REVIEW_YN"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return loginUser;
	}

	public Member selectMember(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Member member = null;
		
		String query = "SELECT * FROM MEMBER WHERE USER_ID=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				member = new Member(rset.getInt("USER_NO"),
						rset.getString("USER_ID"),
						rset.getString("USER_PWD"),
						rset.getString("USER_NAME"),
						rset.getInt("BIRTH"),
						rset.getString("PHONE"),
						rset.getString("EMAIL"),
						rset.getInt("POINT"),
						rset.getDate("ENROLL_DATE"),
						rset.getDate("DROP_DATE"),
						rset.getString("STATUS"),
						rset.getString("GRADE"),
						rset.getInt("GRADE_TOT"),
						rset.getString("PROFILE"),
						rset.getString("SELL_YN"),
						rset.getString("REVIEW_YN"));
				
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return member;
	}

	public int selectBCount(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int sellCount = 0;
		
		String query = "SELECT SELL_COUNT FROM MEMBER JOIN SELLER ON(USER_NO = S_USER_NO) WHERE USER_ID = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				sellCount = rset.getInt("SELL_COUNT");				
				
			}			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		
		return sellCount;
	}

	public int selectSCount(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int buyCount = 0;
		
		String query = "SELECT BUY_COUNT FROM MEMBER JOIN BUYER ON(USER_NO = B_USER_NO) WHERE USER_ID = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				buyCount = rset.getInt("BUY_COUNT");					
			}			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		
		return buyCount;
	}

}
