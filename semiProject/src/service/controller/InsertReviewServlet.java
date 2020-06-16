package service.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.model.service.BoardService;
import board.model.vo.Review;
import member.model.vo.Member;

/**
 * Servlet implementation class InsertReviewServlet
 */
@WebServlet("/insert.re")
public class InsertReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertReviewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
//		HttpSession session = request.getSession();	
//		
//		Member loginUser = (Member)session.getAttribute("loginUser");
//		
//		String userNo = loginUser.getUserNo();	
		String userNo = "1";
		int rating = Integer.valueOf(request.getParameter("value1"));
		String content = request.getParameter("content");
		String title = request.getParameter("title")+"_review";
		int serviceNo = Integer.valueOf(request.getParameter("sNO"));
		String sUserNo = new BoardService().selectUserNo(serviceNo);
		
		
		Review re = new Review(title, content, userNo);
		Review re1 = new Review(rating, serviceNo, sUserNo);
		System.out.println(re1);
		
		int result = new BoardService().insertReviewB(re);
		
		int result1 = new BoardService().insertReviewR(re1);
		
		if(result>0 && result1>0) {
			response.sendRedirect("buyList.sv");
		}else {
			request.setAttribute("msg", "포인트 충전 실패");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
