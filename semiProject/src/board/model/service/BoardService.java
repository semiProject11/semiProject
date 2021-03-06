package board.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDao;
import board.model.vo.Board;
import board.model.vo.Files;
import board.model.vo.Inquiary;
import board.model.vo.InquiaryList;
import board.model.vo.Report;
import board.model.vo.Review;
import board.model.vo.ReviewAd;
import member.model.vo.Member;
import service.model.dao.ServiceDao;
import service.model.vo.Service;
import service.model.vo.Service_Category;
import service.model.vo.Service_List;


public class BoardService {

	public int getListCount() {

		Connection conn = getConnection();

		int listCount = new BoardDao().getListCount(conn);

		if (listCount > 0) {
			System.out.println("커밋됨");
			commit(conn);
		} else {
			System.out.println("롤백됨");
			rollback(conn);
		}
		close(conn);
		return listCount;
	}

	public ArrayList selectList(int currentPage, int limit) {

		Connection conn = getConnection();
		ArrayList list = new BoardDao().selectList(conn, currentPage, limit);

		close(conn);

		return list;
	}

	public ArrayList<Board> selectInquiaryList(int currentPage, int limit) {

		Connection conn = getConnection();
		ArrayList<Board> bList = new BoardDao().selectInquiaryList(conn,currentPage,limit);
		close(conn);

		return bList;
	}

