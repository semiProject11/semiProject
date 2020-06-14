package service.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.model.service.Service_Service;
import service.model.vo.Pagination;
import service.model.vo.ServiceBuyList;

/**
 * Servlet implementation class mpBuyListServlet
 */
@WebServlet("/buyList.sv")
public class MpBuyListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MpBuyListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		HttpSession session = request.getSession();
//		
//		Member loginUser = (Member)session.getAttribute("loginUser");
//		
//		String userNo = loginUser.getUserNo();
		String userNo = "1";
		
		Service_Service sService = new Service_Service();
		// 구매 리스트 총갯수 구하기
		int listCount = sService.getBuyListCount(userNo);
		System.out.println(listCount);
		//---------- 페이징 처리 추가 ----------------
		int currentPage;	// 현재 페이지를 표시 할 변
		int limit;			// 한 페이지에 게시글이 몇 개가 보여질 것인지
		int maxPage;		// 전체 페이지에서 가장 마지막 페이지
		int startPage;		// 한번에 표시될 페이지가 시작 할 페이지
		int endPage;		// 한번에 표시될 페이지가 끝나는 페이지
		
		// 기본적으로 게시판은 1페이지부터 시작함
		currentPage = 1;
		// 하지만 페이지 전환시 전달받은 현재 페이지가 있을 시 해당 페이지를 currentPage로 적용
		if(request.getParameter("currentPage")!=null) {
			currentPage = Integer.valueOf(request.getParameter("currentPage"));
		}
		
		// limit
		limit = 5;
		
		maxPage = (int)((double)listCount/limit+0.9);
		
		startPage = (((int)((double)currentPage/limit+0.9))-1)*limit +1;
		
		endPage = startPage + limit -1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		Pagination pn = new Pagination(currentPage, listCount, limit,  maxPage, startPage, endPage);
		
		// 화면에 뿌려줄 게시판 리스트 조회
		ArrayList<ServiceBuyList> bsList = sService.selectBuyServiceList(currentPage, limit, userNo);
		
		RequestDispatcher view = null;
		if(bsList != null) {
			view = request.getRequestDispatcher("views/myPage/mp_buy_list.jsp");
			request.setAttribute("bsList", bsList);
			request.setAttribute("pn", pn);
		}else {
			view = request.getRequestDispatcher("views/common/errorPage.jsp");
			request.setAttribute("msg", "buyList 조회 실패!!");
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
