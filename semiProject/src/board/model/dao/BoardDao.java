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
import board.model.vo.InquiaryList;
import board.model.vo.Report;
import board.model.vo.Review;
import board.model.vo.ReviewAd;
import member.model.vo.Member;
import service.model.vo.CategoryListPd;
import service.model.vo.Service;
import service.model.vo.Service_Category;
import service.model.vo.Service_List;

public class BoardDao {

	public int getListCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset=null;
		int result = 0;
		String query = "SELECT COUNT(*) FROM SERVICE";

		try {
			pstmt = conn.prepareStatement(query);
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

	public ArrayList<Board> selectInquiaryList(Connection conn, int currentPage, int limit) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM(SELECT ROWNUM RNUM,T.* FROM (SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE B.BOARD_STATUS='Y' ORDER BY B.BOARD_NO ASC)T ORDER BY RNUM DESC) WHERE RNUM BETWEEN ? AND ?";
		ArrayList<Board> bList = new ArrayList<>();
		int startRow = (currentPage-1) * limit + 1;
		int endRow = currentPage * limit;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,startRow);
			pstmt.setInt(2,endRow);
			rset = pstmt.executeQuery();

			while (rset.next()) {

				Board b = new Board(rset.getInt("board_no"), 
						rset.getString("title"), 
						rset.getString("content"),
						rset.getInt("user_no"), 
						rset.getDate("write_date"), 
						rset.getInt("read_num"),
						rset.getInt("board_code"), 
						rset.getString("board_status"), 
						rset.getString("user_id"));

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

	public ArrayList<Inquiary> selectInquiaryTypeList(Connection conn, int currentPage, int limit) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM(SELECT ROWNUM RNUM,T.* FROM (SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE B.BOARD_STATUS='Y' ORDER BY B.BOARD_NO ASC)T ORDER BY RNUM DESC) WHERE RNUM BETWEEN ? AND ?";
		ArrayList<Inquiary> inquiaryList = new ArrayList<Inquiary>();
		int startRow = (currentPage-1) * limit + 1;
		int endRow = currentPage * limit;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();
		
			while (rset.next()) {
				Inquiary i = new Inquiary(rset.getInt("board_no"), 
						rset.getString("board_type"),
						rset.getString("inquiry_content"), 
						rset.getString("inquiry_yn"), 
						rset.getDate("inquiry_date"),
						rset.getString("inquiary_name"),
						rset.getInt("rnum"));

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
		String query = "INSERT INTO BOARD VALUES(SEQ_BOARD.NEXTVAL,?,?,?,SYSDATE,0,?,'Y')";

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
	
	
	

	public ArrayList<Board> selectBoard(Connection conn, int currentPage, int limit) { //공지사항 게시글 가져오는거
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Board> list=new ArrayList<Board>();
		int startRow = (currentPage-1) * limit + 1;
		int endRow = currentPage * limit;
		String query="SELECT * FROM (SELECT ROWNUM RNUM,B.* FROM BOARD B WHERE (BOARD_CODE=20 OR BOARD_CODE=50 OR BOARD_CODE=60) AND BOARD_STATUS='Y' ORDER BY BOARD_NO ASC) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1,startRow);
			pstmt.setInt(2, endRow);
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				Board b=new Board(rset.getInt("board_no"),
						rset.getString("title"),
						rset.getString("content"),
						rset.getInt("user_no"),
						rset.getDate("write_date"),
						rset.getInt("read_num"),
						rset.getInt("board_code"),
						rset.getString("board_status"),
						rset.getInt("rnum"));
				
				list.add(b);
				System.out.println(b.getBoard_id());
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return list;
	}

	
	

	public ArrayList<Board> selectBoardNotice(Connection conn) { //고객센터용 공지사항
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Board> list=new ArrayList<Board>();
		String query="SELECT * FROM BOARD WHERE BOARD_CODE=20 AND BOARD_STATUS='Y'";
		
		
		
		try {
			pstmt=conn.prepareStatement(query);
			
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
		
		
		
		System.out.println("dao1:"+board_no);
		String query="SELECT * FROM BOARD WHERE BOARD_NO=? AND BOARD_STATUS='Y'";
		
		
		System.out.println("dao3:"+board_no);
		
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, board_no);
			rset=pstmt.executeQuery();
			System.out.println("dao4:"+board_no);
			System.out.println(rset);
			
			if(rset.next()) {
				b = new Board(rset.getInt("board_no"), 
						rset.getString("title"), 
						rset.getString("content"),
						rset.getInt("user_no"), 
						rset.getDate("write_date"), 
						rset.getInt("read_num"),
						rset.getInt("board_code"), 
						rset.getString("board_status"));

			}
			
			System.out.println("dao2:"+b);
				
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


	public Board selectBoardNo(Connection conn, int board_no) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		
		Board board=null;
		String query="SELECT * FROM BOARD WHERE BOARD_NO=? AND BOARD_STATUS='Y'";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, board_no);
			
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				board=new Board(rset.getInt("board_no"),
						rset.getString("title"),
						rset.getString("content"),
						rset.getInt("user_no"),
						rset.getDate("write_date"),
						rset.getInt("read_num"),
						rset.getInt("board_code"),
						rset.getString("board_status"));
		
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return board;
	}

	public ArrayList<Files> selectFiles(Connection conn, int board_no) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Files> flist=new ArrayList<>();
		
		
		String query = "SELECT * FROM FILES WHERE BOARD_NO=? AND STATUS='Y'";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, board_no);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Files f = new Files(rs.getInt("fid"),
									rs.getInt("board_no"),
									rs.getString("origin_name"),
									rs.getString("change_name"),
									rs.getString("file_path"),
									rs.getDate("upload_date"),
									rs.getInt("file_level"),
									rs.getInt("download_count"),
									rs.getString("status")
									);
				flist.add(f);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
			close(rs);
		}
		
		System.out.println("dao에서"+flist);
		return flist;
	}

	public int updateBoard(Connection conn, Board b) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "UPDATE BOARD SET TITLE=?,CONTENT=?,BOARD_CODE=? WHERE BOARD_NO=?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, b.getTitle());
			pstmt.setString(2, b.getContent());
			
			pstmt.setInt(3, b.getBoard_code());
			pstmt.setInt(4, b.getBoard_no());

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

	public int deleteBoardFiles(Connection conn, ArrayList<Files> fList) {
		
		System.out.println("dao에서 n으로 바뀌는곳f"+fList);
		int result=0;
		PreparedStatement pstmt=null;
		String query="UPDATE FILES SET STATUS='N' WHERE BOARD_NO=?";
		
		try {
			
			for(int i=0; i<fList.size();i++) {
				Files f=fList.get(i);
				pstmt=conn.prepareStatement(query);
				pstmt.setInt(1, f.getBoard_no());
				
				
				result+=pstmt.executeUpdate();
				
				
			}
			
			
		} catch (SQLException e) {


			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}



	public int updateBoardFiles(Connection conn, ArrayList<Files> fList) {
		PreparedStatement pstmt = null;

		int result = 0;
		
		System.out.println("flist"+fList);
		
		String query = "INSERT INTO FILES VALUES(SEQ_FILE.NEXTVAL,?,?,?,?,SYSDATE,0,0,'Y')";
		
		try {

			for (int i=0;i<fList.size();i++) {
				Files f=fList.get(i);

				pstmt = conn.prepareStatement(query);
				pstmt.setInt(1, f.getBoard_no());
				pstmt.setString(2, f.getOrigin_name());
				pstmt.setString(3, f.getChange_name());
				pstmt.setString(4, f.getFile_path());
				
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

	public int deleteBoard(Connection conn, ArrayList<String> arr) {
		int result=0;
		PreparedStatement pstmt=null;
		String query="UPDATE BOARD SET BOARD_STATUS='N' WHERE BOARD_NO=?";
		try {
			
			for(int i=0; i<arr.size(); i++) {
			pstmt=conn.prepareStatement(query);
			
			pstmt.setInt(1, Integer.valueOf(arr.get(i)));
			
			result+=pstmt.executeUpdate();
			
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	
	
	
	public ArrayList<Board> searchNotice(Connection conn, String typeNotice, String wordNotice, int currentPage, int limit) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Board> list=new ArrayList<Board>();
		String type=typeNotice;
		String word=wordNotice;
		int startRow = (currentPage-1) * limit + 1;
		int endRow = currentPage * limit;
		
	
		
		if(word=="") {
			System.out.println("비어있음");
		}
		
		if(type.equals("stitle")&&word=="") {
	
		
			
		String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM (SELECT * FROM BOARD WHERE (BOARD_CODE=20 OR BOARD_CODE=50 OR BOARD_CODE=60) AND BOARD_STATUS='Y' ORDER BY BOARD_NO ASC)Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1,startRow);
			pstmt.setInt(2, endRow);

			
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				Board b=new Board(rset.getInt("board_no"),
						rset.getString("title"),
						rset.getString("content"),
						rset.getInt("user_no"),
						rset.getDate("write_date"),
						rset.getInt("read_num"),
						rset.getInt("board_code"),
						rset.getString("board_status"),
						rset.getInt("rnum"));
				
				list.add(b);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		}else if(type.equals("not")&&word==""){

			String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM (SELECT * FROM BOARD WHERE (BOARD_CODE=20) AND BOARD_STATUS='Y' ORDER BY BOARD_NO ASC)Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setInt(1,startRow);
				pstmt.setInt(2, endRow);
				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Board b=new Board(rset.getInt("board_no"),
							rset.getString("title"),
							rset.getString("content"),
							rset.getInt("user_no"),
							rset.getDate("write_date"),
							rset.getInt("read_num"),
							rset.getInt("board_code"),
							rset.getString("board_status"),
							rset.getInt("rnum"));
					
					list.add(b);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			
			
		}else if(type.equals("pol")&&word==""){
			
			
			String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM (SELECT * FROM BOARD WHERE (BOARD_CODE=60) AND BOARD_STATUS='Y' ORDER BY BOARD_NO ASC)Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setInt(1,startRow);
				pstmt.setInt(2, endRow);
				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Board b=new Board(rset.getInt("board_no"),
							rset.getString("title"),
							rset.getString("content"),
							rset.getInt("user_no"),
							rset.getDate("write_date"),
							rset.getInt("read_num"),
							rset.getInt("board_code"),
							rset.getString("board_status"),
							rset.getInt("rnum"));
					
					list.add(b);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("faq")&&word==""){

			String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM (SELECT * FROM BOARD WHERE (BOARD_CODE=50) AND BOARD_STATUS='Y' ORDER BY BOARD_NO ASC)Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setInt(1,startRow);
				pstmt.setInt(2, endRow);
				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Board b=new Board(rset.getInt("board_no"),
							rset.getString("title"),
							rset.getString("content"),
							rset.getInt("user_no"),
							rset.getDate("write_date"),
							rset.getInt("read_num"),
							rset.getInt("board_code"),
							rset.getString("board_status"),
							rset.getInt("rnum"));
					
					list.add(b);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("stitle")&&word!=""){
			
			String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM (SELECT * FROM BOARD WHERE (BOARD_CODE=20 OR BOARD_CODE=50 OR BOARD_CODE=60) AND BOARD_STATUS='Y' and (TITLE LIKE '%'||?||'%') ORDER BY BOARD_NO ASC)Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
			
			try {
				pstmt=conn.prepareStatement(query);
				System.out.println("메소드안:"+word);
				pstmt.setString(1, word);
				pstmt.setInt(2,startRow);
				pstmt.setInt(3, endRow);
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Board b=new Board(rset.getInt("board_no"),
							rset.getString("title"),
							rset.getString("content"),
							rset.getInt("user_no"),
							rset.getDate("write_date"),
							rset.getInt("read_num"),
							rset.getInt("board_code"),
							rset.getString("board_status"),
							rset.getInt("rnum"));
					
					list.add(b);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("not")&&word!=""){
			

			
			
			
			String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM (SELECT * FROM BOARD WHERE (BOARD_CODE=20) AND BOARD_STATUS='Y' AND (TITLE LIKE '%'||?||'%' OR CONTENT LIKE '%'||?||'%') ORDER BY BOARD_NO ASC)Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC;";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1, word);
				pstmt.setString(2, word);
				pstmt.setInt(3,startRow);
				pstmt.setInt(4, endRow);
				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Board b=new Board(rset.getInt("board_no"),
							rset.getString("title"),
							rset.getString("content"),
							rset.getInt("user_no"),
							rset.getDate("write_date"),
							rset.getInt("read_num"),
							rset.getInt("board_code"),
							rset.getString("board_status"),
							rset.getInt("rnum"));
					
					list.add(b);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("pol")&&word!=""){
			
			
			String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM (SELECT * FROM BOARD WHERE (BOARD_CODE=60) AND BOARD_STATUS='Y' AND (TITLE LIKE '%'||?||'%' OR CONTENT LIKE '%'||?||'%') ORDER BY BOARD_NO ASC)Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC;";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1, word);
				pstmt.setString(2, word);
				pstmt.setInt(3,startRow);
				pstmt.setInt(4, endRow);
				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Board b=new Board(rset.getInt("board_no"),
							rset.getString("title"),
							rset.getString("content"),
							rset.getInt("user_no"),
							rset.getDate("write_date"),
							rset.getInt("read_num"),
							rset.getInt("board_code"),
							rset.getString("board_status"),
							rset.getInt("rnum"));
					
					list.add(b);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("faq")&&word!=""){
			
			
			String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM (SELECT * FROM BOARD WHERE (BOARD_CODE=50) AND BOARD_STATUS='Y' AND (TITLE LIKE '%'||?||'%' OR CONTENT LIKE '%'||?||'%') ORDER BY BOARD_NO ASC)Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC;";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1, word);
				pstmt.setString(2, word);
				pstmt.setInt(3,startRow);
				pstmt.setInt(4, endRow);
				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Board b=new Board(rset.getInt("board_no"),
							rset.getString("title"),
							rset.getString("content"),
							rset.getInt("user_no"),
							rset.getDate("write_date"),
							rset.getInt("read_num"),
							rset.getInt("board_code"),
							rset.getString("board_status"),
							rset.getInt("rnum"));
					
					list.add(b);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		
		
		}
		
		System.out.println("dao"+list);
		return list;

	}

	public ArrayList<InquiaryList> selectListIq(Connection conn, String userNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<InquiaryList> list = new ArrayList<>();
		
		String query = "SELECT * FROM BOARD B JOIN INQUIARY I ON(B.BOARD_NO = I.BOARD_NO) WHERE B.USER_NO = ? AND BOARD_STATUS='Y'";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				InquiaryList in = new InquiaryList(rset.getInt("BOARD_NO"),
						rset.getString("TITLE"),
						rset.getDate("WRITE_DATE"),
						rset.getString("INQUIRY_YN"),
						rset.getString("BOARD_TYPE")													
						);
				list.add(in);
						
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		
		
		
		return list;
	}

	public ArrayList<Board> selectB_ReviewList(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT *\r\n" + 
				"FROM REVIEW F\r\n" + 
				"LEFT JOIN BOARD B ON (F.BOARD_NO = B.BOARD_NO)\r\n" + 
				"LEFT JOIN MEMBER M ON (B.USER_NO = M.USER_NO)\r\n" + 
				"LEFT JOIN BUYER BE ON (M.USER_NO = BE.B_USER_NO)\r\n" + 
				"LEFT JOIN LIST L ON (BE.B_USER_NO = L.B_USER_NO)\r\n" + 
				"LEFT JOIN SERVICE S ON (L.SERVICE_NO = S.SERVICE_NO)\r\n" + 
				"LEFT JOIN CATEGORY C ON (S.CATEGORY_CODE = C.CATEGORY_CODE) WHERE B.BOARD_STATUS='Y'";
		ArrayList<Board> bList = new ArrayList<>();

		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();

			while (rset.next()) {

				Board b = new Board(rset.getInt("board_no"), rset.getString("title"), rset.getString("content"),
						rset.getInt("user_no"), rset.getDate("write_date"), rset.getInt("read_num"),
						rset.getInt("board_code"), rset.getString("board_status"));

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

	public ArrayList<ReviewAd> selectR_ReviewList(Connection conn) {
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
		ArrayList<ReviewAd> rList = new ArrayList<>();

		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				ReviewAd r = new ReviewAd(rset.getInt("board_no"), rset.getInt("rating"), rset.getInt("service_no"));
				rList.add(r);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return rList;
	}

	


	public int checkInquiary(Connection conn, ArrayList<String> arr) {
		int result=0;
		PreparedStatement pstmt=null;
		String query="UPDATE INQUIARY SET INQUIRY_YN='Y' WHERE BOARD_NO=?";
		try {
			
			for(int i=0; i<arr.size(); i++) {
			pstmt=conn.prepareStatement(query);
			
			pstmt.setInt(1, Integer.valueOf(arr.get(i)));
			
			result+=pstmt.executeUpdate();
			
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public ArrayList<Board> searchInquiary(Connection conn, int currentPage, int limit, String type, String word) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Board> list=new ArrayList<Board>();
		int startRow = (currentPage-1) * limit + 1;
		int endRow = currentPage * limit;
		

		if(type.equals("a")&&word=="") {
	
	
		String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM(SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y')Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1,startRow);
			pstmt.setInt(2, endRow);
			
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				Board b=new Board(rset.getInt("board_no"),
						rset.getString("title"),
						rset.getString("content"),
						rset.getInt("user_no"),
						rset.getDate("write_date"),
						rset.getInt("read_num"),
						rset.getInt("board_code"),
						rset.getString("board_status"),
						rset.getString("user_id"));
				
				list.add(b);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		}else if(type.equals("b")&&word==""){

			
			String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM(SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A1')Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setInt(1,startRow);
				pstmt.setInt(2, endRow);
				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Board b=new Board(rset.getInt("board_no"),
							rset.getString("title"),
							rset.getString("content"),
							rset.getInt("user_no"),
							rset.getDate("write_date"),
							rset.getInt("read_num"),
							rset.getInt("board_code"),
							rset.getString("board_status"),
							rset.getString("user_id"));
					
					list.add(b);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("c")&&word==""){
String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM(SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A2')Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setInt(1,startRow);
				pstmt.setInt(2, endRow);
				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Board b=new Board(rset.getInt("board_no"),
							rset.getString("title"),
							rset.getString("content"),
							rset.getInt("user_no"),
							rset.getDate("write_date"),
							rset.getInt("read_num"),
							rset.getInt("board_code"),
							rset.getString("board_status"),
							rset.getString("user_id"));
					
					list.add(b);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("d")&&word==""){
String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM(SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A3')Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setInt(1,startRow);
				pstmt.setInt(2, endRow);
				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Board b=new Board(rset.getInt("board_no"),
							rset.getString("title"),
							rset.getString("content"),
							rset.getInt("user_no"),
							rset.getDate("write_date"),
							rset.getInt("read_num"),
							rset.getInt("board_code"),
							rset.getString("board_status"),
							rset.getString("user_id"));
					
					list.add(b);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("a")&&word!=""){
			String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM(SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND (TITLE LIKE '%'||?||'%'))Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setInt(1,startRow);
				pstmt.setInt(2, endRow);
				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Board b=new Board(rset.getInt("board_no"),
							rset.getString("title"),
							rset.getString("content"),
							rset.getInt("user_no"),
							rset.getDate("write_date"),
							rset.getInt("read_num"),
							rset.getInt("board_code"),
							rset.getString("board_status"),
							rset.getString("user_id"));
					
					list.add(b);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			
		}else if(type.equals("b")&&word!=""){
String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM(SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A1' AND (TITLE LIKE '%'||?||'%'))Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1,word);
				pstmt.setInt(2,startRow);
				pstmt.setInt(3, endRow);
				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Board b=new Board(rset.getInt("board_no"),
							rset.getString("title"),
							rset.getString("content"),
							rset.getInt("user_no"),
							rset.getDate("write_date"),
							rset.getInt("read_num"),
							rset.getInt("board_code"),
							rset.getString("board_status"),
							rset.getString("user_id"));
					
					list.add(b);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("c")&&word!=""){
String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM(SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A2' AND (TITLE LIKE '%'||?||'%'))Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1,word);
				pstmt.setInt(2,startRow);
				pstmt.setInt(3, endRow);
				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Board b=new Board(rset.getInt("board_no"),
							rset.getString("title"),
							rset.getString("content"),
							rset.getInt("user_no"),
							rset.getDate("write_date"),
							rset.getInt("read_num"),
							rset.getInt("board_code"),
							rset.getString("board_status"),
							rset.getString("user_id"));
					
					list.add(b);
					
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("d")&&word!=""){
String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM(SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A3' AND (TITLE LIKE '%'||?||'%'))Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
			
			try {
				pstmt=conn.prepareStatement(query);
				
				pstmt.setString(1,word);
				pstmt.setInt(2,startRow);
				pstmt.setInt(3, endRow);
				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Board b=new Board(rset.getInt("board_no"),
							rset.getString("title"),
							rset.getString("content"),
							rset.getInt("user_no"),
							rset.getDate("write_date"),
							rset.getInt("read_num"),
							rset.getInt("board_code"),
							rset.getString("board_status"),
							rset.getString("user_id"));
					
					list.add(b);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		
	}
		return list;

	}

	public ArrayList<Inquiary> searchInquaryTypeList(Connection conn, int currentPage, int limit, String type, String word) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Inquiary> inquiaryList=new ArrayList<>();
		int startRow = (currentPage-1) * limit + 1;
		int endRow = currentPage * limit;
		

		if(type.equals("a")&&word=="") {
	
	
		String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM(SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y')Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1,startRow);
			pstmt.setInt(2, endRow);
			
			rset=pstmt.executeQuery();
			
			while (rset.next()) {
				Inquiary i = new Inquiary(rset.getInt("board_no"), 
						rset.getString("board_type"),
						rset.getString("inquiry_content"), 
						rset.getString("inquiry_yn"), 
						rset.getDate("inquiry_date"),
						rset.getString("inquiary_name"),
						rset.getInt("rnum"));

				inquiaryList.add(i);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		}else if(type.equals("b")&&word==""){

			
			String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM(SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A1')Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setInt(1,startRow);
				pstmt.setInt(2, endRow);
				
				rset=pstmt.executeQuery();
				
				while (rset.next()) {
					Inquiary i = new Inquiary(rset.getInt("board_no"), 
							rset.getString("board_type"),
							rset.getString("inquiry_content"), 
							rset.getString("inquiry_yn"), 
							rset.getDate("inquiry_date"),
							rset.getString("inquiary_name"),
							rset.getInt("rnum"));

					inquiaryList.add(i);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("c")&&word==""){
String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM(SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A2')Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setInt(1,startRow);
				pstmt.setInt(2, endRow);
				
				rset=pstmt.executeQuery();
				
				while (rset.next()) {
					Inquiary i = new Inquiary(rset.getInt("board_no"), 
							rset.getString("board_type"),
							rset.getString("inquiry_content"), 
							rset.getString("inquiry_yn"), 
							rset.getDate("inquiry_date"),
							rset.getString("inquiary_name"),
							rset.getInt("rnum"));

					inquiaryList.add(i);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("d")&&word==""){
String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM(SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A3')Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setInt(1,startRow);
				pstmt.setInt(2, endRow);
				
				rset=pstmt.executeQuery();
				
				while (rset.next()) {
					Inquiary i = new Inquiary(rset.getInt("board_no"), 
							rset.getString("board_type"),
							rset.getString("inquiry_content"), 
							rset.getString("inquiry_yn"), 
							rset.getDate("inquiry_date"),
							rset.getString("inquiary_name"),
							rset.getInt("rnum"));

					inquiaryList.add(i);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("a")&&word!=""){
			String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM(SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND (TITLE LIKE '%'||?||'%'))Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setInt(1,startRow);
				pstmt.setInt(2, endRow);
				
				rset=pstmt.executeQuery();
				
				while (rset.next()) {
					Inquiary i = new Inquiary(rset.getInt("board_no"), 
							rset.getString("board_type"),
							rset.getString("inquiry_content"), 
							rset.getString("inquiry_yn"), 
							rset.getDate("inquiry_date"),
							rset.getString("inquiary_name"),
							rset.getInt("rnum"));

					inquiaryList.add(i);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			
		}else if(type.equals("b")&&word!=""){
String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM(SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A1' AND (TITLE LIKE '%'||?||'%'))Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1, word);
				pstmt.setInt(2,startRow);
				pstmt.setInt(3, endRow);
				
				rset=pstmt.executeQuery();
				
				while (rset.next()) {
					Inquiary i = new Inquiary(rset.getInt("board_no"), 
							rset.getString("board_type"),
							rset.getString("inquiry_content"), 
							rset.getString("inquiry_yn"), 
							rset.getDate("inquiry_date"),
							rset.getString("inquiary_name"),
							rset.getInt("rnum"));

					inquiaryList.add(i);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("c")&&word!=""){
String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM(SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A2' AND (TITLE LIKE '%'||?||'%'))Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
			
			try {
				pstmt=conn.prepareStatement(query);
				
				pstmt.setString(1,word);
				pstmt.setInt(2,startRow);
				pstmt.setInt(3, endRow);
				
				rset=pstmt.executeQuery();
				
				while (rset.next()) {
					Inquiary i = new Inquiary(rset.getInt("board_no"), 
							rset.getString("board_type"),
							rset.getString("inquiry_content"), 
							rset.getString("inquiry_yn"), 
							rset.getDate("inquiry_date"),
							rset.getString("inquiary_name"),
							rset.getInt("rnum"));

					inquiaryList.add(i);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("d")&&word!=""){
String query="SELECT * FROM (SELECT ROWNUM RNUM,Q.* FROM(SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A3' AND (TITLE LIKE '%'||?||'%'))Q) WHERE RNUM BETWEEN ? AND ? ORDER BY RNUM DESC";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1,word);
				pstmt.setInt(2,startRow);
				pstmt.setInt(3, endRow);
				
				rset=pstmt.executeQuery();
				
				while (rset.next()) {
					Inquiary i = new Inquiary(rset.getInt("board_no"), 
							rset.getString("board_type"),
							rset.getString("inquiry_content"), 
							rset.getString("inquiry_yn"), 
							rset.getDate("inquiry_date"),
							rset.getString("inquiary_name"),
							rset.getInt("rnum"));

					inquiaryList.add(i);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		
	}
		return inquiaryList;
		
	}

	public Board selectInquiary(Connection conn, int board_no) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND B.BOARD_NO=?"; 
		Board board=null;

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,board_no);
			rset = pstmt.executeQuery();

			if (rset.next()) {

				board = new Board(rset.getInt("board_no"), 
						rset.getString("title"), 
						rset.getString("content"),
						rset.getInt("user_no"), 
						rset.getDate("write_date"), 
						rset.getInt("read_num"),
						rset.getInt("board_code"), 
						rset.getString("board_status"), 
						rset.getString("user_id"));


			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return board;
	}

	public Inquiary searchInquaryTypeList(Connection conn, int board_no) {
		
		System.out.println("디오에서 board_no:"+board_no);
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND B.BOARD_NO=?";
		Inquiary inquiary = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, board_no);
			rset = pstmt.executeQuery();

			if (rset.next()) {
				inquiary = new Inquiary(rset.getInt("board_no"), 
						rset.getString("board_type"),
						rset.getString("inquiry_content"), 
						rset.getString("inquiry_yn"), 
						rset.getDate("inquiry_date"),
						rset.getString("inquiary_name"));

				
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		System.out.println("디올끝나고 난 후:"+inquiary);
		return inquiary;
	}

	public ArrayList<Board> selectFaq(Connection conn, int board_code) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Board> list=new ArrayList<Board>();
		String query="SELECT * FROM BOARD WHERE board_code=? and board_status='Y'";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1,board_code);
			
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


	public Board selectBoardReivew(Connection conn, int board_no) {
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
				"LEFT JOIN CATEGORY C ON (S.CATEGORY_CODE = C.CATEGORY_CODE) WHERE B.BOARD_NO=?"; 
		Board board=null;

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,board_no);
			rset = pstmt.executeQuery();

			if (rset.next()) {

				board = new Board(rset.getInt("board_no"), 
						rset.getString("title"), 
						rset.getString("content"),
						rset.getInt("user_no"), 
						rset.getDate("write_date"), 
						rset.getInt("read_num"),
						rset.getInt("board_code"), 
						rset.getString("board_status"), 
						rset.getString("user_id"));


			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return board;
	}

	public ArrayList<Service_List> selectSL_ReviewList(Connection conn) {
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
		ArrayList<Service_List> slList = new ArrayList<>();

		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();

			while (rset.next()) {	
				Service_List sl = new Service_List(rset.getInt("service_no")
												, rset.getDate("trade_date")
												, rset.getString("s_user_no")
												, rset.getString("b_user_no")
												, rset.getString("refund_yn"));
				slList.add(sl);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return slList;
	}


	public ArrayList<Report> selectReportList(Connection conn, int currentPage, int limit) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Report> rList=new ArrayList<>();
		int startRow = (currentPage-1) * limit + 1;
		int endRow = currentPage * limit;
		
		String query="SELECT * FROM (SELECT ROWNUM RNUM, q.* FROM (select * from REPORT P LEFT JOIN REPORT_TYPE R ON (P.REPORT_TYPE=R.REPORT_TYPE) LEFT JOIN BOARD B ON (P.BOARD_NO=B.BOARD_NO) LEFT JOIN member m ON (b.user_no=m.user_NO) WHERE BOARD_STATUS='Y')q) where rnum between ? and ? ORDER BY rnum DESC";
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1,startRow);
			pstmt.setInt(2, endRow);
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				Report r=new Report(rset.getInt("board_no"),
									rset.getString("re_content"),
									rset.getString("re_yn"),
									rset.getDate("re_date"),
									rset.getInt("service_no"),
									rset.getString("report_type"),
									rset.getString("report_name"),
									rset.getString("user_id"));
							rList.add(r);		
				
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return rList;
	}

	public ArrayList<Board> selectReportBoard(Connection conn, int currentPage, int limit) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Board> list=new ArrayList<Board>();
		String query="SELECT * FROM (SELECT ROWNUM RNUM, q.* FROM (select * from REPORT P LEFT JOIN REPORT_TYPE R ON (P.REPORT_TYPE=R.REPORT_TYPE) LEFT JOIN BOARD B ON (P.BOARD_NO=B.BOARD_NO) WHERE BOARD_STATUS='Y')q) where rnum between ? and ? ORDER BY rnum DESC";
		int startRow = (currentPage-1) * limit + 1;
		int endRow = currentPage * limit;
	
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1,startRow);
			pstmt.setInt(2, endRow);
			
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				Board b=new Board(rset.getInt("board_no"),
						rset.getString("title"),
						rset.getString("content"),
						rset.getInt("user_no"),
						rset.getDate("write_date"),
						rset.getInt("read_num"),
						rset.getInt("board_code"),
						rset.getString("board_status"),
						rset.getInt("rnum"));
				
				list.add(b);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return list;
	}

	public ArrayList<Board> searchReport(Connection conn, String type, String word) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Board> list=new ArrayList<Board>();
		
		System.out.println("dao:"+type);
		System.out.println("dao:"+word);

	
		
		if(type.equals("a")&&word=="") {
	
		
			
		String query="SELECT * FROM REPORT P LEFT JOIN REPORT_TYPE R ON (P.REPORT_TYPE=R.REPORT_TYPE) LEFT JOIN BOARD B ON (P.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_CODE=30 AND BOARD_STATUS='Y'";
		
		try {
			pstmt=conn.prepareStatement(query);

			
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				Board b=new Board(rset.getInt("board_no"),
						rset.getString("title"),
						rset.getString("content"),
						rset.getInt("user_no"),
						rset.getDate("write_date"),
						rset.getInt("read_num"),
						rset.getInt("board_code"),
						rset.getString("board_status"),
						rset.getString("user_id"));
				
				
				list.add(b);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		}else if(type.equals("b")&&word==""){

			
			String query="SELECT * FROM REPORT P LEFT JOIN REPORT_TYPE R ON (P.REPORT_TYPE=R.REPORT_TYPE) LEFT JOIN BOARD B ON (P.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_CODE=30 AND P.REPORT_TYPE='B1' AND B.BOARD_STATUS='Y'";
			
			try {
				pstmt=conn.prepareStatement(query);

				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Board b=new Board(rset.getInt("board_no"),
							rset.getString("title"),
							rset.getString("content"),
							rset.getInt("user_no"),
							rset.getDate("write_date"),
							rset.getInt("read_num"),
							rset.getInt("board_code"),
							rset.getString("board_status"),
							rset.getString("user_id"));
					
					list.add(b);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("c")&&word==""){	
	String query="SELECT * FROM REPORT P LEFT JOIN REPORT_TYPE R ON (P.REPORT_TYPE=R.REPORT_TYPE) LEFT JOIN BOARD B ON (P.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_CODE=30 AND P.REPORT_TYPE='B2' AND B.BOARD_STATUS='Y'";
			
			try {
				pstmt=conn.prepareStatement(query);

				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Board b=new Board(rset.getInt("board_no"),
							rset.getString("title"),
							rset.getString("content"),
							rset.getInt("user_no"),
							rset.getDate("write_date"),
							rset.getInt("read_num"),
							rset.getInt("board_code"),
							rset.getString("board_status"),
							rset.getString("user_id"));
					
					
					list.add(b);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("a")&&word!=""){	
	String query="SELECT * FROM REPORT P LEFT JOIN REPORT_TYPE R ON (P.REPORT_TYPE=R.REPORT_TYPE) LEFT JOIN BOARD B ON (P.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_CODE=30 AND B.BOARD_STATUS='Y' AND (B.TITLE LIKE '%'||?||'%' OR M.USER_ID LIKE '%'||?||'%')";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1, word);
				pstmt.setString(2, word);

				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Board b=new Board(rset.getInt("board_no"),
							rset.getString("title"),
							rset.getString("content"),
							rset.getInt("user_no"),
							rset.getDate("write_date"),
							rset.getInt("read_num"),
							rset.getInt("board_code"),
							rset.getString("board_status"),
							rset.getString("user_id"));
					
					list.add(b);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("b")&&word!=""){	
String query="SELECT * FROM REPORT P LEFT JOIN REPORT_TYPE R ON (P.REPORT_TYPE=R.REPORT_TYPE) LEFT JOIN BOARD B ON (P.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_CODE=30 AND B.BOARD_STATUS='Y' AND P.REPORT_TYPE='B1' AND (B.TITLE LIKE '%'||?||'%' OR M.USER_ID LIKE '%'||?||'%') ";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1, word);
				pstmt.setString(2, word);
				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Board b=new Board(rset.getInt("board_no"),
							rset.getString("title"),
							rset.getString("content"),
							rset.getInt("user_no"),
							rset.getDate("write_date"),
							rset.getInt("read_num"),
							rset.getInt("board_code"),
							rset.getString("board_status"),
							rset.getString("user_id"));
					
					list.add(b);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("c")&&word!=""){	
String query="SELECT * FROM REPORT P LEFT JOIN REPORT_TYPE R ON (P.REPORT_TYPE=R.REPORT_TYPE) LEFT JOIN BOARD B ON (P.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_CODE=30 AND B.BOARD_STATUS='Y' AND P.REPORT_TYPE='B1' AND (B.TITLE LIKE '%'||?||'%' OR M.USER_ID LIKE '%'||?||'%') ";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1, word);
				pstmt.setString(2, word);
				

				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Board b=new Board(rset.getInt("board_no"),
							rset.getString("title"),
							rset.getString("content"),
							rset.getInt("user_no"),
							rset.getDate("write_date"),
							rset.getInt("read_num"),
							rset.getInt("board_code"),
							rset.getString("board_status"),
							rset.getString("user_id"));
					
					list.add(b);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
	
	}
		return list;

	
	}

	public ArrayList<Report> searchReportType(Connection conn, String type, String word) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Report> list=new ArrayList<>();
		
		System.out.println("dao:"+type);
		System.out.println("dao:"+word);
	
		
		if(type.equals("a")&&word=="") {
	
		
			
		String query="SELECT * FROM REPORT P LEFT JOIN REPORT_TYPE R ON (P.REPORT_TYPE=R.REPORT_TYPE) LEFT JOIN BOARD B ON (P.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_CODE=30 AND BOARD_STATUS='Y'";
		
		try {
			pstmt=conn.prepareStatement(query);

			
			rset=pstmt.executeQuery();
			
			
				while(rset.next()) {
					Report r=new Report(rset.getInt("board_no"),
										rset.getString("re_content"),
										rset.getString("re_yn"),
										rset.getDate("re_date"),
										rset.getInt("service_no"),
										rset.getString("report_type"),
										rset.getString("report_name"));
					list.add(r);		
					
				
				}
				
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		}else if(type.equals("b")&&word==""){

			
			String query="SELECT * FROM REPORT P LEFT JOIN REPORT_TYPE R ON (P.REPORT_TYPE=R.REPORT_TYPE) LEFT JOIN BOARD B ON (P.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_CODE=30 AND P.REPORT_TYPE='B1' AND B.BOARD_STATUS='Y'";
			
			try {
				pstmt=conn.prepareStatement(query);

				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Report r=new Report(rset.getInt("board_no"),
										rset.getString("re_content"),
										rset.getString("re_yn"),
										rset.getDate("re_date"),
										rset.getInt("service_no"),
										rset.getString("report_type"),
										rset.getString("report_name"));
					list.add(r);		
					
				
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("c")&&word==""){	
	String query="SELECT * FROM REPORT P LEFT JOIN REPORT_TYPE R ON (P.REPORT_TYPE=R.REPORT_TYPE) LEFT JOIN BOARD B ON (P.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_CODE=30 AND P.REPORT_TYPE='B2' AND B.BOARD_STATUS='Y'";
			
			try {
				pstmt=conn.prepareStatement(query);

				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Report r=new Report(rset.getInt("board_no"),
										rset.getString("re_content"),
										rset.getString("re_yn"),
										rset.getDate("re_date"),
										rset.getInt("service_no"),
										rset.getString("report_type"),
										rset.getString("report_name"));
					list.add(r);		
					
				
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("a")&&word!=""){	
	String query="SELECT * FROM REPORT P LEFT JOIN REPORT_TYPE R ON (P.REPORT_TYPE=R.REPORT_TYPE) LEFT JOIN BOARD B ON (P.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_CODE=30 AND B.BOARD_STATUS='Y' AND (B.TITLE LIKE '%'||?||'%' OR M.USER_ID LIKE '%'||?||'%') ";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1, word);
				pstmt.setString(2, word);
				

				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Report r=new Report(rset.getInt("board_no"),
										rset.getString("re_content"),
										rset.getString("re_yn"),
										rset.getDate("re_date"),
										rset.getInt("service_no"),
										rset.getString("report_type"),
										rset.getString("report_name"));
					list.add(r);		
					
				
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("b")&&word!=""){	
			
String query="SELECT * FROM REPORT P LEFT JOIN REPORT_TYPE R ON (P.REPORT_TYPE=R.REPORT_TYPE) LEFT JOIN BOARD B ON (P.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_CODE=30 AND B.BOARD_STATUS='Y' AND P.REPORT_TYPE='B1' AND (B.TITLE LIKE '%'||?||'%' OR M.USER_ID LIKE '%'||?||'%')";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1, word);
				pstmt.setString(2, word);
				

				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Report r=new Report(rset.getInt("board_no"),
										rset.getString("re_content"),
										rset.getString("re_yn"),
										rset.getDate("re_date"),
										rset.getInt("service_no"),
										rset.getString("report_type"),
										rset.getString("report_name"));
					list.add(r);		
					
				
				}
					
			
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
	
	}else if(type.equals("c")&&word!=""){	
String query="SELECT * FROM REPORT P LEFT JOIN REPORT_TYPE R ON (P.REPORT_TYPE=R.REPORT_TYPE) LEFT JOIN BOARD B ON (P.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_CODE=30 AND B.BOARD_STATUS='Y' AND P.REPORT_TYPE='B1' AND (B.TITLE LIKE '%'||?||'%' OR M.USER_ID LIKE '%'||?||'%')";
			
			try {
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1, word);
				pstmt.setString(2, word);
				

				
				rset=pstmt.executeQuery();
				
				while(rset.next()) {
					Report r=new Report(rset.getInt("board_no"),
										rset.getString("re_content"),
										rset.getString("re_yn"),
										rset.getDate("re_date"),
										rset.getInt("service_no"),
										rset.getString("report_type"),
										rset.getString("report_name"));
					list.add(r);		
					
				
				}
					
			
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
	
	}
			return list;
	}

	public int confirmReport(Connection conn, ArrayList<String> arr) {
		int result=0;
		PreparedStatement pstmt=null;
		String query="UPDATE REPORT SET RE_YN='Y' WHERE BOARD_NO=?";
		try {
			
			for(int i=0; i<arr.size(); i++) {
			pstmt=conn.prepareStatement(query);
			
			pstmt.setInt(1, Integer.valueOf(arr.get(i)));
			
			result+=pstmt.executeUpdate();
			
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public Report selectReport(Connection conn, int board_no) {
		
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		Report report=null;
		String query="SELECT * FROM REPORT P LEFT JOIN REPORT_TYPE R ON (P.REPORT_TYPE=R.REPORT_TYPE) LEFT JOIN BOARD B ON (P.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_CODE=30 AND B.BOARD_STATUS='Y' AND B.BOARD_NO=?";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, board_no);
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				report=new Report(rset.getInt("board_no"),
								rset.getString("re_content"),
								rset.getString("re_yn"),
								rset.getDate("re_date"),
								rset.getInt("service_no"),
								rset.getString("report_type"),
								rset.getString("report_name"),
								rset.getString("user_id"),
								rset.getString("title"),
								rset.getString("content"),
								rset.getDate("write_date"));
			}
			
			if(report.getReport_name().equalsIgnoreCase("구매자 신고")) {
				String query2="SELECT * FROM REPORT P LEFT JOIN SERVICE S ON(P.SERVICE_NO=S.SERVICE_NO) LEFT JOIN MEMBER M ON (S.B_USER_NO=M.USER_NO) LEFT JOIN REPORT_TYPE R ON(P.REPORT_TYPE=R.REPORT_TYPE)LEFT JOIN BOARD B ON (P.BOARD_NO=B.BOARD_NO) WHERE P.BOARD_NO=?";
				pstmt=conn.prepareStatement(query2);
				pstmt.setInt(1, board_no);
				rset=pstmt.executeQuery();
				
				if(rset.next()) {
					report=new Report(rset.getInt("board_no"),
									rset.getString("re_content"),
									rset.getString("re_yn"),
									rset.getDate("re_date"),
									rset.getInt("service_no"),
									rset.getString("report_type"),
									rset.getString("report_name"),
									rset.getString("user_id"),
									rset.getString("title"),
									rset.getString("content"),
									rset.getDate("write_date"));
				}
				
				
				
			}else {
				String query3="SELECT * FROM REPORT P LEFT JOIN SERVICE S ON(P.SERVICE_NO=S.SERVICE_NO) LEFT JOIN MEMBER M ON (S.B_USER_NO=M.USER_NO) LEFT JOIN REPORT_TYPE R ON(P.REPORT_TYPE=R.REPORT_TYPE)LEFT JOIN BOARD B ON (P.BOARD_NO=B.BOARD_NO) WHERE P.BOARD_NO=?";
				pstmt=conn.prepareStatement(query3);
				pstmt.setInt(1, board_no);
				rset=pstmt.executeQuery();
				
				if(rset.next()) {
					report=new Report(rset.getInt("board_no"),
									rset.getString("re_content"),
									rset.getString("re_yn"),
									rset.getDate("re_date"),
									rset.getInt("service_no"),
									rset.getString("report_type"),
									rset.getString("report_name"),
									rset.getString("user_id"),
									rset.getString("title"),
									rset.getString("content"),
									rset.getDate("write_date"));
		
				}
				
				
				
				
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		
		return report;
	}


	public int getGradeListCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset=null;
		int result=0;
		String query = "SELECT COUNT(*) FROM MEMBER";
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		System.out.println("dao:"+result);
		return result;
	}

	public int insertReplyInq(Connection conn, int board_no, String reply) {
		PreparedStatement pstmt=null;
		int result=0;
		try {
			String query="UPDATE INQUIARY SET INQUIRY_YN='Y', INQUIRY_CONTENT=?, INQUIRY_DATE=SYSDATE WHERE BOARD_NO=?";
			pstmt=conn.prepareStatement(query);
			
			pstmt.setString(1,reply);
			pstmt.setInt(2,board_no);
			result=pstmt.executeUpdate();
		
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		System.out.println(result);
		return result;
	}


	public int updateBoard1(Connection conn, Board b, String boardNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "UPDATE BOARD SET TITLE=?, CONTENT =?,WRITE_DATE=SYSDATE WHERE BOARD_NO=?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, b.getTitle());
			pstmt.setString(2, b.getContent());			
			pstmt.setString(3, boardNo);

			result = pstmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		
		return result;
	}

	public int updateInquiaryType(Connection conn, Inquiary inq, String boardNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "UPDATE INQUIARY SET BOARD_TYPE = ? WHERE BOARD_NO=?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, inq.getBoard_type());
			pstmt.setString(2,  boardNo);

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public int deleteBoardFiles1(Connection conn, String boardNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "UPDATE FILES SET STATUS = 'N' WHERE BOARD_NO = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, boardNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int insertBoardFiles1(Connection conn, ArrayList<Files> fList, String boardNo) {
		PreparedStatement pstmt = null;

		int result = 0;
		
		System.out.println("flist"+fList);
		
		String query = "INSERT INTO FILES VALUES(SEQ_BFID.NEXTVAL,?,?,?,?,SYSDATE,0,0,'Y')";
		
		try {

			for (int i=0;i<fList.size();i++) {
				Files f=fList.get(i);

				pstmt = conn.prepareStatement(query);
				
				pstmt.setString(1, boardNo);
				pstmt.setString(2, f.getOrigin_name());
				pstmt.setString(3, f.getChange_name());
				pstmt.setString(4, f.getFile_path());
				
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

	public InquiaryList selectInquiaryDetail(Connection conn, int board_no) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		InquiaryList iq = null;
		String query = "SELECT * FROM BOARD B JOIN INQUIARY I ON(B.BOARD_NO = I.BOARD_NO) WHERE B.BOARD_NO = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, board_no);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				 iq = new InquiaryList(rset.getInt("BOARD_NO"),
													rset.getString("TITLE"),
													rset.getString("CONTENT"),
													rset.getString("USER_NO"),
													rset.getDate("WRITE_DATE"),
													rset.getString("INQUIRY_CONTENT"),
													rset.getDate("INQUIRY_DATE"),
													rset.getString("BOARD_TYPE"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
				
		
		
		return iq;
	}

	public int deleteInquiary(Connection conn, int bNo) {
		PreparedStatement pstmt=null;
		int result=0;
		
		String query="UPDATE BOARD SET BOARD_STATUS='N' WHERE BOARD_NO=?";
		try {
			
			
			pstmt=conn.prepareStatement(query);
			
			pstmt.setInt(1, bNo);
			
			result = pstmt.executeUpdate();
			
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}


	public int deleteReview(Connection conn, int board_no) {
		int result=0;
		PreparedStatement pstmt=null;
		String query="UPDATE BOARD SET BOARD_STATUS='N' WHERE BOARD_NO=?";
		try {
			
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, board_no);
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;


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

	public int getinquiaryListCount(Connection conn) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "SELECT COUNT(*) FROM inquiary";

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

	public int getNoticeListCount(Connection conn) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "SELECT COUNT(*) FROM BOARD B WHERE (BOARD_CODE=20 or board_code=50 or board_code=60) AND BOARD_STATUS='Y' ORDER BY B.BOARD_NO DESC";

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
		
		
		
	}public int getTradeListCount(Connection conn) {
	

		PreparedStatement pstmt = null;
		int result = 0;
		String query = "SELECT ROWNUM RNUM,L.* FROM(SELECT * FROM LIST L LEFT JOIN SERVICE S ON(L.SERVICE_NO=S.SERVICE_NO) LEFT JOIN MEMBER M ON(S.B_USER_NO=M.USER_NO))L ORDER BY TRADE_DATE DESC";

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

	public int getReportListCount(Connection conn) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "SELECT ROWNUM RNUM,L.* FROM(SELECT * FROM LIST L LEFT JOIN SERVICE S ON(L.SERVICE_NO=S.SERVICE_NO) LEFT JOIN MEMBER M ON(S.B_USER_NO=M.USER_NO))L ORDER BY TRADE_DATE DESC";

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

	public int insertReplyRep(Connection conn, int board_no, String reply) {
		PreparedStatement pstmt=null;
		int result=0;
		try {
			String query="UPDATE report SET re_YN='Y', re_CONTENT=?, re_DATE=SYSDATE WHERE BOARD_NO=?";
			pstmt=conn.prepareStatement(query);
			
			pstmt.setString(1,reply);
			pstmt.setInt(2,board_no);
			result=pstmt.executeUpdate();
		
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		System.out.println(result);
		return result;
	}

	public int getMemberCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset=null;
		int result = 0;
		String query = "SELECT COUNT(*) FROM member where status='Y'";

		try {
			pstmt = conn.prepareStatement(query);
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

	
	


	
}


	

	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	





