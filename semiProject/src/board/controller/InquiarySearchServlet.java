package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Board;
import board.model.vo.Inquiary;
import board.model.vo.Pagination;

/**
 * Servlet implementation class InquiarySearchServlet
 */
@WebServlet("/search.inquiary")
public class InquiarySearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InquiarySearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("여기 오긴하나?");
		String type=request.getParameter("type");
		String word=request.getParameter("word");
		
		System.out.println("type"+type);
		System.out.println("word"+word);
		
		//페이징 처리
		
		int listCount=new BoardService().searchInqCount(type,word);
		int currentPage;	// 현재 페이지를 표시 할 변수
		int limit;			// 한 페이지에 게시글이 몇 개가 보여질 것인지
		int maxPage;		// 전체 페이지에서 가장 마지막 페이지
		int startPage;		// 한번에 표시될 페이지가 시작 할 페이지
		int endPage;		// 한번에 표시될 페이지가 끝나는 페이지

		currentPage = 1;
		
		
		if(request.getParameter("currentPage")!=null)
		{		
			currentPage = Integer.valueOf(request.getParameter("currentPage"));
			
		}
		
		limit = 10;
		
		
		ArrayList<Board> bList= new BoardService().searchInquiary(currentPage,limit,type,word);
		
		
		
		System.out.println(listCount);
		
		maxPage = (int)((double)listCount/limit + 0.9);
		
		startPage = (((int)((double)currentPage/limit + 0.9))-1)*limit +1;
		
		endPage = startPage + limit - 1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		
		Pagination pn = new Pagination(currentPage, listCount, limit, maxPage, startPage, endPage);
		
		
		ArrayList<Inquiary> inquiaryList=new BoardService().searchInquaryTypeList(currentPage,limit,type,word);
		
		
		System.out.println(currentPage);
	System.out.println(bList);
	System.out.println(inquiaryList);
		
			request.setAttribute("pn", pn);
			request.setAttribute("bList", bList);
			request.setAttribute("inquiaryList", inquiaryList);
			
			request.getRequestDispatcher("views/adminPage/Ad_inquiary_list.jsp").forward(request, response);
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
