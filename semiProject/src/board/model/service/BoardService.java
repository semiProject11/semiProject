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

		Connection conn=getConnection();
		
		int listCount=new BoardDao().getListCount(conn);
		
		close(conn);
		return listCount;
	}

	public ArrayList selectList(int currentPage, int limit) {
	
		Connection conn=getConnection();
		ArrayList list=new BoardDao().selectList(conn,currentPage,limit);
		
		
		close(conn);
		
		return list;
	}

	public ArrayList<Board> selectInquiaryList() {
		
		Connection conn=getConnection();
		ArrayList<Board> bList=new BoardDao().selectInquiaryList(conn);
		close(conn);
	
		return bList;
	}

	public ArrayList<Inquiary> selectInquaryTypeList() {
		Connection conn=getConnection();
		ArrayList<Inquiary> inquiaryList=new BoardDao().selectInquiaryTypeList(conn);
		close(conn);
	
		return inquiaryList;
	}

	public int insertInquiary(Board b, ArrayList<Files> inquiaryList, Inquiary inq) {
		
		Connection conn=getConnection();
		BoardDao bDao=new BoardDao();
		int result=bDao.insertBoard(conn,b); //게시물 board에 넣기
		int result3=bDao.insertInquiaryType(conn,inq); //게시물 문의에 넣기
		int result2=bDao.insertBoardFiles(conn,inquiaryList); //게시물 파일에 넣기

		
		if(result>0&&result2>=0&&result3>0) {
			System.out.println("커밋됨");
			commit(conn);
		}else {
			System.out.println("롤백됨");
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public int insertBoard(Board b, ArrayList<Files> fList) {
		Connection conn=getConnection();
		
		int result=new BoardDao().insertBoard(conn,b);
		int result2=new BoardDao().insertBoardFiles(conn,fList);
		
		if(result>0) {
			System.out.println("커밋됨");
			commit(conn);
		}else {
			System.out.println("롤백됨");
			rollback(conn);
		}
		close(conn);
		return result;
	}

	public ArrayList<Board> selectBoard(int board_code) {
		
		Connection conn=getConnection();
		
		ArrayList<Board> list=new BoardDao().selectBoard(conn,board_code);
		
		return list;
	}

	public int updateCount(int board_no) {
		Connection conn=getConnection();
		int result=new BoardDao().updateCount(conn,board_no);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		
		close(conn);
		return result;
	}

	public Board selectBoardDetail(int board_no) {
		Connection conn=getConnection();
		
		Board b=new BoardDao().selectBoardDetail(conn,board_no);
		
		close(conn);
		return b;
	}

	public int insertReport(Board b, ArrayList<Files> reportList, Report rep) {
		
		System.out.println("서비스에서:"+reportList);
		Connection conn=getConnection();
		
		BoardDao bDao=new BoardDao();
		int result=bDao.insertBoard(conn,b); //게시물 board에 넣기
		int result3=bDao.insertReportType(conn,rep); //게시물 문의에 넣기
		int result2=bDao.insertBoardFiles(conn,reportList); //게시물 파일에 넣기

		
		
		if(result>0&&result2>=0&&result3>0) {
			
			commit(conn);
		}else {
		
			rollback(conn);
		}
		
		close(conn);
		

		
		return result;
	}

	public int checkReportS(String service_no) {
		Connection conn=getConnection();
		int result=new BoardDao().checkReportS(conn,service_no);

		close(conn);
		return result;
	}


	public int checkReportB(String service_no) {
		Connection conn=getConnection();
		int result=new BoardDao().checkReportB(conn,service_no);

		close(conn);
		return result;
	}

	public Member checkReportSeller(String service_no) {
		Connection conn=getConnection();
		Member member=new BoardDao().checkReportSeller(conn,service_no);

		close(conn);
		return member;
	}



	public Member checkReportBuyer(String service_no) {
		Connection conn=getConnection();
		Member member=new BoardDao().checkReportBuyer(conn,service_no);

		close(conn);
		return member;
	}

	

	
	
}
