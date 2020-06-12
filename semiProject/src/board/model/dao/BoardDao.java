package board.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import board.model.vo.Board;
import board.model.vo.Files;
import board.model.vo.Inquiary;
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

	public int insertInquiary(Connection conn, Board b) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "INSERT INTO BOARD VALUES(SEQ_BOARD.NEXTVAL,?,?,?,SYSDATE,0,10,'N')";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, b.getTitle());
			pstmt.setString(2, b.getContent());
			pstmt.setInt(3, Integer.valueOf(b.getUser_no()));

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(conn);
		}

		System.out.println("1번 실행됨");

		return result;
	}

	public int insertInquiaryFiles(Connection conn, ArrayList<Files> inquiaryList) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = "INSERT INTO FILES VALUES(SEQ_FILES.NEXTVAL,SEQ_BOARD.CURVAL,?,?,?,SYSDATE,0,0,'N'";
		try {

			for (int i = 0; i > inquiaryList.size(); i++) {
				Files f = inquiaryList.get(i);

				pstmt = conn.prepareStatement(query);

				pstmt.setString(1, f.getOrigin_name());
				pstmt.setString(2, f.getChange_name());
				pstmt.setString(3, f.getFile_path());

				result += pstmt.executeUpdate();

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		System.out.println("2번 실행됨");
		return result;
	}

	public int insertInquiaryType(Connection conn, Inquiary inq) {

		PreparedStatement pstmt = null;
		int result = 0;
		String query = "INSERT INTO INQUIARY_TYPE VALUES(SEQ_BOARD.CURVAL,?,DEFAULT,'N',DEFALUT)";

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

		System.out.println("3번 실행됨");
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
			pstmt.setString(5, b.getUser_name());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public int insertBoardFiles(Connection conn, ArrayList<Files> fList) {
		PreparedStatement pstmt = null;

		int result = 0;
		String query = "INSERT INTO FILES VALUES(SEQ_FID.NEXTVAL,SEQ_BID.CURVAL,?,?,?,SYSDATE,0,0,'Y')";
		try {

			for (int i = 0; i > fList.size(); i++) {
				Files f = fList.get(i);

				pstmt = conn.prepareStatement(query);
				
				pstmt.setString(1, f.getOrigin_name());
				pstmt.setString(2, f.getChange_name());
				pstmt.setString(3, f.getFile_path());
				

				result += pstmt.executeUpdate();

			}

		} catch (SQLException e) {
		
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public ArrayList<Board> selectNotice(Connection conn,int board_code) {
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

	
}
