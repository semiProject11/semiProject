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
import member.model.service.MemberService;
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
		HttpSession session = request.getSession();	
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		String userNo = loginUser.getUserNo();	
//		String userNo = "1";
		int rating = Integer.valueOf(request.getParameter("value11"));
		String content = request.getParameter("content");
		String title = request.getParameter("sNO")+"_review";
		int serviceNo = Integer.valueOf(request.getParameter("sNO"));
		String sUserNo = new BoardService().selectUserNo(serviceNo);
		//판매자 등금 조회
		int ratingTot = new MemberService().selectRating(sUserNo)+rating;
		String grade = "BRONZE";
		
		
		Review re = new Review(title, content, userNo);
		Review re1 = new Review(rating, serviceNo, sUserNo);
		// board에 추가
		int result = new BoardService().insertReviewB(re);
		// review에 추가
		int result1 = new BoardService().insertReviewR(re1);
		
		if(ratingTot >50) {
			grade ="SILVER";
		}else if(ratingTot>100) {
			grade ="GOLD";
		}else if(ratingTot>150) {
			grade ="PLATINUM";
		}else if(ratingTot>200) {
			grade ="DIAMOND";
		}
		
		// 판매자 등급포인트에 추가
		int result2 = new MemberService().memberGradeTot(sUserNo, ratingTot,grade);
		
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
