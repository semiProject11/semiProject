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
 * Servlet implementation class SearchMemberServlet
 */
@WebServlet("/search.member")
public class SearchMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String word=request.getParameter("word");
		
		ArrayList<Member> gradeList= new MemberService().searchMember(word);
		ArrayList<Seller> sellerList=new MemberService().searchSellerList(word);
		
		
		System.out.println("메소드 다녀온 후 마지막:"+gradeList);
		System.out.println("메소드 다녀온 후 마지막:"+sellerList);
		
	

			request.setAttribute("gradeList", gradeList);
			request.setAttribute("sellerList", sellerList);
			
			request.getRequestDispatcher("views/adminPage/Ad_grade_list.jsp").forward(request, response);
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
