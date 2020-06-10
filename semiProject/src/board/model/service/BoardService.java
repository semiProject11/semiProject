package board.model.service;
import static common.JDBCTemplate.*;
import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDao;

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

	

	
	
}
