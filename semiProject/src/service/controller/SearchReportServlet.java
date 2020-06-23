package service.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.model.service.Service_Service;
import service.model.vo.CategoryListPd;
import service.model.vo.Service_SeviceFilesTable_oh;

/**
 * Servlet implementation class generallistServlet
 */
@WebServlet("/check11.report")
public class SearchReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchReportServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String service_no = request.getParameter("service_no");
		
		
		System.out.println(service_no);
		
		 Service_Service svService = new Service_Service();
		
		ArrayList<CategoryListPd> svlist = svService.selectReport(service_no);
		System.out.println("첫번째꺼는?"+svlist);
		ArrayList<Service_SeviceFilesTable_oh> flist = svService.selectReportfList(service_no);
		System.out.println("두째꺼는?"+flist);
		
			request.setAttribute("svlist", svlist);
			request.setAttribute("flist", flist);
			request.getRequestDispatcher("views/service/sv_category_list.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
