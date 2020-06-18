package board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;

/**
 * Servlet implementation class InquiaryReplyServlet
 */
@WebServlet("/reply.inquiary")
public class InquiaryReplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InquiaryReplyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String reply=request.getParameter("content");
		int board_no=Integer.valueOf(request.getParameter("board_no"));
		System.out.println("리플 서블렛이당:"+reply+board_no);
		

		int result = new BoardService().insertReplyInq(reply,board_no);
		
		System.out.println(result);
		
		PrintWriter out = response.getWriter();
		
		
		

		if(result >0) {
			out.print("success");
			System.out.println("성공임다아아앙");
		}else {
			out.print("fail");
		}
		
		out.flush();
		out.close();


		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
