package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Board;
import board.model.vo.Report;

/**
 * Servlet implementation class NoticeSearchServlet
 */
@WebServlet("/search.report")
public class ReportSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String type=request.getParameter("search");
		String word=request.getParameter("word");
		
		System.out.println(type);
		System.out.println(word);
		
		
		ArrayList<Board> bList= new BoardService().searchReport(type,word);
		ArrayList<Report> rList=new BoardService().searchReportType(type,word);
	
		
	
			request.setAttribute("bList", bList);
			request.setAttribute("rList", rList);
			request.getRequestDispatcher("views/adminPage/Ad_report_list.jsp").forward(request, response);
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
