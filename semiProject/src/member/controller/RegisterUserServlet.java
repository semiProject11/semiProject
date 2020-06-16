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

				request.setCharacterEncoding("UTF-8");
				
				String userId = request.getParameter("userId");
				String userPwd = request.getParameter("userPwd");
				String userName = request.getParameter("userName");
				String userBirth = request.getParameter("userBirth");

				String bank = request.getParameter("bank");
				String account_hold = request.getParameter("account_hold");
				String account = request.getParameter("account");		
				String userNo = request.getParameter("userNo");
				
				
				// getParameterValues메소드를 이용해야 한다.
				String arrP[] = request.getParameterValues("phone");
				String arrE[] = request.getParameterValues("email");
				
				
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
				
				Account Account = new Account(bank, account_hold, account, userNo);
				
				
				
				
				int result = new MemberService().registerMember(member, Account);
			

				
				if(result > 0) {	// 성공
					response.sendRedirect("index.jsp");
				}else{				// 실패
					response.sendRedirect("errorPage.jsp");
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
