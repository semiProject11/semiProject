package member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Pagination;
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
		
		//페이징 처리
		
		int listCount=new BoardService().getGradCount(word);
		int currentPage;	// 현재 페이지를 표시 할 변수
		int limit;			// 한 페이지에 게시글이 몇 개가 보여질 것인지
		int maxPage;		// 전체 페이지에서 가장 마지막 페이지
		int startPage;		// 한번에 표시될 페이지가 시작 할 페이지
		int endPage;		// 한번에 표시될 페이지가 끝나는 페이지

		currentPage = 1;
		
		
		if(request.getParameter("currentPage")!=null)
		{		
			currentPage = Integer.valueOf(request.getParameter("currentPage"));
			
		}
		
		limit = 10;
		
		maxPage = (int)((double)listCount/limit + 0.9);
		
		startPage = (((int)((double)currentPage/limit + 0.9))-1)*limit +1;
		
		endPage = startPage + limit - 1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		Pagination pn = new Pagination(currentPage, listCount, limit, maxPage, startPage, endPage);
		
	
		
	
		
		ArrayList<Member> gradeList= new MemberService().searchMember(word,currentPage,limit);
		ArrayList<Seller> sellerList=new MemberService().searchSellerList(word,currentPage,limit);
		
		
		System.out.println("메소드 다녀온 후 마지막:"+gradeList);
		System.out.println("메소드 다녀온 후 마지막:"+sellerList);
		
	

		
		
		request.setAttribute("pn", pn);
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
