package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.me")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id= request.getParameter("userId");
		String pwd = request.getParameter("userPwd");
		
		Member member = new Member(id, pwd);
		System.out.println(request.getParameter("userId"));
	    System.out.println(pwd);
		
	    // MemberService로 이동
	    Member loginUser = new MemberService().loginMember(member);
	    System.out.println(loginUser);
	    // 회원 정보 나오는지 확인
//	    System.out.println("로그인 이후 Servlet에서 확인하기 : " + loginUser);
	    
	    if(loginUser != null) {

	    	// 로그인 가능한 사용자 이면
	    	HttpSession session = request.getSession();
	    	
	    	// 지정한 시간이나 열어둔 시간까지 유지
	    	session.setAttribute("loginUser", loginUser);
	    	
	    	// 로그인 성공하면 메인 페이지로 이동
	    	response.sendRedirect("index.jsp");
	    	
	    }else {

	    	request.setAttribute("alert", "로그인 실패");
			// 페이지에 전달하고자 하는 객체를 request의 attribute에 넣었다
			
			RequestDispatcher view = request.getRequestDispatcher("views/loginAndRegister/LS_login.jsp");
//			// 사용자에게 보여질 페이지를 RequestDisppatcher 객체로 만든다.
			
			view.forward(request, response);
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
