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
import board.model.vo.Files;

/**
 * Servlet implementation class NoticeUpdateServlet
 */
@WebServlet("/detailAd.notice")
public class NoticeDetailAdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeDetailAdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int board_no=Integer.valueOf(request.getParameter("board_no"));
		
		Board board=new BoardService().selectBoardNo(board_no);
		ArrayList<Files> flist=new BoardService().selectFiles(board_no);
		
//		System.out.println("디테일서블렛 반환값"+flist);
//		System.out.println("디테일서블렛 반환값"+board);
		RequestDispatcher view = null;
		
		if(board!=null) {
			request.setAttribute("board", board);
			request.setAttribute("flist", flist);
			view = request.getRequestDispatcher("views/adminPage/Ad_notice_detail.jsp");
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
