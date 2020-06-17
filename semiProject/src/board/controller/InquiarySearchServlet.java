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
import board.model.vo.Inquiary;

/**
 * Servlet implementation class InquiarySearchServlet
 */
@WebServlet("/search.inquiary")
public class InquiarySearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InquiarySearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type=request.getParameter("search");
		String word=request.getParameter("word");
		
	
		
		ArrayList<Board> bList= new BoardService().searchInquiary(type,word);
		ArrayList<Inquiary> inquiaryList=new BoardService().searchInquaryTypeList(type,word);
		
		
		/* System.out.println("다 끝나고 서블릿 온 후:"+bList); */
		
	
			request.setAttribute("bList", bList);
			request.setAttribute("inquiaryList", inquiaryList);
			
			request.getRequestDispatcher("views/adminPage/Ad_inquiary_list.jsp").forward(request, response);
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
