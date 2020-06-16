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
		String query = "SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' "; 
		ArrayList<Board> bList = new ArrayList<>();

		try {
			pstmt = conn.prepareStatement(query);
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

	public ArrayList<Inquiary> selectInquiaryTypeList(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y'";
		ArrayList<Inquiary> inquiaryList = new ArrayList<Inquiary>();
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Inquiary i = new Inquiary(rset.getInt("board_no"), 
						rset.getString("board_type"),
						rset.getString("inquiry_content"), 
						rset.getString("inquiry_yn"), 
						rset.getDate("inquiry_date"),
						rset.getString("inquiary_name"));

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
	
	
	

	public ArrayList<Board> selectBoard(Connection conn) { //공지사항 게시글 가져오는거
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Board> list=new ArrayList<Board>();
		String query="SELECT * FROM BOARD WHERE (BOARD_CODE=20 or board_code=50 or board_code=60) AND BOARD_STATUS='Y'";
		
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
		
		String query="SELECT * FROM BOARD WHERE BOARD_NO=? AND BOARD_STATUS='Y'";
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

	
	
	
	public ArrayList<Board> searchNotice(Connection conn, String typeNotice, String wordNotice) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Board> list=new ArrayList<Board>();
		String type=typeNotice;
		String word=wordNotice;
		
		System.out.println("dao:"+type);
		System.out.println("dao:"+word);
		
		if(word=="") {
			System.out.println("비어있음");
		}
		
		if(type.equals("stitle")&&word=="") {
	
		
			
		String query="SELECT * FROM BOARD WHERE (BOARD_CODE=20 or board_code=50 or board_code=60) AND BOARD_STATUS='Y'";
		
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
		
		}else if(type.equals("not")&&word==""){

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
			
			
		}else if(type.equals("pol")&&word==""){
			
			
			String query="SELECT * FROM BOARD WHERE (BOARD_CODE=60) AND BOARD_STATUS='Y'";
			
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
		}else if(type.equals("faq")&&word==""){

			String query="SELECT * FROM BOARD WHERE (BOARD_CODE=50) AND BOARD_STATUS='Y'";
			
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
		}else if(type.equals("stitle")&&word!=""){
			
			String query="SELECT * FROM BOARD WHERE (BOARD_CODE=20 or board_code=50 or board_code=60) AND BOARD_STATUS='Y' AND (TITLE LIKE '%'||?||'%')";
			
			try {
				pstmt=conn.prepareStatement(query);
				System.out.println("메소드안:"+word);
				pstmt.setString(1, word);
				
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
		}else if(type.equals("not")&&word!=""){
			

			
			
			
			String query="SELECT * FROM BOARD WHERE (BOARD_CODE=20) AND BOARD_STATUS='Y' AND (TITLE LIKE '%'||?||'%' OR CONTENT LIKE '%'||?||'%')";
			
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
							rset.getString("board_status"));
					
					list.add(b);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("pol")&&word!=""){
			
			
			String query="SELECT * FROM BOARD WHERE (BOARD_CODE=60) AND BOARD_STATUS='Y' AND (TITLE LIKE '%'||?||'%' OR CONTENT LIKE '%'||?||'%')";
			
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
							rset.getString("board_status"));
					
					list.add(b);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("faq")&&word!=""){
			
			
			String query="SELECT * FROM BOARD WHERE (BOARD_CODE=50) AND BOARD_STATUS='Y' AND (TITLE LIKE '%'||?||'%' OR CONTENT LIKE '%'||?||'%')";
			
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
							rset.getString("board_status"));
					
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

	public ArrayList<Board> searchInquiary(Connection conn, String type, String word) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Board> list=new ArrayList<Board>();
		
		System.out.println("dao:"+type);
		System.out.println("dao:"+word);
		

		if(type.equals("a")&&word=="") {
	
	
		String query="SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y'";
		
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

			
			String query="SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A1'";
			
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
String query="SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A2'";
			
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
		}else if(type.equals("d")&&word==""){
String query="SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A3'";
			
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
			String query="SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND (TITLE LIKE '%'||?||'%')";
			
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
			
		}else if(type.equals("b")&&word!=""){
String query="SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A1' AND (TITLE LIKE '%'||?||'%')";
			
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
		}else if(type.equals("c")&&word!=""){
String query="SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A2' AND (TITLE LIKE '%'||?||'%')";
			
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
		}else if(type.equals("d")&&word!=""){
String query="SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A3' AND (TITLE LIKE '%'||?||'%')";
			
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
		
	}
		return list;

	}

	public ArrayList<Inquiary> searchInquaryTypeList(Connection conn, String type, String word) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Inquiary> inquiaryList=new ArrayList<>();
		
		System.out.println("dao:"+type);
		System.out.println("dao:"+word);
		

		if(type.equals("a")&&word=="") {
	
	
		String query="SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y'";
		
		try {
			pstmt=conn.prepareStatement(query);

			
			rset=pstmt.executeQuery();
			
			while (rset.next()) {
				Inquiary i = new Inquiary(rset.getInt("board_no"), 
						rset.getString("board_type"),
						rset.getString("inquiry_content"), 
						rset.getString("inquiry_yn"), 
						rset.getDate("inquiry_date"),
						rset.getString("inquiary_name"));

				inquiaryList.add(i);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		}else if(type.equals("b")&&word==""){

			
			String query="SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A1'";
			
			try {
				pstmt=conn.prepareStatement(query);

				
				rset=pstmt.executeQuery();
				
				while (rset.next()) {
					Inquiary i = new Inquiary(rset.getInt("board_no"), 
							rset.getString("board_type"),
							rset.getString("inquiry_content"), 
							rset.getString("inquiry_yn"), 
							rset.getDate("inquiry_date"),
							rset.getString("inquiary_name"));

					inquiaryList.add(i);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("c")&&word==""){
String query="SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A2'";
			
try {
	pstmt=conn.prepareStatement(query);

	
	rset=pstmt.executeQuery();
	
	while (rset.next()) {
		Inquiary i = new Inquiary(rset.getInt("board_no"), 
				rset.getString("board_type"),
				rset.getString("inquiry_content"), 
				rset.getString("inquiry_yn"), 
				rset.getDate("inquiry_date"),
				rset.getString("inquiary_name"));

		inquiaryList.add(i);
	}
	
} catch (SQLException e) {
	e.printStackTrace();
} finally {
	close(pstmt);
}
		}else if(type.equals("d")&&word==""){
String query="SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A3'";
			
try {
	pstmt=conn.prepareStatement(query);

	
	rset=pstmt.executeQuery();
	
	while (rset.next()) {
		Inquiary i = new Inquiary(rset.getInt("board_no"), 
				rset.getString("board_type"),
				rset.getString("inquiry_content"), 
				rset.getString("inquiry_yn"), 
				rset.getDate("inquiry_date"),
				rset.getString("inquiary_name"));

		inquiaryList.add(i);
	}
	
} catch (SQLException e) {
	e.printStackTrace();
} finally {
	close(pstmt);
}
		}else if(type.equals("a")&&word!=""){
			String query="SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND (TITLE LIKE '%'||?||'%')";
			
			try {
				pstmt=conn.prepareStatement(query);

				
				rset=pstmt.executeQuery();
				
				while (rset.next()) {
					Inquiary i = new Inquiary(rset.getInt("board_no"), 
							rset.getString("board_type"),
							rset.getString("inquiry_content"), 
							rset.getString("inquiry_yn"), 
							rset.getDate("inquiry_date"),
							rset.getString("inquiary_name"));

					inquiaryList.add(i);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}else if(type.equals("b")&&word!=""){
String query="SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A1' AND (TITLE LIKE '%'||?||'%')";
			
try {
	pstmt=conn.prepareStatement(query);

	
	rset=pstmt.executeQuery();
	
	while (rset.next()) {
		Inquiary i = new Inquiary(rset.getInt("board_no"), 
				rset.getString("board_type"),
				rset.getString("inquiry_content"), 
				rset.getString("inquiry_yn"), 
				rset.getDate("inquiry_date"),
				rset.getString("inquiary_name"));

		inquiaryList.add(i);
	}
	
} catch (SQLException e) {
	e.printStackTrace();
} finally {
	close(pstmt);
}
		}else if(type.equals("c")&&word!=""){
String query="SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A2' AND (TITLE LIKE '%'||?||'%')";
			
try {
	pstmt=conn.prepareStatement(query);

	
	rset=pstmt.executeQuery();
	
	while (rset.next()) {
		Inquiary i = new Inquiary(rset.getInt("board_no"), 
				rset.getString("board_type"),
				rset.getString("inquiry_content"), 
				rset.getString("inquiry_yn"), 
				rset.getDate("inquiry_date"),
				rset.getString("inquiary_name"));

		inquiaryList.add(i);
	}
	
} catch (SQLException e) {
	e.printStackTrace();
} finally {
	close(pstmt);
}
		}else if(type.equals("d")&&word!=""){
String query="SELECT * FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE BOARD_STATUS='Y' AND T.BOARD_TYPE='A3' AND (TITLE LIKE '%'||?||'%')";
			
try {
	pstmt=conn.prepareStatement(query);

	
	rset=pstmt.executeQuery();
	
	while (rset.next()) {
		Inquiary i = new Inquiary(rset.getInt("board_no"), 
				rset.getString("board_type"),
				rset.getString("inquiry_content"), 
				rset.getString("inquiry_yn"), 
				rset.getDate("inquiry_date"),
				rset.getString("inquiary_name"));

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
		String query="SELECT * FROM BOARD WHERE board_code=?";
		
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

	
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	





