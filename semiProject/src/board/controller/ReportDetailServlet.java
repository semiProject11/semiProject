package board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Report;

/**
 * Servlet implementation class ReportDetailServlet
 */
@WebServlet("/detail.report")
public class ReportDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int board_no=Integer.valueOf(request.getParameter("board_no"));
	
	
		Report report=new BoardService().selectReport(board_no);
	
		
		
		
		RequestDispatcher view = null;
		
	
		 if(report!=null) {
		 
		 
			 request.setAttribute("report", report);
		 view =request.getRequestDispatcher("views/adminPage/Ad_report_detail.jsp");
		
		 
		 }else { view = request.getRequestDispatcher("views/common/errorPage.jsp"); }
		 
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
