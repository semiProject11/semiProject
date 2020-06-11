package service112233.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javafx.beans.binding.SetBinding;
import service112233.model.service.Service_Service;
import service112233.model.vo.Service;

/**
 * Servlet implementation class insertService
 */
@WebServlet("/register.service")
public class ServiceInsertService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServiceInsertService() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//		int saleprice = Integer.parseInt(request.getParameter("saleprice"));
//		int bidprice = Integer.parseInt(request.getParameter("bidprice"));

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
//		HttpSession session = request.getSession();
//		Member loginUser = (Member)session.getAttribute("loginUser");
		
		
		Service sv = new Service();
		
		sv.setCategoryName(category);
		sv.setsTitle(title);
		sv.setSaleMethod(saleMethod);
		sv.setSalePrice(salePrice);
		sv.setBiddingPrice(biddingPrice);
		sv.setDeadline(deadline);
		sv.setSubject(subject);
		sv.setDeadline(detailContent);
		sv.setSellerInfo(sellerInfo);
		sv.setAvailableDate(monday);
		sv.setContacTime_start(startTime);
		sv.setContacTime_finish(finishTime);
		
		
		//service 객체 넘겨줌
		
		int result = new Service_Service().insertService(sv);

		if(result >0) {
			response.sendRedirect("currentPage=1");	//앞부분 urlmapping값 
		}else {
			request.setAttribute("msg", "조회할 수 없습니다.");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
