package service.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.model.service.Service_Service;

/**
 * Servlet implementation class generalbtnServlet
 */
@WebServlet("/generalbtn.up")
public class generalbtnServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public generalbtnServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String saleprice = request.getParameter("saleprice"); // 구매가
		String loginUserNo = request.getParameter("loginUserNo");
		String sNo = request.getParameter("sNo");
		String buserNo = request.getParameter("buserNo");
		String suserNo = request.getParameter("suserNo"); // 서비스 판매자
		

		System.out.println("구매가 :" + saleprice);
		System.out.println("현재 상품번호 :" + sNo);
		System.out.println("현재 로그인 사람 :" + loginUserNo);
		System.out.println("현재 서비스 구매자 :" + buserNo);
		System.out.println("서비스 판매자 :" + suserNo);
		
		
		Service_Service svService = new Service_Service();
		int result = svService.salePriceMinusPoint(saleprice, loginUserNo); // 포인트 = 포인트 - 구매가
		int result2 = svService.changebuser(sNo, loginUserNo); // 상품 게시물 상태 Y->N 및 구매자 번호 변경
		int result3 = svService.salePricePlusPoint(saleprice, suserNo); // 포인트 = 포인트 + 구매가
		int result4 = svService.insertlist(sNo,suserNo,loginUserNo); // list테이블에 상품구매 시 추가하는 메소드
		int result5 = svService.sellCountPlus(suserNo); // 상품 판매 시 판매자 카운트 1 증가
		int result6 = svService.buyCountPlus(loginUserNo); // 상품 구매 시 구매자 카운트 1 증가
		
		// 상품을 구매하면 구매한 사람 포인트에서 구매가 만큼 포인트가 차감이된다.
		// 해당 상품게시물에 구매자는 구매를 한사람으로 변경된다.
		// 해당 상품 판매자의 포인트는 자신이 올린 판매가 만큼 가격이 증가한다.
		
		if(result > 0) {
//			request.getRequestDispatcher("/auction.detail"); // 갱신 완료 후 서블릿을 통해 상세보기 페이지로 잘 갱신됬는지 확인하기.
			request.getRequestDispatcher("/buyList.sv").forward(request, response); // 상품 구매 후 마이페이지 - 구매내역으로 이동!

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
