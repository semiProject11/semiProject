package service.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.MemberService;
import member.model.vo.Member;
import service.model.service.Service_Service;
import service.model.vo.MpSelectBSNo;

/**
 * Servlet implementation class MpCanclePointServlet
 */
@WebServlet("/cancel.point")
public class MpCancelPointServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MpCancelPointServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		String userId =loginUser.getUserId();
		
		
		String sn = request.getParameter("serviceNo");
		
		System.out.println("서비스 번호는 잘 왔니"+sn);
		
		MpSelectBSNo bs = new Service_Service().selectBSNo(sn);
		String bNo = bs.getBuyerNo();
		String sNo = bs.getSellerNo();
		int price = bs.getPrice();
		
		int pointB = new MemberService().selectPB(bNo)+price;
		int pointS = new MemberService().selectPS(sNo)-price;
		
		
		int result = new Service_Service().cancelPointb(bNo, pointB);
		int result1 = new Service_Service().cancelPoints(sNo, pointS);
		int result2 = new Service_Service().deleteTH(sn);
		
		RequestDispatcher view = null;
		if(result>0 && result1>0) {
			if(userId.equals("admin")) {
				
			}
			view = request.getRequestDispatcher("list.refund");
			
			
		}else {
			
			view = request.getRequestDispatcher("views/common/errorPage.jsp");
			request.setAttribute("msg", "환불 실패!!");
		}
		
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
