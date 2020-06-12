package member.model.dao;



import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import member.model.vo.Account;
import member.model.vo.Member;
import member.model.vo.Profile;
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
				loginUser = new Member(rset.getString("USER_NO"),
										rset.getString("USER_ID"),
										rset.getString("USER_PWD"),
										rset.getString("USER_NAME"),
										rset.getString("BIRTH"),
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
		System.out.println(userId);
		String query = "SELECT * FROM MEMBER WHERE USER_ID=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				member = new Member(rset.getString("USER_NO"),
						rset.getString("USER_ID"),
						rset.getString("USER_PWD"),
						rset.getString("USER_NAME"),
						rset.getString("BIRTH"),
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
				member = new Member(rset.getString("USER_NO"),
										rset.getString("USER_ID"),
										rset.getString("USER_PWD"),
										rset.getString("USER_NAME"),
										rset.getString("BIRTH"),
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
				
				Member m=new Member(rset.getString("user_No"),
						rset.getString("user_Id"),
						rset.getString("user_Pwd"),
						rset.getString("user_Name"),
						rset.getString("Birth"),
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

	public int insertProfile(Connection conn, Profile pf, String userNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		int userNo2 = Integer.valueOf(userNo); 
		
		
		String query = "INSERT INTO PROFILE_FILES VALUES(SEQ_FID.NEXTVAL, ?,?,?,?,SYSDATE,DEFAULT)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, userNo2);
			pstmt.setString(2, pf.getOrigin_name());
			pstmt.setString(3, pf.getChange_name());
			pstmt.setString(4, pf.getFile_path());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			
		}
		
			
		
		return result;
	}

	public String selectFileName(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String fileName = "";
		String query = "SELECT CHANGE_NAME FROM MEMBER M JOIN PROFILE_FILES P ON(P.USER_NO = M.USER_NO) WHERE M.USER_ID = ?"; 
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				fileName = rset.getString("CHANGE_NAME");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		return fileName;
	}




	public Member memberLogin(Connection conn, String userId) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Member mem = null;
		
		String query = "SELECT * FROM MEMBER WHERE USER_ID=?";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, userId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				mem = new Member(rset.getString("USER_NO"),
										rset.getString("USER_ID"),
										rset.getString("USER_PWD"),
										rset.getString("USER_NAME"),
										rset.getString("BIRTH"),
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
		
		return mem;
		
	}




	public int findPwdCheck(Connection conn, String userId, String userName, String email) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		int result = 0;
		
		String query = "SELECT COUNT(*) FROM MEMBER WHERE USER_ID=? AND USER_NAME = ? AND EMAIL=? ";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, userName);
			pstmt.setString(3, email);
			
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




	public int idCheck(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		int result = 0;
		
		String query = "SELECT COUNT(*) FROM MEMBER WHERE USER_ID = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,userId);
			
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





	
	public int profileEt(Connection conn, String userNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		String query = "SELECT count(*) c FROM MEMBER M JOIN PROFILE_FILES P ON(P.USER_NO = M.USER_NO) WHERE M.USER_NO = ?";
		int userNo2 = Integer.valueOf(userNo); 
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, userNo2);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt("c");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		
		return result;
	}




	public int changeProfile(Connection conn, Profile pf, String userNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		int userNo2 = Integer.valueOf(userNo); 
		
		
		String query = "UPDATE PROFILE_FILES SET ORIGIN_NAME=?, CHANGE_NAME=?, FILE_PATH=?, UPLOAD_DATE=SYSDATE WHERE USER_NO=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, pf.getOrigin_name());
			pstmt.setString(2, pf.getChange_name());
			pstmt.setString(3, pf.getFile_path());
			pstmt.setInt(4, userNo2);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			
		}
		
			
		
		return result;
	}




	public int chargeMoney(Connection conn, int userNo, int chMoney) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "UPDATE MEMBER SET POINT = ? WHERE USER_NO =?";
				
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, chMoney);
			pstmt.setInt(2, userNo);
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			
		}
		
		
		return result;
	}




	public int selectMemberPoint(Connection conn, int userNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		String query = "SELECT POINT FROM MEMBER WHERE USER_NO = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt("POINT");
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		return result;

	}




	public Account selectAccount(Connection conn, int userNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		Account ac = null;
		String query = "SELECT * FROM ACCOUNT WHERE USER_NO = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, userNo);
			rset = pstmt.executeQuery();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		return null;
	}
}
