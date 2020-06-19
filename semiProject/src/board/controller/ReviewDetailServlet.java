package board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Board;
import member.model.service.MemberService;
import member.model.vo.Member;
import service.model.service.Service_Service;
import service.model.vo.Service;
import service.model.vo.ServiceBuyList;
import service.model.vo.Service_Category;
import service.model.vo.Service_List;





/**
 * Servlet implementation class ReviewDetailServlet
 */
@WebServlet("/detail.review")
public class ReviewDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("아아 동작되냐?");
		
		int board_no = Integer.valueOf(request.getParameter("board_no"));
		
		System.out.println(board_no);
		Board board = new BoardService().selectBoardReivew(board_no);
		Member member = new MemberService().selectMemberReview(board_no);
		Member seller = new MemberService().selectSellerReview(board_no);
		Service service = new Service_Service().selectServiceReview(board_no);
		Service_List lService = new Service_Service().selectLServiceReview(board_no);
		Service_Category cService = new Service_Service().selectCServiceReview(board_no);	
		ServiceBuyList sbService = new Service_Service().selectBuyListServiceReview(board_no);
		
RequestDispatcher view = null;
		
		if(board!=null&&member!=null&&service!=null&&lService!=null&&cService!=null&&sbService!=null&&seller!=null) {
			request.setAttribute("board", board);
			request.setAttribute("member", member);
			request.setAttribute("service", service);
			request.setAttribute("lService", lService);
			request.setAttribute("cService", cService);
			request.setAttribute("sbService", sbService);
			request.setAttribute("seller", seller);
			

			System.out.println("서블릿에서??"+board);
			System.out.println("서블릿에서??"+member);
			System.out.println("서블릿에서??"+service);
			System.out.println("서블릿에서??"+lService);
			System.out.println("서블릿에서??"+cService);
			System.out.println("서블릿에서??"+sbService);
			

			
			
			view = request.getRequestDispatcher("views/adminPage/Ad_review_detail.jsp");
		}else {
			view = request.getRequestDispatcher("views/common/errorPage.jsp");
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
