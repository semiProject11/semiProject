package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Board;
import board.model.vo.ReviewAd;
import member.model.vo.Member;
import service.model.vo.Service;
import service.model.vo.Service_Category;
import service.model.vo.Service_List;

/**
 * Servlet implementation class ReviewListServlet
 */
@WebServlet("/relist.bo")
public class ReviewListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ArrayList<Board> bList=new BoardService().selectB_ReivewList();
		ArrayList<ReviewAd> rList=new BoardService().selectR_ReivewList();
		ArrayList<Service_Category> scList=new BoardService().selectSC_ReivewList();
		ArrayList<Service> sList=new BoardService().selectS_ReivewList();
		ArrayList<Service_List> slList=new BoardService().selectSL_ReivewList();
		ArrayList<Member> mList=new BoardService().selectM_ReivewList();
		
//		System.out.println(bList);
//		System.out.println(rList);
//		System.out.println(scList);
//		System.out.println(sList);
//		System.out.println(slList);
//		System.out.println(mList);
		
		RequestDispatcher view=null;
		if(!bList.isEmpty()&&!rList.isEmpty()&&!scList.isEmpty()&&!sList.isEmpty()&&!slList.isEmpty()) {
			request.setAttribute("bList", bList);
			request.setAttribute("rList", rList);
			request.setAttribute("scList", scList);
			request.setAttribute("sList", sList);
			request.setAttribute("slList", slList);
			request.setAttribute("mList", mList);
			
			request.getRequestDispatcher("views/adminPage/Ad_review_list.jsp").forward(request, response);
			
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
