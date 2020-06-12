package member.controller;

import java.io.IOException;

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
 * Servlet implementation class MyPageServlet
 */
@WebServlet("/myPage.me")
public class MyPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MyPageServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		HttpSession session = request.getSession();
//		
//		Member loginUser = (Member)session.getAttribute("loginUser");
//		
//		String userId =loginUser.getUserId();
		String userId = "admin";
		

		Member member = new MemberService().selectMember(userId);
		
		int buyCount = new MemberService().selectCount(1, userId);
		int sellCount = new MemberService().selectCount(2, userId);
		
		String fileName = new MemberService().selectFileName(userId);
		
		RequestDispatcher view = null;

		if (member != null) {
			view = request.getRequestDispatcher("views/myPage/mp_my_info.jsp");
			request.setAttribute("member", member);
			request.setAttribute("buyCount", buyCount);
			request.setAttribute("sellCount", sellCount);
			request.setAttribute("fileName", fileName);
		} else {
			view = request.getRequestDispatcher("views/common/errorPage.jsp");
			request.setAttribute("msg", "내 정보 조회에 실패했습니다.");
		}
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
