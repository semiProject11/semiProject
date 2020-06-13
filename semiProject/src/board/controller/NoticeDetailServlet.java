package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Board;

/**
 * Servlet implementation class NoticeDetailServlet
 */
@WebServlet("/detail.notice")
public class NoticeDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int board_no=Integer.valueOf(request.getParameter("board_no"));
		
		int result = new BoardService().updateCount(board_no);
		
		if(result>0) {
			
			Board b=new BoardService().selectBoardDetail(board_no);
			
			if (b!=null) {
				request.setAttribute("board", b);
				request.getRequestDispatcher("views/customerService/CS_notice_detail.jsp").forward(request, response);
			} else {
				request.setAttribute("msg", "게시글 상세 조회 실패!");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			}
			
			
			
			
		}else {
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response); //게시글 조회수 증가 실패
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
