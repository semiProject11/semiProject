package service.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import service.model.service.Service_Service;

/**
 * Servlet implementation class MpDeleteServiceServlet
 */
@WebServlet("/delete.sv")
public class MpDeleteServiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MpDeleteServiceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String board_no=request.getParameter("arr");
		
		
		StringTokenizer st=new StringTokenizer(board_no,",");
		ArrayList<String> arr=new ArrayList();
		while(st.hasMoreTokens()) {
			arr.add(st.nextToken());
		
		}

	
		int result=new Service_Service().deleteService(arr);
		
		
		if (result > 0) {
			request.getRequestDispatcher("/sellList.sv").forward(request, response);

		} else {
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
