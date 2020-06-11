package member.model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import member.model.vo.Member;
import member.model.vo.Seller;

import static common.JDBCTemplate.*;

public class MemberDao {

	public Member loginMember(Connection conn, Member member) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Member loginUser = null;
		
		String query = "SELECT * FROM MEMBER WHERE USER_ID=? AND USER_PWD=? AND STATUS = 'Y'";
		
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


	

	public int loginCheck(Connection conn, String userId, String userPwd) {

	
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		int result = 0;
		
		String query = "SELECT COUNT(*) FROM MEMBER WHERE USER_ID = ? AND USER_PWD=? ";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,userId);
			pstmt.setString(2, userPwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
	
				result = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return result;


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
	

	public int findIdCheck(Connection conn, String userName, String email) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		int result = 0;
		
		String query = "SELECT COUNT(*) FROM MEMBER WHERE USER_NAME = ? AND EMAIL=? ";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userName);
			pstmt.setString(2, email);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
	
				result = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return result;
	}


	public Member findId(Connection conn, String userName, String email) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Member member = null;
		
		String query = "SELECT * FROM MEMBER WHERE USER_NAME=? AND EMAIL=?";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, userName);
			pstmt.setString(2, email);
			
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
			close(rset);
			close(pstmt);
		}
		
		return member;
	}


	public ArrayList<Member> selectGradeList(Connection conn) {
		
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		String query="SELECT * FROM MEMBER";
		ArrayList<Member> gradeList=new ArrayList<Member>();
		
		try {
			pstmt=conn.prepareStatement(query);
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				
				Member m=new Member(rset.getInt("user_No"),
						rset.getString("user_Id"),
						rset.getString("user_Pwd"),
						rset.getString("user_Name"),
						rset.getInt("Birth"),
						rset.getString("phone"),
						rset.getString("email"),
						rset.getInt("point"),
						rset.getDate("enroll_Date"),
						rset.getDate("drop_Date"),
						rset.getString("status"),
						rset.getString("grade"),
						rset.getInt("grade_Tot"),
						rset.getString("profile"),
						rset.getString("sell_YN"),
						rset.getString("Review_YN")
						
						);
				gradeList.add(m);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		
		return gradeList;
	}


	public ArrayList<Seller> selectSellerList(Connection conn) {
		
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		String query="SELECT * FROM SELLER";
		ArrayList<Seller> sellerList=new ArrayList<>();
		
		try {
			pstmt=conn.prepareStatement(query);
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				
				Seller s=new Seller(rset.getInt("s_user_No"),
									rset.getInt("report_Num"),
									rset.getInt("sell_Count")
									
						
						);
				sellerList.add(s);
			
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		
		return sellerList;
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
