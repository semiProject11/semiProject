package member.model.dao;



import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import member.model.vo.Account;
import member.model.vo.Member;
import member.model.vo.Profile;
import member.model.vo.Seller;

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
		int buyCount = 0;
		
		String query = "SELECT BUYCOUNT FROM MEMBER JOIN BUYER ON(USER_NO = B_USER_NO) WHERE USER_ID = ?";
		
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				buyCount = rset.getInt("BUYCOUNT");				
				
			}			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		
		return buyCount;
	}

	public int selectSCount(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int sellCount = 0;
		
		String query = "SELECT SELLCOUNT FROM MEMBER JOIN SELLER ON(USER_NO = S_USER_NO) WHERE USER_ID = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				sellCount = rset.getInt("SELLCOUNT");					
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		
		return sellCount;

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
									rset.getInt("sellCount")
									
						
						);
				sellerList.add(s);
			
			}
			
		} catch (SQLException e) {
	
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




	public int chargeMoney(Connection conn, String userNo, int chMoney) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "UPDATE MEMBER SET POINT = ? WHERE USER_NO =?";
				
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, chMoney);
			pstmt.setString(2, userNo);
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			
		}
		
		
		return result;
	}




	public int selectMemberPoint(Connection conn, String userNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		String query = "SELECT POINT FROM MEMBER WHERE USER_NO = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userNo);
			
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





	public Account selectAccount(Connection conn, String userNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		Account ac = null;
		String query = "SELECT * FROM ACCOUNT WHERE USER_NO = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				ac = new Account(rset.getString("BANK"),
								rset.getString("ACCOUNT_HOLD"),								
								rset.getString("ACCOUNT"),
								rset.getString("USER_NO"));	
				}
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		
		
		return ac;
	}

	public int registerMember(Connection conn, Member member) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "INSERT INTO MEMBER VALUES(SEQ_ME.NEXTVAL, ?, ?, ?, ?, ?, ?, DEFAULT,SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, NULL, DEFAULT, DEFAULT)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getUserId());
			pstmt.setString(2, member.getUserPwd());
			pstmt.setString(3, member.getUserName());
			pstmt.setString(4, member.getUserBirth());
			pstmt.setString(5, member.getPhone());
			pstmt.setString(6, member.getEmail());
			
			result = pstmt.executeUpdate();
			System.out.println("Dao에서 회원 가입 후 반환값은  : " + result);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int registerMember(Connection conn, Account Account) {
		PreparedStatement pstmt = null;
		int result2 = 0;
		
		String query = "INSERT INTO ACCOUNT VALUES(?,?,?,SEQ_ME.CURRVAL) "; 
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, Account.getAccount());
			pstmt.setString(2, Account.getBank());
			pstmt.setString(3, Account.getAccount_hold());
			
			
			result2 = pstmt.executeUpdate();
			System.out.println("Dao에서 ACCOUNT 작성 후 반환 값은 : " + result2);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result2;
	}






	public ArrayList<Member> selectTradeS(Connection conn) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Member> memberList=new ArrayList<>();
		
		String query="SELECT * FROM LIST L \r\n" + 
				"JOIN MEMBER M ON(L.s_USER_NO=M.USER_NO)\r\n" + 
				"JOIN SERVICE S ON(L.SERVICE_NO=S.SERVICE_NO)";
		try {
			pstmt=conn.prepareStatement(query);
		
		
		rset=pstmt.executeQuery();
		
		while(rset.next()) {
		
		Member mem = new Member(rset.getString("S_USER_NO"),
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
		
		memberList.add(mem);
		
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		return memberList;
	}




	public ArrayList<Member> selectTradeB(Connection conn) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Member> memberList=new ArrayList<>();
		
		String query="SELECT * FROM LIST L JOIN SERVICE S ON(L.SERVICE_NO=S.SERVICE_NO) JOIN MEMBER M ON(L.B_USER_NO=M.USER_NO)";
		try {
			pstmt=conn.prepareStatement(query);
		
		
		rset=pstmt.executeQuery();
		
		while(rset.next()) {
		
		
		
		Member mem = new Member(rset.getString("B_USER_NO"),
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
		
		memberList.add(mem);
		
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		return memberList;
	}




	public Member selectTradeSel(Connection conn, int service_no) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		Member seller=null;
		
		String query="SELECT * FROM LIST L JOIN MEMBER M ON(L.S_USER_NO=M.USER_NO) JOIN SERVICE S ON(L.SERVICE_NO=S.SERVICE_NO) WHERE L.SERVICE_NO=?";
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, service_no);
		
		
		rset=pstmt.executeQuery();
		
		if(rset.next()) {
		
		seller = new Member(rset.getString("S_USER_NO"),
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
		}finally {
			close(pstmt);
			close(rset);
		}
		
		return seller;
	}




	public Member selectTradeBuy(Connection conn, int service_no) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		Member seller=null;
		
		String query="SELECT * FROM LIST L JOIN SERVICE S ON(L.SERVICE_NO=S.SERVICE_NO) JOIN MEMBER M ON(L.B_USER_NO=M.USER_NO)  WHERE L.SERVICE_NO=?";
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, service_no);
		
		
		rset=pstmt.executeQuery();
		
		if(rset.next()) {
		
		seller = new Member(rset.getString("S_USER_NO"),
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
		}finally {
			close(pstmt);
			close(rset);
		}
		
		return seller;
	}






	public int pointWithdraw(Connection conn, int withdraw, String userNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "UPDATE MEMBER SET POINT = ? WHERE USER_NO =?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, withdraw);
			pstmt.setString(2, userNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			
		}
		
		
		return result;
	}




	public int updateMember(Connection conn, Member member) {
		PreparedStatement pstmt = null;
		int result = 0;
		System.out.println("dao에서 맴버 수정 값 : "+  member.getUserPwd());
		System.out.println("dao에서 맴버 수정 값 : "+  member.getPhone());
		System.out.println("dao에서 맴버 수정 값 : "+  member.getEmail());
		System.out.println("dao에서 맴버 수정 값 : "+  member.getUserId());
		
		String query = "UPDATE MEMBER SET USER_PWD=?,PHONE=?,EMAIL=? WHERE USER_ID=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getUserPwd());
			pstmt.setString(2, member.getPhone());
			pstmt.setString(3, member.getEmail());
			pstmt.setString(4, member.getUserId());
			
			result = pstmt.executeUpdate();
			
			System.out.println("dao 멤버 수정후 result 값 : " + result);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}




	public int updateAccount(Connection conn, Account account) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "UPDATE ACCOUNT SET ACCOUNT=?,BANK=?,ACCOUNT_HOLD=? WHERE USER_NO=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, account.getAccount());
			pstmt.setString(2, account.getBank());
			pstmt.setString(3, account.getAccount_hold());
			pstmt.setString(4, account.getUserNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}




	public int changePwd(Connection conn, Member member) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "UPDATE MEMBER SET USER_PWD=? WHERE USER_ID=? AND USER_NAME=? AND EMAIL=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getUserPwd());
			pstmt.setString(2, member.getUserId());
			pstmt.setString(3, member.getUserName());
			pstmt.setString(4, member.getEmail());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		
		return result;
	}




	public int registerBuyer(Connection conn) {
		PreparedStatement pstmt = null;
		int result3 = 0;
		
		String query = "INSERT INTO BUYER VALUES(SEQ_ME.CURRVAL, 0, 0)";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			
			result3 = pstmt.executeUpdate();
			System.out.println("Dao에서 회원 가입 후 반환값은  : " + result3);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result3;
	}




	public int registerSeller(Connection conn) {
		PreparedStatement pstmt = null;
		int result4 = 0;
		
		String query = "INSERT INTO SELLER VALUES(SEQ_ME.CURRVAL, 0, 0)";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			
			result4 = pstmt.executeUpdate();
			System.out.println("Dao에서 회원 가입 후 반환값은  : " + result4);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result4;
	}




	public int emailCheck(Connection conn, String email) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		int result = 0;
		
		String query = "SELECT COUNT(*) FROM MEMBER WHERE EMAIL = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,email);
			
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

		System.out.println(result);
		return result;
	}
	
	

}
