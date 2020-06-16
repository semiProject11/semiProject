package board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;

/**
 * Servlet implementation class NoticeDeleteServlet
 */
@WebServlet("/delete.notice")
public class NoticeDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String board_no=request.getParameter("arr");
		System.out.println(board_no);
	
		StringTokenizer st=new StringTokenizer(board_no,",");
		ArrayList<String> arr=new ArrayList();
		while(st.hasMoreTokens()) {
			arr.add(st.nextToken());
		
		}
		
		System.out.println(arr);
		
		
		int result=new BoardService().deleteBoard(arr);
		
		System.out.println("DAO다녀온 후 RESULT:"+result);
		
		if (result > 0) {
			request.getRequestDispatcher("/listAd.notice").forward(request, response);

		} else {
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
