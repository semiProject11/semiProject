package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;
import service.model.service.Service_Service;
import service.model.vo.Service_List;
import service.model.vo.Service_ServiceTable_oh;

/**
 * Servlet implementation class TransactionListServlet
 */
@WebServlet("/list.transaction")
public class TransactionListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TransactionListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ArrayList<Service_List> tradeList=new Service_Service().selectTradeList();
		ArrayList<Service_ServiceTable_oh> serviceList=new Service_Service().selectServiceList();
		ArrayList<Member> sellerList=new MemberService().selectTradeListS();
		ArrayList<Member> buyerList=new MemberService().selectTradeListB();
		
	
		 
		  System.out.println("서블렛에서"+tradeList);
		  System.out.println("서블렛에서"+serviceList);
		  System.out.println("서블렛에서"+sellerList);
		  System.out.println("서블렛에서"+buyerList);
		 
		
		if(!tradeList.isEmpty()&&!serviceList.isEmpty()&&!sellerList.isEmpty()&&!buyerList.isEmpty()) {
			request.setAttribute("sellerList", sellerList);
			request.setAttribute("buyerList", buyerList);
			request.setAttribute("tradeList", tradeList);
			request.setAttribute("serviceList", serviceList);
			
			
			request.getRequestDispatcher("views/adminPage/Ad_transaction_list.jsp").forward(request, response);
			
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
