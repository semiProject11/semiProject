package board.model.service;
import static common.JDBCTemplate.*;
import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDao;
import board.model.vo.Board;
import board.model.vo.Files;
import board.model.vo.Inquiary;

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
		int result=bDao.insertInquiary(conn,b); //게시물 board에 넣기
		int result2=bDao.insertInquiaryFiles(conn,inquiaryList); //게시물 파일에 넣기
		int result3=bDao.insertInquiaryType(conn,inq); //게시물 문의에 넣기

		
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
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	public ArrayList<Board> selectBoard(int board_code) {
		
		Connection conn=getConnection();
		
		ArrayList<Board> list=new BoardDao().selectNotice(conn,board_code);
		
		return list;
	}


	

	
	
}
