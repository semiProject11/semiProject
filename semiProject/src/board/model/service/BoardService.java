package board.model.service;

import static common.JDBCTemplate.*;
import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDao;
import board.model.vo.Board;
import board.model.vo.Files;
import board.model.vo.Inquiary;
import board.model.vo.Report;
import member.model.vo.Member;

public class BoardService {

	public int getListCount() {

		Connection conn = getConnection();

		int listCount = new BoardDao().getListCount(conn);

		close(conn);
		return listCount;
	}

	public ArrayList selectList(int currentPage, int limit) {

		Connection conn = getConnection();
		ArrayList list = new BoardDao().selectList(conn, currentPage, limit);

		close(conn);

		return list;
	}

	public ArrayList<Board> selectInquiaryList() {

		Connection conn = getConnection();
		ArrayList<Board> bList = new BoardDao().selectInquiaryList(conn);
		close(conn);

		return bList;
	}

	public ArrayList<Inquiary> selectInquaryTypeList() {
		Connection conn = getConnection();
		ArrayList<Inquiary> inquiaryList = new BoardDao().selectInquiaryTypeList(conn);
		close(conn);

		return inquiaryList;
	}

	public int insertInquiary(Board b, ArrayList<Files> inquiaryList, Inquiary inq) {

		Connection conn = getConnection();
		BoardDao bDao = new BoardDao();
		int result = bDao.insertBoard(conn, b); // 게시물 board에 넣기
		int result3 = bDao.insertInquiaryType(conn, inq); // 게시물 문의에 넣기
		int result2 = bDao.insertBoardFiles(conn, inquiaryList); // 게시물 파일에 넣기

		if (result > 0 && result2 >= 0 && result3 > 0) {
			System.out.println("커밋됨");
			commit(conn);
		} else {
			System.out.println("롤백됨");
			rollback(conn);
		}

		close(conn);

		return result;
	}

	public int insertBoard(Board b, ArrayList<Files> fList) {
		Connection conn = getConnection();

		int result = new BoardDao().insertBoard(conn, b);
		int result2 = new BoardDao().insertBoardFiles(conn, fList);

		if (result > 0) {
			System.out.println("커밋됨");
			commit(conn);
		} else {
			System.out.println("롤백됨");
			rollback(conn);
		}
		close(conn);
		return result;
	}

	public ArrayList<Board> selectBoard() {

		Connection conn = getConnection();

		ArrayList<Board> list = new BoardDao().selectBoard(conn);
		close(conn);

		return list;
	}
	
	
	

	public ArrayList<Board> selectBoardNotice() {

		Connection conn = getConnection();

		ArrayList<Board> list = new BoardDao().selectBoardNotice(conn);
		close(conn);

		return list;
	}

	public int updateCount(int board_no) {
		Connection conn = getConnection();
		int result = new BoardDao().updateCount(conn, board_no);

		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		close(conn);
		return result;
	}

	public Board selectBoardDetail(int board_no) {
		Connection conn = getConnection();

		Board b = new BoardDao().selectBoardDetail(conn, board_no);

		close(conn);
		return b;
	}

	public int insertReport(Board b, ArrayList<Files> reportList, Report rep) {

		System.out.println("서비스에서:" + reportList);
		Connection conn = getConnection();

		BoardDao bDao = new BoardDao();
		int result = bDao.insertBoard(conn, b); // 게시물 board에 넣기
		int result3 = bDao.insertReportType(conn, rep); // 게시물 문의에 넣기
		int result2 = bDao.insertBoardFiles(conn, reportList); // 게시물 파일에 넣기

		if (result > 0 && result2 >= 0 && result3 > 0) {

			commit(conn);
		} else {

			rollback(conn);
		}

		close(conn);

		return result;
	}

	public int checkReportS(String service_no) {
		Connection conn = getConnection();
		int result = new BoardDao().checkReportS(conn, service_no);

		close(conn);
		return result;
	}

	public int checkReportB(String service_no) {
		Connection conn = getConnection();
		int result = new BoardDao().checkReportB(conn, service_no);

		close(conn);
		return result;
	}

