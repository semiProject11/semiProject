package service.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Board;
import board.model.vo.Inquiary;
import service.model.service.Service_Service;
import service.model.vo.CategoryListPd;
import service.model.vo.Service_SeviceFilesTable_oh;

/**
 * Servlet implementation class serviceSearchServlet
 */
@WebServlet("/search.service")
public class serviceSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public serviceSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String category =request.getParameter("search");
		String word=request.getParameter("word");
		String salemethod = request.getParameter("salemethod");
		
		
		ArrayList<CategoryListPd> svlist = new Service_Service().searchService(category,word, salemethod);
		
		System.out.println("나는 검색한 서비스야" + svlist);
		ArrayList<Service_SeviceFilesTable_oh> flist =  new Service_Service().selectfList();
	      
	      
	      if(!svlist.isEmpty()&&!flist.isEmpty()) {
				request.setAttribute("svlist", svlist);
				request.setAttribute("flist", flist);
				request.getRequestDispatcher("views/service/sv_category_list.jsp").forward(request, response);
			} else {
				request.setAttribute("msg", "사진 게시판 상세 페이지 조회 실패");
				request.getRequestDispatcher("view/common/errorPage.jsp");
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