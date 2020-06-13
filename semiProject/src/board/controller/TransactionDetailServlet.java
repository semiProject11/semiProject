package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;
import service.model.service.Service_Service;
import service.model.vo.Service_Category;
import service.model.vo.Service_List;
import service.model.vo.Service_ServiceTable_oh;

/**
 * Servlet implementation class TransactionDetailServlet
 */
@WebServlet("/detail.transaction")
public class TransactionDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TransactionDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("무사도착");
		
		
		int service_no=Integer.valueOf(request.getParameter("serviceNo"));
		
	
			Service_List trade=new Service_Service().selectTrade(service_no);
			Service_ServiceTable_oh service=new Service_Service().selectTradeServ(service_no);
			Service_Category category=new Service_Service().selectTradeCategory(service_no);
			Member seller=new MemberService().selectSeller(service_no);
			Member buyer=new MemberService().selectBuyer(service_no);
			
			
			
			if (trade!=null&&service!=null&&seller!=null&&buyer!=null) {
				request.setAttribute("buyer", buyer);
				request.setAttribute("trade", trade);
				request.setAttribute("service", service);
				request.setAttribute("seller", seller);
				request.setAttribute("category", category);
				request.getRequestDispatcher("views/adminPage/Ad_transaction_detail.jsp").forward(request, response);
			} else {
				request.setAttribute("msg", "게시글 상세 조회 실패!");
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