	public ArrayList<Inquiary> selectInquaryTypeList(int currentPage, int limit) {
		Connection conn = getConnection();
		ArrayList<Inquiary> inquiaryList = new BoardDao().selectInquiaryTypeList(conn,currentPage,limit);
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

	public ArrayList<Board> selectBoard(int currentPage, int limit) {

		Connection conn = getConnection();

		ArrayList<Board> list = new BoardDao().selectBoard(conn,currentPage,limit);
		close(conn);

		return list;
	}
	
	
	

	public ArrayList<Board> selectBoardNotice(int currentPage, int limit) {

		Connection conn = getConnection();

		ArrayList<Board> list = new BoardDao().selectBoardNotice(conn,currentPage,limit);
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
		System.out.println("서비스1:"+board_no);
		Board b = new BoardDao().selectBoardDetail(conn, board_no);
		System.out.println("서비스2:"+b);

		close(conn);
		return b;
	}

	public int insertReport(Board b, String service_no, ArrayList<Files> reportList, Report rep) {

		System.out.println("서비스에서:" + reportList);
		Connection conn = getConnection();

		BoardDao bDao = new BoardDao();
		int result = bDao.insertBoard(conn, b); // 게시물 board에 넣기
		int result3 = bDao.insertReportType(conn, service_no,rep); //
		int result2 = bDao.insertBoardFiles(conn, reportList); //

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

	public int checkReportB(String service_no) {
		Connection conn = getConnection();
		int result = new BoardDao().checkReportB(conn, service_no);

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


	public int insertReviewB(Review re) {
		Connection conn=getConnection();
		int result = new BoardDao().insertReviewB(conn, re);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	public int insertReviewR(Review re) {
		Connection conn=getConnection();
		int result = new BoardDao().insertReviewR(conn, re);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	public String selectUserNo(int serviceNo) {
		Connection conn = getConnection();
		
		String userNo = new ServiceDao().selectUserNo(conn, serviceNo);
		
		
		return userNo;
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

	public ArrayList<Board> searchNotice(String type, String word, int currentPage, int limit) {
		
		
		Connection conn = getConnection();

		ArrayList<Board> list = new BoardDao().searchNotice(conn,type,word,currentPage,limit);
		close(conn);

		return list;
		
	
	}


	public ArrayList<InquiaryList> selectListIq(String userNo) {
		Connection conn = getConnection();
		
		ArrayList<InquiaryList> list = new BoardDao().selectListIq(conn, userNo);
		
		close(conn);
		return list;
	}


	public ArrayList<Board> selectB_ReivewList() {
		Connection conn = getConnection();
		
		ArrayList<Board> bList = new BoardDao().selectB_ReviewList(conn);

		close(conn);
		
		return bList;
	}

	public ArrayList<ReviewAd> selectR_ReivewList() {
		Connection conn = getConnection();
		
		ArrayList<ReviewAd> rList = new BoardDao().selectR_ReviewList(conn);

		close(conn);
		
		return rList;
	}

	public ArrayList<Service_Category> selectSC_ReivewList() {
		Connection conn = getConnection();
		
		ArrayList<Service_Category> scList = new ServiceDao().selectSC_ReviewList(conn);

		close(conn);
		
		return scList;
	}

	public ArrayList<Service> selectS_ReivewList() {
		Connection conn = getConnection();
		
		ArrayList<Service> sList = new ServiceDao().selectS_ReviewList(conn);

		close(conn);
		
		return sList;
	}

	public ArrayList<Service_List> selectSL_ReivewList() {
		Connection conn = getConnection();
		
		ArrayList<Service_List> slList = new BoardDao().selectSL_ReviewList(conn);

		close(conn);
		
		return slList;
	}

	public ArrayList<Member> selectM_ReivewList() {
		Connection conn = getConnection();
		
		ArrayList<Member> mList = new BoardDao().selectM_ReviewList(conn);

		close(conn);
		
		return mList;
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

	public ArrayList<Board> searchInquiary(int currentPage, int limit, String type, String word) {
		Connection conn = getConnection();

		
		ArrayList<Board> bList = new BoardDao().searchInquiary(conn,currentPage,limit,type,word);

		close(conn);
		return bList;
	}

	public ArrayList<Inquiary> searchInquaryTypeList(int currentPage, int limit, String type, String word) {
		Connection conn = getConnection();

		
		ArrayList<Inquiary> inquiaryList = new BoardDao().searchInquaryTypeList(conn,currentPage,limit,type,word);
	
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

	public ArrayList<Board> selectFaq(int board_code, int currentPage, int limit) {
		Connection conn = getConnection();

		ArrayList<Board> list = new BoardDao().selectFaq(conn,board_code,currentPage,limit);
		close(conn);

		return list;
	
	}


	public Board selectBoardReivew(int board_no) {
		Connection conn =getConnection();
		Board board=new BoardDao().selectBoardReivew(conn,board_no);
		close(conn);
		return board;
	}


	public ArrayList<Report> selectReportList(int currentPage, int limit) {
		
		Connection conn=getConnection();
		ArrayList<Report> rList=new BoardDao().selectReportList(conn,currentPage,limit);
		
		close(conn);
	
		return rList;
	}

	public ArrayList<Board> selectReportBoard(int currentPage, int limit) {
		Connection conn = getConnection();

		ArrayList<Board> list = new BoardDao().selectReportBoard(conn,currentPage,limit);
		close(conn);

		return list;
	}

	public ArrayList<Board> searchReport(String type, String word) {
		Connection conn = getConnection();

		ArrayList<Board> list = new BoardDao().searchReport(conn,type,word);
		close(conn);

		return list;
		
	}




	public ArrayList<Report> searchReportType(String type, String word) {
		Connection conn = getConnection();

		ArrayList<Report> list = new BoardDao().searchReportType(conn,type,word);
		close(conn);

		return list;
	}

	public int confirmReport(ArrayList<String> arr) {
		Connection conn=getConnection();
		
		int result=new BoardDao().confirmReport(conn,arr);
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

	public Report selectReport(int board_no) {
		Connection conn=getConnection();
		Report report=new BoardDao().selectReport(conn,board_no);
		close(conn);
		return report;
	}

	public int getGradeListCount() {
		Connection conn = getConnection();

		int listCount = new BoardDao().getGradeListCount(conn);

		if (listCount > 0) {
			System.out.println("커밋됨");
			commit(conn);
		} else {
			System.out.println("롤백됨");
			rollback(conn);
		}
		close(conn);
		return listCount;
	}

	public int insertReplyInq(String reply, int board_no) {

		Connection conn=getConnection();
		System.out.println("서비스다아아안:"+reply);
		int result=new BoardDao().insertReplyInq(conn,board_no,reply);
		
		
		close(conn);
		return result;
	}

	


	public int updateInquiary(Board b, ArrayList<Files> inquiaryList, Inquiary inq, String boardNo) {
		Connection conn = getConnection();
		BoardDao bDao = new BoardDao();
		int result1 = 0;		// 실제 잘 되었는지 확인 하는 결과값
		
		int result = bDao.updateBoard1(conn, b, boardNo); // 게시물 board 수정
		int result3 = bDao.updateInquiaryType(conn, inq, boardNo); // 게시물 문의 수정
		
		if(!inquiaryList.isEmpty()) {
			int result4 = bDao.deleteBoardFiles1(conn, boardNo);		// 기존 게시물 파일 삭제
			int result2 = bDao.insertBoardFiles1(conn, inquiaryList, boardNo); // 수정된 게시물 파일 생성
		
			if (result > 0 && result2 >= 0 && result3 > 0) {
				System.out.println("커밋됨1");
				result1 = 1;
				commit(conn);
			} else {
				System.out.println("롤백됨1");
				rollback(conn);
			}
		
		}else {
			if (result > 0 &&  result3 > 0) {
				System.out.println("커밋됨");
				result1 = 1;
				commit(conn);
			} else {
				System.out.println("롤백됨");
				rollback(conn);
			}
		}
		


		close(conn);

		return result1;
	}

	public InquiaryList selectInquiaryDetail(int board_no) {
		Connection conn = getConnection();
		
		InquiaryList iq = new BoardDao().selectInquiaryDetail(conn,board_no);
		
		
		close(conn);
		
		
		return iq;
	}

	public int deleteInquiary(int bNo) {
		Connection conn = getConnection();
		
		int result = new BoardDao().deleteInquiary(conn, bNo);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return result;
	}
		
	
	public int deleteReview(int board_no) {
		
		Connection conn = getConnection();
		System.out.println("서비스");
		int result = new BoardDao().deleteReview(conn,board_no);
		
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);		

		return result;
	}

	public int getinquiaryListCount() {
		Connection conn = getConnection();

		int listCount = new BoardDao().getinquiaryListCount(conn);

		if (listCount > 0) {
			System.out.println("커밋됨");
			commit(conn);
		} else {
			System.out.println("롤백됨");
			rollback(conn);
		}
		close(conn);
		return listCount;
	}

	public int getNoticeListCount(int board_code) {
		Connection conn = getConnection();

		int listCount = new BoardDao().getNoticeListCount(conn,board_code);

		if (listCount > 0) {
			System.out.println("커밋됨");
			commit(conn);
		} else {
			System.out.println("롤백됨");
			rollback(conn);
		}
		close(conn);
		return listCount;
	}

	public int getTradeListCount() {
		Connection conn = getConnection();

		int listCount = new BoardDao().getTradeListCount(conn);

		if (listCount > 0) {
			System.out.println("커밋됨");
			commit(conn);
		} else {
			System.out.println("롤백됨");
			rollback(conn);
		}
		close(conn);
		return listCount;
	}

	public int getReportListCount() {
		Connection conn = getConnection();

		int listCount = new BoardDao().getReportListCount(conn);

		if (listCount > 0) {
			System.out.println("커밋됨");
			commit(conn);
		} else {
			System.out.println("롤백됨");
			rollback(conn);
		}
		close(conn);
		return listCount;
	}

	public int insertReplyRep(String reply, int board_no) {
		Connection conn=getConnection();
		System.out.println("서비스다아아안?:"+reply);
		int result=new BoardDao().insertReplyRep(conn,board_no,reply);
		
		
		close(conn);
		return result;
	}

	public int getMemberCount() {
		Connection conn = getConnection();

		int count = new BoardDao().getMemberCount(conn);

		if (count > 0) {
			System.out.println("커밋됨");
			commit(conn);
		} else {
			System.out.println("롤백됨");
			rollback(conn);
		}
		close(conn);
		return count;
	}

	public int searchInqCount(String type, String word) {
		Connection conn = getConnection();

		
		int result = new BoardDao().searchInqCount(conn,type,word);

		close(conn);
		return result;
	}

	public int getInqCount() {
		Connection conn = getConnection();

		int listCount = new BoardDao().getInqCount(conn);

		if (listCount > 0) {
			System.out.println("커밋됨");
			commit(conn);
		} else {
			System.out.println("롤백됨");
			rollback(conn);
		}
		close(conn);
		return listCount;
	}

	public int getNotCount(String type, String word) {
		Connection conn = getConnection();

		int listCount = new BoardDao().getNotCount(conn,type,word);

		if (listCount > 0) {
			System.out.println("커밋됨");
			commit(conn);
		} else {
			System.out.println("롤백됨");
			rollback(conn);
		}
		close(conn);
		return listCount;
	}

	public int getGradCount(String word) {
		Connection conn = getConnection();

		int listCount = new BoardDao().getGradCount(conn,word);

		if (listCount > 0) {
			System.out.println("커밋됨");
			commit(conn);
		} else {
			System.out.println("롤백됨");
			rollback(conn);
		}
		close(conn);
		return listCount;
	}

	public int getNoticeAdListCount(int board_code) {
		Connection conn = getConnection();

		int listCount = new BoardDao().getNoticeListCount(conn,board_code);

		if (listCount > 0) {
			System.out.println("커밋됨");
			commit(conn);
		} else {
			System.out.println("롤백됨");
			rollback(conn);
		}
		close(conn);
		return listCount;
	}
	

	



	
	
}

	






	

	
	


