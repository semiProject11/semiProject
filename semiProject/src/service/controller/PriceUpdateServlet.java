package service.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.model.service.Service_Service;

/**
 * Servlet implementation class PriceUpdateServlet
 */
@WebServlet("/Price.up")
public class PriceUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PriceUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String insertprice = request.getParameter("insertprice"); // 입력 입찰가격
		String price = request.getParameter("price"); // 현재 입찰가격
		String loginUserNo = request.getParameter("loginUserNo"); // 로그인 한 회원번호(구매자)
		String buserNo = request.getParameter("buserNo"); // 서비스 상품 게시물을 현재 구매하고있는사람
		String sNo = request.getParameter("sNo"); // 현재 상품번호
		String suserNo = request.getParameter("suserNo"); // 서비스 판매자
		String timeout = request.getParameter("timeout"); // 마감판별
		
		System.out.println("현재 상품번호 :" + sNo);
		System.out.println("입찰가격 입력값 :" + insertprice);
		System.out.println("현재 입찰 가격 :" + price);
		System.out.println("현재 로그인 사람 :" + loginUserNo);
		System.out.println("현재 서비스 입찰자 :" + buserNo);
		System.out.println("서비스 판매자 :" + suserNo);
		  

		Service_Service svService = new Service_Service();
		int result = svService.updateMinusPoint(insertprice, loginUserNo); // 포인트 = 포인트 - 입력 입찰 금액
		int result2 = svService.updatebindding(sNo,insertprice,loginUserNo); // 입찰가격 입력 후 입찰성공 시 해당 서비스 번호에 입찰가격과 구매자 번호 갱신
		
		
		if(!loginUserNo.equals(buserNo)) {
			int result3 = svService.updatePlusPoint(price, buserNo); // 포인트 = 포인트 + 입력 입찰 금액 (다른 사람이 내 입찰금액보다 큰 금액을 입력해서 내가 입력한금액을 반환받음)
		}
		
		if(result > 0) {
			request.getRequestDispatcher("/auction.detail").forward(request, response); // 갱신 완료 후 서블릿을 통해 상세보기 페이지로 잘 갱신됬는지 확인하기.
		}else {
			   request.setAttribute("msg", "실패 !");
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
