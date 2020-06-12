package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Account;
import member.model.vo.Member;

/**
 * Servlet implementation class RegisterUserServlet
 */
@WebServlet("/register.me")
public class RegisterUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 화면단으로 부터 name에 담겨 넘어온 값중에 한글이 있을 경우 인코딩 처리
				request.setCharacterEncoding("UTF-8");
				
				// 2. 전송 값 꺼내서 변수에 저장 및 객체 생성
				String userId = request.getParameter("userId");
				String userPwd = request.getParameter("userPwd");
				String userName = request.getParameter("userName");
				String userBirth = request.getParameter("userBirth");

				String bank = request.getParameter("bank");
				String account_hold = request.getParameter("account_hold");
				String account = request.getParameter("account");		
				
				
				
				// getParameterValues메소드를 이용해야 한다.
				String arrP[] = request.getParameterValues("phone");
				String arrE[] = request.getParameterValues("email");
				
				
				// 1차 정규화에는 어긋나지만 여러개의 값을 하나의 값으로 바꾸는 연산을 해보자!
				String phone = "";
				if(arrP != null) {	
					for(int i=0 ; i < arrP.length ; i++) {
						if(i != arrP.length - 1) {
							phone += arrP[i] + "-";
						}else {
							phone += arrP[i];
						}
					}
				}
				String email = "";
				if(arrE != null) {	
					for(int i=0 ; i < arrE.length ; i++) {
						if(i != arrE.length - 1) {
							email += arrE[i];
						}else {
							email += arrE[i];
						}
					}
				}
				
				Member member = new Member(userId, userPwd, userName, userBirth, phone, email);
				
				Account Account = new Account(bank, account_hold, account);
				// 3. DB까지 출발하고 반환값 받기
				int result = new MemberService().registerMember(member, Account);
			
				// 4. 반환 결과에 따른 if~else 처리
				String page = "";
				if(result > 0) {	// 회원가입이 되었다면
					page = "views/common/successPage.jsp";
					request.setAttribute("msg", "회원 가입 성공!!!");
				}else{				// 회원가입이 실패했다면
					page = "views/common/errorPage.jsp";
					request.setAttribute("msg", "회원 가입 실패");
				}
				RequestDispatcher view = request.getRequestDispatcher(page);
				view.forward(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
