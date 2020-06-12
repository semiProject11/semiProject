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
import board.model.vo.Inquiary;

/**
 * Servlet implementation class InquiaryListServlet
 */
@WebServlet("/list.inquiary")
public class InquiaryListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InquiaryListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ArrayList<Board> bList=new BoardService().selectInquiaryList();
		ArrayList<Inquiary> inquiaryList=new BoardService().selectInquaryTypeList();
		
		RequestDispatcher view=null;
		if(!bList.isEmpty()&&!inquiaryList.isEmpty()) {
			request.setAttribute("bList", bList);
			request.setAttribute("inquiaryList", inquiaryList);
			request.getRequestDispatcher("views/adminPage/Ad_inquiary_list.jsp").forward(request, response);
			
		}else {
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
