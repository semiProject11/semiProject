package board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import member.model.vo.Member;

/**
 * Servlet implementation class ReportCheckServlet
 */
@WebServlet("/check.report")
public class ReportCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportCheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String service_no=request.getParameter("service");
		String user_no=request.getParameter("user");
		String report_type=request.getParameter("type");
		int result=0;
		Member member=new Member();
		
		System.out.println(service_no);
		System.out.println(user_no);
		
		
		if(report_type=="판매자를 신고합니다") {
			result=new BoardService().checkReportS(service_no);
			member=new BoardService().checkReportSeller(service_no);
		}else {
			result=new BoardService().checkReportB(service_no);	
			member=new BoardService().checkReportBuyer(service_no);
			
		}
		
		
		PrintWriter out = response.getWriter();

		if(result>0) {
			out.print("success");
			request.setAttribute("member", member);
			request.getRequestDispatcher("views/customerService/CS_report_insertForm.jsp").forward(request, response);
			
		}else {
			out.print("fail");
		}
		out.flush(); 
		out.close();
		
		out.println("출력테스트");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
