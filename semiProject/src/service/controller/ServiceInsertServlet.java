package service.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServiceInsertServlet
 */
@WebServlet("/register.service")
public class ServiceInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServiceInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String category = request.getParameter("category");
	      String title = request.getParameter("title");
	      String saleMethod = request.getParameter("saleMethod");
	      int salePrice = Integer.parseInt(request.getParameter("salePrice"));
	      int biddingPrice = Integer.parseInt(request.getParameter("biddingPrice"));
	      String deadline = request.getParameter("deadline");
	      String subject = request.getParameter("subject");
	      String detailContent = request.getParameter("detailContent");
	      String sellerInfo = request.getParameter("sellerInfo");
	      String monday = request.getParameter("monday");
	      String startTime = request.getParameter("StratTime");
	      String finishTime = request.getParameter("finishTime");
	      
	      //로그인했을 떄 글 작성하게 하기 위한 session
//	      HttpSession session = request.getSession();
//	      Member loginUser = (Member)session.getAttribute("loginUser");
	      

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
