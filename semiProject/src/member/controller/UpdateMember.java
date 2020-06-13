package member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Account;
import member.model.vo.Member;

/**
 * Servlet implementation class UpdateMember
 */
@WebServlet("/update.me")
public class UpdateMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateMember() {
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
		// member 수정한게 있는값은 수정한것으로 넣어주고 수정한것이 없는 값은 원래 있던 값으로 처리 해서 update해준다. 
		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		String userBirth = request.getParameter("userBirth");
		String userPwd = "";		
		String phone = "";
		String email= "";
		
		String userPwd1 = request.getParameter("userPwd");		
		String phone1 = request.getParameter("phone1")+request.getParameter("phone2")+request.getParameter("phone3");
		String phone2 = request.getParameter("phone2")+request.getParameter("phone3");
		String email1= request.getParameter("email1")+request.getParameter("email2");
		System.out.println("더하기 나와?"+ request.getParameter("phone2")+request.getParameter("phone3"));
		if(userPwd1.equals("")) {
			userPwd = request.getParameter("userPwd1");
		}else {
			userPwd = userPwd1;
		}
		if(phone2.equals("")) {
			phone = request.getParameter("phone11");
			System.out.println("나는 폰인데 안쳤어");
		}else {
			phone = phone1;
		}
		if(email1.equals("")) {
			email = request.getParameter("email11");
			System.out.println("나는 이메일");
		}else {
			email = email1;
		}
		
		Member member = new Member(userId, userPwd, userName, userBirth, phone, email);
		
		
		// account 수정한게 있는값은 수정한것으로 넣어주고 수정한것이 없는 값은 원래 있던 값으로 처리 해서 update해준다. 
		String bank = "";
		String account_hold = "";
		String account = "";
		String userNo = request.getParameter("userNo");
		
		String bank1 = request.getParameter("bank");
		String account_hold1 = request.getParameter("account_hold");
		String account1 = request.getParameter("account");	
		
		if(bank1.equals("")) {
			bank = request.getParameter("bank1");			
		}else {
			bank = bank1;
		}
		if(account_hold1.equals("")) {
			account_hold = request.getParameter("account_hold1");			
		}else {
			account_hold = account_hold1;
		}
		if(account1.equals("")) {
			account = request.getParameter("account1");			
		}else {
			account = account1;
		}
		Account Account = new Account(bank, account_hold, account, userNo);
		
		// 객체에 다 저장 했으면 db로 값을 넘겨 준다.
		// member 처리		
		int result = new MemberService().updateMember(member);
		// account 처리
		int result1 = new MemberService().updateAccount(Account);
		
		if(result > 0 && result1 >0) {
			response.sendRedirect("myPage.me");
		}else {
			request.setAttribute("msg", "회원정보 수정 실패");
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
