package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.InquiaryList;

/**
 * Servlet implementation class MpInquiaryDetailServlet
 */
@WebServlet("/detail.inquiary")
public class MpInquiaryDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MpInquiaryDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int board_no = Integer.valueOf(request.getParameter("bid"));
		
		InquiaryList iq = new BoardService().selectInquiaryDetail(board_no);
		
		if(iq!=null) {
			request.setAttribute("inquiary", iq);
			request.getRequestDispatcher("views/myPage/mp_inquiary_detail.jsp").forward(request, response); 
		} else {
			request.setAttribute("msg", "1:1문의 조회 실패!");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
