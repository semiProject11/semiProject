package board.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import board.model.vo.Board;
import board.model.vo.Files;
import board.model.vo.Inquiary;

import board.model.vo.Report;
import board.model.vo.Review;
import member.model.vo.Account;

import member.model.vo.Member;

public class BoardDao {

	public int getListCount(Connection conn) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "SELECT COUNT(*) FROM SERVICE";

		try {
			pstmt = conn.prepareStatement(query);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public ArrayList selectList(Connection conn, int currentPage, int limit) {

		// ★★★★쿼리문이랑 event객체는 테스트용으로 순번을 위해 뷰 만들고 차후 새로 수정해야함
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList list = new ArrayList<>();
		String query = "SELECT * FROM SERVICE WHERE S_USER_NO=1"; // 이벤트 리스트뽑는거라 작성자가 admin인걸로 바꿔줘야하고 순번도 다시 매겨줘야함

		try {
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				Board event = new Board(rs.getInt("service_no"), rs.getString("S_TITLE"), rs.getDate("REGISTER_DATE"));

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

	public ArrayList<Board> selectInquiaryList(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM INQUIARYLIST"; // INQUIARYLIST 뷰를 만들어야함
		ArrayList<Board> bList = new ArrayList<>();

		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();

			while (rset.next()) {

				Board b = new Board(rset.getInt("board_no"), rset.getString("title"), rset.getString("content"),
						rset.getInt("user_no"), rset.getDate("write_date"), rset.getInt("read_num"),
						rset.getInt("board_code"), rset.getString("board_status"), rset.getString("user_name"));

				bList.add(b);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return bList;
	}

	public ArrayList<Inquiary> selectInquiaryTypeList(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM INQUIARYLIST";
		ArrayList<Inquiary> inquiaryList = new ArrayList<Inquiary>();
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Inquiary i = new Inquiary(rset.getInt("board_no"), rset.getString("board_type"),
						rset.getString("inquiry_content"), rset.getString("inquiry_yn"), rset.getDate("inquiry_date"));

				inquiaryList.add(i);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return inquiaryList;
	}



	public int insertInquiaryType(Connection conn, Inquiary inq) {

		PreparedStatement pstmt = null;
		int result = 0;
		String query = "INSERT INTO INQUIARY VALUES(SEQ_BOARD.CURRVAL,'N','N',SYSDATE,?)";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, inq.getBoard_type());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public int insertBoard(Connection conn, Board b) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "INSERT INTO BOARD VALUES(SEQ_BOARD.NEXTVAL,?,?,?,SYSDATE,0,?,'N')";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, b.getTitle());
			pstmt.setString(2, b.getContent());
			pstmt.setInt(3, b.getUser_no());
	
			pstmt.setInt(4, b.getBoard_code());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		System.out.println("게시물이 dao에서 등록됨");
		System.out.println(result);
		
		return result;
	}

	public int insertBoardFiles(Connection conn, ArrayList<Files> fList) {
		PreparedStatement pstmt = null;

		int result = 0;
		
		System.out.println("flist"+fList);
		
		String query = "INSERT INTO FILES VALUES(SEQ_FILE.NEXTVAL,SEQ_BOARD.CURRVAL,?,?,?,SYSDATE,0,0,'Y')";
		
		try {

			for (int i=0;i<fList.size();i++) {
				Files f=fList.get(i);

				pstmt = conn.prepareStatement(query);
				
				pstmt.setString(1, f.getOrigin_name());
				pstmt.setString(2, f.getChange_name());
				pstmt.setString(3, f.getFile_path());
				
				result +=pstmt.executeUpdate();

			}

		} catch (SQLException e) {
		
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		System.out.println("파일이 dao에서 등록됨");
		System.out.println(result);
		
		return result;
		
	}
	
	
	

	public ArrayList<Board> selectBoard(Connection conn,int board_code) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Board> list=new ArrayList<Board>();
		String query="SELECT * FROM BOARD WHERE BOARD_CODE=?";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, board_code);
			
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				Board b=new Board(rset.getInt("board_no"),
						rset.getString("title"),
						rset.getString("content"),
						rset.getInt("user_no"),
						rset.getDate("write_date"),
						rset.getInt("read_num"),
						rset.getInt("board_code"),
						rset.getString("board_status"));
				
				list.add(b);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return list;
	}

	

	
	
	public int updateCount(Connection conn, int board_no) {
		PreparedStatement pstmt=null;
		int result=0;
		
		String query="UPDATE BOARD SET READ_NUM=READ_NUM+1 WHERE BOARD_NO=?";
		
		try {
		
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, board_no);
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			close(pstmt);
		
		}
		
		
		return result;
	}

	public Board selectBoardDetail(Connection conn, int board_no) {
		
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		Board b=null;
		
		String query="SELECT * FROM BOARD WHERE BOARD_NO=?";
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, board_no);
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				b=new Board(rset.getInt("board_no"),
						rset.getString("title"),
						rset.getString("content"),
						rset.getInt("user_no"),
						rset.getDate("write_date"),
						rset.getInt("read_num"),
						rset.getInt("board_code"),
						rset.getString("board_status"));
			}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		} finally {
			close(pstmt);

		}
		

		return b;
	}

	public int insertReportType(Connection conn, Report rep) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "INSERT INTO report VALUES(SEQ_BOARD.CURRVAL,'N','N',SYSDATE,?,?)";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, rep.getService_no());
			pstmt.setString(2, rep.getReport_type());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int checkReportS(Connection conn, String service_no) {
		PreparedStatement pstmt=null;
		int result=0;
		String query="SELECT COUNT(*) FROM LIST WHERE SERVICE_NO=?";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1,Integer.valueOf(service_no));

			result=pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return result;
	}
	
	
	public int checkReportB(Connection conn, String service_no) {
		PreparedStatement pstmt=null;
		int result=0;
		String query="SELECT COUNT(*) FROM LIST WHERE SERVICE_NO=?";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1,Integer.valueOf(service_no));
			
			result=pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return result;
	}

	public Member checkReportSeller(Connection conn, String service_no) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		Member member=null;
		String query="SELECT USER_NAME FROM MEMBER WHERE USER_NO=(SELECT S_USER_NO FROM LIST WHERE SERVICE_NO=?);";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1,Integer.valueOf(service_no));

			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				member=new Member(service_no,rset.getString("user_name"));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return member;
		
	}

	public Member checkReportBuyer(Connection conn, String service_no) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		Member member=null;
		String query="SELECT USER_NAME FROM MEMBER WHERE USER_NO=(SELECT B_USER_NO FROM LIST WHERE SERVICE_NO=?);";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1,Integer.valueOf(service_no));

			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				member=new Member(service_no,rset.getString("user_name"));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return member;
	}

	public int insertReviewB(Connection conn, Review re) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "INSERT INTO BOARD VALUES(SEQ_BOARD.NEXTVAL,?,?,?,DEFAULT,0,10,'N')";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, re.getTitle());
			pstmt.setString(2, re.getContent());
			pstmt.setString(3, re.getUserNo());
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return result;
	}

	public int insertReviewR(Connection conn, Review re) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "INSERT INTO REVIEW VALUES((SELECT MAX(BOARD_NO) FROM BOARD),?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, re.getRating());
			pstmt.setInt(2, re.getServiceNo());
			pstmt.setString(3, re.getsUserNo());
			
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return result;
	}

	

}


