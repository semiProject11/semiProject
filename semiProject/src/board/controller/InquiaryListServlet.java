package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
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
 * Servlet implementation class InquiaryListServlet
 */
@WebServlet("/list.inquiary")
public class InquiaryListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InquiaryListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		//페이징 처리
		
		
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
		ArrayList<Board> bList=new BoardService().selectInquiaryList(currentPage,limit);
		int listCount=new BoardService().getInqCount();
		
		maxPage = (int)((double)listCount/limit + 0.9);
		
		startPage = (((int)((double)currentPage/limit + 0.9))-1)*limit +1;
		
		endPage = startPage + limit - 1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		
		
		System.out.println("스타트"+listCount);
		System.out.println("스타트"+startPage);
		System.out.println("스타트"+endPage);
		
		ArrayList<Inquiary> inquiaryList=new BoardService().selectInquaryTypeList(currentPage,limit);
		Pagination pn = new Pagination(currentPage, listCount, limit, maxPage, startPage, endPage);
	
		
			request.setAttribute("pn", pn);
			request.setAttribute("bList", bList);
			request.setAttribute("inquiaryList", inquiaryList);
			request.getRequestDispatcher("views/adminPage/Ad_inquiary_list.jsp").forward(request, response);
			
		System.out.println("문의타입을?"+inquiaryList);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
