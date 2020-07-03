package service.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.model.service.Service_Service;

/**
 * Servlet implementation class auctiondeadline
 */
@WebServlet("/deadline.up")
public class auctiondeadline extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public auctiondeadline() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String price = request.getParameter("price"); // 현재 입찰가격
		String sNo = request.getParameter("sNo"); // 현재 상품번호
		String suserNo = request.getParameter("suserNo"); // 서비스 판매자
		String buserNo = request.getParameter("buserNo"); // 서비스 구매자
		String loginUserNo = request.getParameter("loginUserNo");
		
		System.out.println("로그인 유저 번호 " + loginUserNo);
		System.out.println("현재 상품번호 :" + sNo);
		System.out.println("현재 입찰 가격 :" + price);
		System.out.println("서비스 판매자 :" + suserNo);
		  
		Service_Service svService = new Service_Service();
	
		int	result = svService.suserPointPlus(price, suserNo, loginUserNo, buserNo); // 최종입찰액을 상품판매자에게 입금해주는 메소드
		int	result2 = svService.snoStatusUpdate(sNo); // 마감종료 후 상품 상태를 N으로 갱신하는 메소드
		int	result3 = svService.biddingchangeupdate(sNo, price); // 최종 입찰금액 -> price_sale
		int	result4 = svService.insertbidbuylist(sNo,suserNo,buserNo); // list테이블에 상품구매 시 추가하는 메소드
		int	result5 = svService.sellCountPlus(suserNo); // 상품 판매 시 판매자 카운트 1 증가
		int	result6 = svService.buyCountPlusbid(buserNo); // 상품 구매 시 구매자 카운트 1 증가
	
		
		// getparmeter로 마감시간 함수의 result값을 받아오고
				// if(result < 0){
				//  해당 서비스 상품 판매자에게 최종입찰금액이 매개변수(price, suserNo)갖는 메소드 만들어서 갱신
				//  해당 서비스 상품 판매 상태 Y -> N으로 갱신 매개변수(sNo)갖는 메소드 만들기
				// }
		
		if(result > 0) {
			if(loginUserNo.equals(buserNo)) {
				request.getRequestDispatcher("/buyList.sv").forward(request, response); // 마감종료된 상품을 클릭 했을 시 로그인유저 이면서 구매자인경우가 구매내역으로 넘어감. 
			}else {
				request.getRequestDispatcher("/main.service").forward(request, response);// 마감시간 종료된 상품을 클릭했을 시 비로그인 유저인 경우는 메인페이지로 넘어감.	
			}
		
		} else {
	           request.setAttribute("msg", "사진 게시판 상세 페이지 조회 실패");
	           request.getRequestDispatcher("view/common/errorPage.jsp");
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
