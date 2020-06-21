package service.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.vo.Member;
import service.model.service.Service_Service;
import service.model.vo.CategoryListPd;
import service.model.vo.Service;
import service.model.vo.Service_Review;
import service.model.vo.Service_SeviceFilesTable_oh;
import service.model.vo.Service_info;

/**
 * Servlet implementation class auctiondetailServlet
 */
@WebServlet("/auction.detail")
public class auctiondetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public auctiondetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String sNo = request.getParameter("sNo");
		String suserNo = request.getParameter("suserNo");
		String loginUserNo = request.getParameter("loginUserNo");
		
		int sNo2 = Integer.valueOf(sNo);
		
		System.out.println("판매자 번호 : " + suserNo);
		System.out.println("구매자 번호 : " + loginUserNo);
		
		
		Service_Service svService = new Service_Service();
		int result = svService.updateCount(sNo2);
		
		 
		
		
	      CategoryListPd clpd = svService.auctiondetail(sNo);
	      ArrayList<Service_SeviceFilesTable_oh> flist = svService.selectfList();
	      
	      ArrayList<Service_info> infolist = svService.selectsvinfo(sNo);
	      
	      
	      ArrayList<Service_Review> rlist = svService.selectreview(suserNo);
	      
	      Member member = svService.pointcheck(loginUserNo);
	      
	      Service sv = svService.selectbuserNo(sNo);
	      
	     if(result > 0) {
	      
	      
    	 if(clpd!=null&&!flist.isEmpty()) {
    		 if(clpd.getDeadLine()!=null) {
    			 request.setAttribute("clpd", clpd);
    			 request.setAttribute("flist", flist);
    			 request.setAttribute("infolist", infolist);
    			 request.setAttribute("rlist", rlist);
    			 request.setAttribute("member", member);
    			 request.setAttribute("sv", sv);
    			 
    			 request.getRequestDispatcher("views/service/sv_detail.jsp").forward(request, response);
    		 } else {
    			 request.setAttribute("clpd", clpd);
    			 request.setAttribute("flist", flist);
    			 request.setAttribute("infolist", infolist);
    			 request.setAttribute("rlist", rlist);
    			 request.setAttribute("member", member);
    			 request.setAttribute("sv", sv);
    			 request.getRequestDispatcher("views/service/sv_general_detail.jsp").forward(request, response);  
    		 }
    	 } else {
    		 request.setAttribute("msg", "사진 게시판 상세 페이지 조회 실패");
    		 request.getRequestDispatcher("view/common/errorPage.jsp");
		}
	      
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