	public Member checkReportSeller(String service_no) {
		Connection conn = getConnection();
		Member member = new BoardDao().checkReportSeller(conn, service_no);

		close(conn);
		return member;
	}

	public Member checkReportBuyer(String service_no) {
		Connection conn = getConnection();
		Member member = new BoardDao().checkReportBuyer(conn, service_no);

		close(conn);
		return member;
	}

	public Board selectBoardNo(int board_no) {
		Connection conn = getConnection();

		Board board = new BoardDao().selectBoardNo(conn, board_no);
		close(conn);
		return board;
	}

	public ArrayList<Files> selectFiles(int board_no) {
		Connection conn = getConnection();

		ArrayList<Files> flist = new BoardDao().selectFiles(conn, board_no);

		System.out.println("서비스에서" + flist);
		close(conn);
		return flist;
	}

	public int updateBoard(Board b, ArrayList<Files> fList) {
		Connection conn = getConnection();

		int result = new BoardDao().updateBoard(conn, b); 
//		System.out.println("서비스에서 fList:"+fList);
		int result2 = new BoardDao().deleteBoardFiles(conn, fList); //status 'n'으로 바꾸기
	
		int result3 = new BoardDao().updateBoardFiles(conn, fList); //'y'로 새로 추가된 파일 넣기
//		System.out.println("service에서 1:"+result);
//		System.out.println("service에서 2:"+result2);
//		System.out.println("service에서 3:"+result3);

		
		
		if (result > 0) {
			System.out.println("커밋됨");
			commit(conn);
		} else {
			System.out.println("롤백됨");
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	public int deleteBoard(ArrayList<String> arr) {
		
		Connection conn=getConnection();
		
		int result=new BoardDao().deleteBoard(conn,arr);
		System.out.println("서비스:"+result);

		if (result > 0) {
			System.out.println("커밋됨");
			commit(conn);
		} else {
			System.out.println("롤백됨");
			rollback(conn);
		}
		close(conn);
		
	
		return result;
		
		
		
	}

	public ArrayList<Board> searchNotice(String type, String word) {
		
		
		Connection conn = getConnection();

		ArrayList<Board> list = new BoardDao().searchNotice(conn,type,word);
		close(conn);

		return list;
		
	
	}

	public int checkInquiary(ArrayList<String> arr) {

		Connection conn=getConnection();
		
		int result=new BoardDao().checkInquiary(conn,arr);
		System.out.println("서비스:"+result);

		if (result > 0) {
			System.out.println("커밋됨");
			commit(conn);
		} else {
			System.out.println("롤백됨");
			rollback(conn);
		}
		close(conn);
		
	
		return result;
	}

	public ArrayList<Board> searchInquiary(String type, String word) {
		Connection conn = getConnection();

		
		ArrayList<Board> bList = new BoardDao().searchInquiary(conn,type,word);

		close(conn);
		return bList;
	}

	public ArrayList<Inquiary> searchInquaryTypeList(String type, String word) {
		Connection conn = getConnection();

		System.out.println("서비스(dao다녀오기 전):"+type+"이랑"+word);
		ArrayList<Inquiary> inquiaryList = new BoardDao().searchInquaryTypeList(conn,type,word);
		System.out.println("서비스(dao다녀온후):"+inquiaryList);
		close(conn);
		return inquiaryList;
	}

	public Board selectInquiary(int board_no) {
		Connection conn =getConnection();
		Board board=new BoardDao().selectInquiary(conn,board_no);
		close(conn);
		return board;
	}

	public Inquiary selectInquiaryType(int board_no) {
		Connection conn = getConnection();
		System.out.println("보드서비스:"+board_no);
		Inquiary inquiary = new BoardDao().searchInquaryTypeList(conn,board_no);
		System.out.println("디오다녀온후:"+inquiary);
	
		close(conn);
		return inquiary;
	}

	public ArrayList<Board> selectFaq(int board_code) {
		Connection conn = getConnection();

		ArrayList<Board> list = new BoardDao().selectFaq(conn,board_code);
		close(conn);

		return list;
	
	}



	

	
	

}
