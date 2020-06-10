package member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;
import member.model.vo.Seller;

/**
 * Servlet implementation class GradeListServlet
 */
@WebServlet("/list.grade")
public class GradeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GradeListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		ArrayList<Member> gradeList=new MemberService().selectGradeList();
		ArrayList<Seller> sellerList=new MemberService().selectSellerList();
		
		
		System.out.println(gradeList);
		System.out.println(sellerList);
		
		if(!gradeList.isEmpty()&&!sellerList.isEmpty()) {
			request.setAttribute("gradeList", gradeList);
			request.setAttribute("sellerList", sellerList);
			request.getRequestDispatcher("views/adminPage/Ad_grade_list.jsp").forward(request, response);
			
		}else {
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
