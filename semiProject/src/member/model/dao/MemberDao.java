package member.model.dao;



import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import board.model.vo.Board;
import board.model.vo.Files;
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


	public ArrayList<Member> selectGradeList(Connection conn, int currentPage, int limit) {
		
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		
		int startRow = (currentPage-1) * limit + 1;
		int endRow = currentPage * limit;
		System.out.println("startRow : " + startRow + ", endRow : " + endRow);
		
		String query="SELECT * FROM (SELECT ROWNUM RNUM,M.*,S.* FROM MEMBER M LEFT JOIN SELLER S ON(S.S_USER_NO=M.USER_NO) LEFT JOIN BUYER B ON(B.B_USER_NO=M.USER_NO) WHERE STATUS='Y') where (rnum between ? and ?) ORDER BY RNUM DESC";
		ArrayList<Member> gradeList=new ArrayList<Member>();
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1,startRow);
			pstmt.setInt(2, endRow);
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				
				Member m=new Member(rset.getString("RNUM"), //회원번호대신 GRADELIST VIEW의 식별번호를 받아옴
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


	public ArrayList<Seller> selectSellerList(Connection conn, int currentPage, int limit) {
		
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		int startRow = (currentPage-1) * limit + 1;
		int endRow = currentPage * limit;
	
		String query="SELECT * FROM (SELECT ROWNUM RNUM,M.*,S.* FROM MEMBER M LEFT JOIN SELLER S ON(S.S_USER_NO=M.USER_NO) LEFT JOIN BUYER B ON(B.B_USER_NO=M.USER_NO) WHERE STATUS='Y') where (rnum between ? and ?) ORDER BY RNUM DESC";
		ArrayList<Seller> sellerList=new ArrayList<>();
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1,startRow);
			pstmt.setInt(2,endRow);
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
		
		
		String query = "INSERT INTO PROFILE_FILES VALUES(SEQ_MFID.NEXTVAL, ?,?,?,?,SYSDATE,DEFAULT)";
		
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
		
		String query = "INSERT INTO MEMBER VALUES(SEQ_MEMBER.NEXTVAL, ?, ?, ?, ?, ?, ?, DEFAULT,SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, NULL, DEFAULT, DEFAULT)";
		
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
		
		String query = "INSERT INTO ACCOUNT VALUES(?,?,?,SEQ_MEMBER.CURRVAL) "; 
		
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






	public ArrayList<Member> selectTradeS(Connection conn, int currentPage, int limit) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Member> memberList=new ArrayList<>();
		int startRow = (currentPage-1) * limit + 1;
		int endRow = currentPage * limit;
		String query="SELECT * FROM(SELECT ROWNUM RNUM,L.* FROM(SELECT * FROM LIST L LEFT JOIN SERVICE S ON(L.SERVICE_NO=S.SERVICE_NO) LEFT JOIN MEMBER M ON(S.S_USER_NO=M.USER_NO))L  ORDER BY TRADE_DATE DESC) WHERE RNUM BETWEEN ? AND ?";
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1,startRow);
			pstmt.setInt(2, endRow);
		
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
		
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		return memberList;
	}




	public ArrayList<Member> selectTradeB(Connection conn, int currentPage, int limit) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Member> memberList=new ArrayList<>();
		int startRow = (currentPage-1) * limit + 1;
		int endRow = currentPage * limit;
		
		String query="SELECT * FROM(SELECT ROWNUM RNUM,L.* FROM(SELECT * FROM LIST L LEFT JOIN SERVICE S ON(L.SERVICE_NO=S.SERVICE_NO) LEFT JOIN MEMBER M ON(S.B_USER_NO=M.USER_NO))L  ORDER BY TRADE_DATE DESC) WHERE RNUM BETWEEN ? AND ?";
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1,startRow);
			pstmt.setInt(2,endRow);
		
		
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
		
		String query = "INSERT INTO BUYER VALUES(SEQ_MEMBER.CURRVAL, 0, 0)";
		
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
		
		String query = "INSERT INTO SELLER VALUES(SEQ_MEMBER.CURRVAL, 0, 0)";
		
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




	public int memberWithdrawal(Connection conn, String userNo) {
		PreparedStatement pstmt = null;
		
		int result = 0;
		String query = "UPDATE MEMBER SET STATUS = 'N' WHERE USER_NO = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}




	public String memberPwd(Connection conn, String userNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String pwd = "";
		
		String query = "SELECT USER_PWD FROM MEMBER WHERE USER_NO = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				pwd = rset.getString("USER_PWD");
			}
			
		} catch (SQLException e) {			
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		
		return pwd;
	}




	public int memberGradeTot(Connection conn, String sUserNo, int rating) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "UPDATE MEMBER SET GRADE_TOT = ? WHERE USER_NO = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, rating);
			pstmt.setString(2, sUserNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return result;
	}




	public int selectRating(Connection conn, String sUserNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		
		String query = "SELECT GRADE_TOT FROM MEMBER WHERE USER_NO = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sUserNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt("GRADE_TOT");
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		
		return result;
	}
	
	







	public int updateGrade(Connection conn, ArrayList<String> userNo, ArrayList<String> Grade) {
		int result=0;
		PreparedStatement pstmt=null;
		
		//회원번호랑 바꿀 등급을  받아야함 
		String query="UPDATE MEMBER SET GRADE=? WHERE USER_NO=?";
		try {
			
			for(int i=0; i<Grade.size(); i++) {
			pstmt=conn.prepareStatement(query);
			
			pstmt.setString(1, Grade.get(i));
			pstmt.setString(2, userNo.get(i));

			result+=pstmt.executeUpdate();
			System.out.println(result);
			}
			
		} catch (SQLException e) {			
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}




	public int updateBuyer(Connection conn, ArrayList<String> arr) {
		int result=0;
		PreparedStatement pstmt=null;
		System.out.println("DAo에 옴");
		String s="";
		
		String query="UPDATE MEMBER SET REVIEW_YN='N' WHERE USER_NO=?";
	
			try {
				
				
				for(int i=0; i<arr.size(); i++){
				s=arr.get(i);
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1, arr.get(i));
		
				result+=pstmt.executeUpdate();
				
				}
				
			} catch (SQLException e) {
			
				e.printStackTrace();
			} finally {
				
				close(pstmt);
			}
			
			return result;
			
	}




	public int updateSeller(Connection conn, ArrayList<String> arr) {
		int result=0;
		PreparedStatement pstmt=null;
		System.out.println("DAo에 옴");
		String s="";
		
		String query="UPDATE MEMBER SET SELL_YN='N' WHERE USER_NO=?";
	
			try {
				
				
				for(int i=0; i<arr.size(); i++){
				s=arr.get(i);
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1, arr.get(i));
		
				result+=pstmt.executeUpdate();
				
				}
				
			} catch (SQLException e) {
		
				e.printStackTrace();
			}finally {
				close(pstmt);
			}
			
			return result;
	}




	public ArrayList<Member> searchMember(Connection conn, String word, int currentPage, int limit) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Member> list=new ArrayList<>();
		int startRow = (currentPage-1) * limit + 1;
		int endRow = currentPage * limit;
	
		System.out.println("dao에서는여:"+word);
		
	
		
		if(word=="") {
	
		String query="SELECT * from(select rownum rnum,q.* from(select * FROM MEMBER)q) where (rnum between ? and ?) ORDER BY RNUM DESC";
		
		try {
			
			System.out.println("쓴게 없을때");
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1,startRow);
			pstmt.setInt(2, endRow);
			
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				Member m = new Member(rset.getString("USER_NO"),
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
				
				list.add(m);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		}else {
				
			
			String query="SELECT * from(select rownum rnum,q.* from(select * FROM MEMBER WHERE USER_ID LIKE '%'||?||'%')q) where (rnum between ? and ?) ORDER BY RNUM DESC";
		try {
			
			System.out.println("쓴 게 있을때:"+word);
			
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, word);
			pstmt.setInt(2,startRow);
			pstmt.setInt(3, endRow);
			
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				Member m = new Member(rset.getString("USER_NO"),
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
				
				list.add(m);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
			
			
		}
	
		return list;
		
		
		
	}




	public ArrayList<Seller> searchSellerList(Connection conn, String word, int currentPage, int limit) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		int startRow = (currentPage-1) * limit + 1;
		int endRow = currentPage * limit;
		String query="select * from(SELECT rownum rnum,q.* FROM (select * from MEMBER M LEFT JOIN SELLER S ON(S.S_USER_NO=M.USER_NO) LEFT JOIN BUYER B ON(B.B_USER_NO=M.USER_NO) WHERE STATUS='Y' AND USER_ID LIKE '%'||?||'%')q) where (rnum between ? and ?) ORDER BY RNUM DESC";
		ArrayList<Seller> sellerList=new ArrayList<>();
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, word);
			pstmt.setInt(2,startRow);
			pstmt.setInt(3, endRow);
			
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


	
	public Member selectMemberInquiary(Connection conn, int board_no) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND B.BOARD_NO=?"; 
		Member member=null;
		System.out.println("멤버서비스에서 board_no"+board_no);

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,board_no);
			rset = pstmt.executeQuery();

			if (rset.next()) {

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
		System.out.println("디오에서 member"+member);
		return member;
	}




	public Member selectMemberReview(Connection conn, int board_no) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT *\r\n" + 
				"FROM REVIEW F\r\n" + 
				"LEFT JOIN BOARD B ON (F.BOARD_NO = B.BOARD_NO)\r\n" + 
				"LEFT JOIN MEMBER M ON (B.USER_NO = M.USER_NO)\r\n" + 
				"LEFT JOIN BUYER BE ON (M.USER_NO = BE.B_USER_NO)\r\n" + 
				"LEFT JOIN LIST L ON (BE.B_USER_NO = L.B_USER_NO)\r\n" + 
				"LEFT JOIN SELLER SE ON (L.S_USER_NO = SE.S_USER_NO)\r\n" + 
				"LEFT JOIN SERVICE S ON (L.SERVICE_NO = S.SERVICE_NO)\r\n" + 
				"LEFT JOIN CATEGORY C ON (S.CATEGORY_CODE = C.CATEGORY_CODE)  WHERE B.BOARD_NO=?"; 
		Member member=null;

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,board_no);
			rset = pstmt.executeQuery();

			if (rset.next()) {

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




	public ArrayList<Member> selectM_ReviewList(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT *\r\n" + 
				"FROM REVIEW F\r\n" + 
				"LEFT JOIN BOARD B ON (F.BOARD_NO = B.BOARD_NO)\r\n" + 
				"LEFT JOIN MEMBER M ON (B.USER_NO = M.USER_NO)\r\n" + 
				"LEFT JOIN BUYER BE ON (M.USER_NO = BE.B_USER_NO)\r\n" + 
				"LEFT JOIN LIST L ON (BE.B_USER_NO = L.B_USER_NO)\r\n" + 
				"LEFT JOIN SERVICE S ON (L.SERVICE_NO = S.SERVICE_NO)\r\n" + 
				"LEFT JOIN CATEGORY C ON (S.CATEGORY_CODE = C.CATEGORY_CODE)";
		ArrayList<Member> mList = new ArrayList<>();

		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();

			while (rset.next()) {	
				Member m = new Member(rset.getString("USER_NO"),
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

				
				mList.add(m);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return mList;
	}




	public int registerProfile_file(Connection conn) {
		PreparedStatement pstmt = null;
		int result5 = 0;
		
		String query = "INSERT INTO PROFILE_FILES VALUES(SEQ_MFID.NEXTVAL, SEQ_MEMBER.CURRVAL, '0', 'noimg.gif', '0', SYSDATE, 'Y')";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			
			result5 = pstmt.executeUpdate();
			System.out.println("Dao에서 회원 가입 후 반환값은  : " + result5);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result5;
	}



	public ArrayList<Member> selectMember(Connection conn, int currentPage, int limit) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Member> member = new ArrayList<>();
		int startRow = (currentPage-1) * limit + 1;
		int endRow = currentPage * limit;
		String query = "SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM(SELECT * FROM MEMBER WHERE STATUS='Y')Q) WHERE RNUM BETWEEN ? AND ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Member m = new Member(rset.getString("USER_NO"),
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
				
				member.add(m);
				
			}
			System.out.println(member);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return member;
	}


	public Member selectSellerReview(Connection conn, int board_no) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Member seller=null;
		String query = "SELECT * \r\n" + 
				"FROM REVIEW R\r\n" + 
				"LEFT JOIN BOARD B ON (R.BOARD_NO=B.BOARD_NO)\r\n" + 
				"LEFT JOIN SERVICE S ON (R.SERVICE_NO=S.SERVICE_NO)\r\n" + 
				"LEFT JOIN MEMBER M ON (S.S_USER_NO=M.USER_NO)\r\n" + 
				"WHERE B.BOARD_STATUS='Y'"; 

		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();

			if (rset.next()) {

				seller = new Member(rset.getString("USER_NO"),
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

		return seller;
	}




	public int minusPoint(ArrayList<String> userNo, ArrayList<String> point, Connection conn) {
		int result=0;
		PreparedStatement pstmt=null;
		
		
		String query="UPDATE MEMBER SET point=? WHERE USER_NO=?";
		try {
			
			for(int i=0; i<point.size(); i++) {
			pstmt=conn.prepareStatement(query);
			
			pstmt.setString(1, point.get(i));
			pstmt.setString(2, userNo.get(i));

			result+=pstmt.executeUpdate();
			System.out.println(result);
			}
			
		} catch (SQLException e) {			
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}





	}




