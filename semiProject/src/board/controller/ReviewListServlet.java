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
import board.model.vo.Pagination;
import board.model.vo.ReviewAd;
import member.model.service.MemberService;
import member.model.vo.Member;
import service.model.service.Service_Service;
import service.model.vo.Service;
import service.model.vo.Service_Category;
import service.model.vo.Service_List;

/**
 * Servlet implementation class ReviewListServlet
 */
@WebServlet("/relist.bo")
public class ReviewListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		

		//페이징 처리
		int board_code=40;
		int listCount=new BoardService().getNoticeListCount(board_code);
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
		
		maxPage = (int)((double)listCount/limit + 0.9);
		
		startPage = (((int)((double)currentPage/limit + 0.9))-1)*limit +1;
		
		endPage = startPage + limit - 1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		Pagination pn = new Pagination(currentPage, listCount, limit, maxPage, startPage, endPage);
		
		
		ArrayList<Board> bList=new BoardService().selectB_ReivewList();
		ArrayList<ReviewAd> rList=new BoardService().selectR_ReivewList();
		ArrayList<Service_Category> scList=new Service_Service().selectSC_ReivewList();
		ArrayList<Service> sList=new Service_Service().selectS_ReivewList();
		ArrayList<Service_List> slList=new Service_Service().selectSL_ReivewList();
		ArrayList<Member> mList=new MemberService().selectM_ReivewList();
		
//		System.out.println(bList);
//		System.out.println(rList);
//		System.out.println(scList);
//		System.out.println(sList);
//		System.out.println(slList);
//		System.out.println(mList);
		
		RequestDispatcher view=null;
		
		
			request.setAttribute("pn", pn);
			request.setAttribute("bList", bList);
			request.setAttribute("rList", rList);
			request.setAttribute("scList", scList);
			request.setAttribute("sList", sList);
			request.setAttribute("slList", slList);
			request.setAttribute("mList", mList);
			
			request.getRequestDispatcher("views/adminPage/Ad_review_list.jsp").forward(request, response);
			
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
