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
import board.model.vo.Inquiary;
import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class InquiaryDetailAdServlet
 */
@WebServlet("/detailAd.inquiary")
public class InquiaryDetailAdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InquiaryDetailAdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		System.out.println("서블릿 도착");
		
		int board_no=Integer.valueOf(request.getParameter("board_no"));
		
		Board board=new BoardService().selectInquiary(board_no);
		Member member=new MemberService().selectMemberInquiary(board_no);
		Inquiary inquiary=new BoardService().selectInquiaryType(board_no);
		
		System.out.println("돌아온 서블릿에서??"+board);
		System.out.println("돌아온 서블릿에서??"+member);
		System.out.println("돌아온 서블릿에서??"+inquiary);
		
		
		
		
		RequestDispatcher view = null;
		
		if(board!=null&&member!=null&&inquiary!=null) {
			request.setAttribute("board", board);
			request.setAttribute("member", member);
			request.setAttribute("inquiary", inquiary);
			System.out.println("서블릿에서??"+board);
			System.out.println("서블릿에서??"+member);
			System.out.println("서블릿에서??"+inquiary);
			
			
			view = request.getRequestDispatcher("views/adminPage/Ad_inquiary_detail.jsp");
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
