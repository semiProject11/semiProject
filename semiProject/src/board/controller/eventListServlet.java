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

/**
 * Servlet implementation class eventListServlet
 */
@WebServlet("/eventList.Service")
public class eventListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public eventListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("이벤트 리스트 서블릿까지 왔다 무사히");
		
		BoardService bService=new BoardService();
		
		/*페이지네이션*/
		int listCount=bService.getListCount(); //총 게시물 갯수
		int currentPage; //현재 페이지번호
		int limit; //한 페이지에 뿌려질 페이지 갯수
		int maxPage; //전체 페이지 중 마지막
		int startPage; //표시된 페이지 중 첫번째
		int endPage;	//표시된 페이지 중 마지막
		
		currentPage=1;
		
		if(request.getParameter("currentPage")!=null) {
			currentPage=Integer.valueOf(request.getParameter("currentPage"));
		}
		
		
		limit=10;
		maxPage=(int)((double)listCount/limit+0.9);
		startPage= (((int)((double)currentPage/limit+0.9))-1)*limit+1; 
		endPage=startPage+limit-1;
		if(maxPage<endPage) {
			endPage=maxPage;
		}
	
//		Pagination pn = new Pagination(currentPage, listCount, limit, maxPage, startPage, endPage);
		
		
		/*이벤트 리스트 가져오기*/
		ArrayList list=bService.selectList(currentPage,limit);
		
		RequestDispatcher view=null;
		
		if(list!=null) {
			view=request.getRequestDispatcher("views/adminPage/Ad_event_list.jsp");
			request.setAttribute("list", list);
//			request.setAttribute("pn", pn);
		}else {
			view=request.getRequestDispatcher("views/common/errorPage.jsp");
			request.setAttribute("msg", "게시글 조회실패");
		}
		
		view.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
