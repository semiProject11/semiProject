package member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import member.model.service.MemberService;

/**
 * Servlet implementation class updateGradeServlet
 */
@WebServlet("/update.grade")
public class UpdateGradeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateGradeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		String rowArr = request.getParameter("rowArr");	// 	현재 체크한 회원 번호
		String tdArr =request.getParameter("tdArr");		// 	현재 체크한 회원의 등급
		System.out.println(rowArr);
		System.out.println(tdArr);
		
		
		StringTokenizer st1 = new StringTokenizer(rowArr,",");
		ArrayList<String> userNo = new ArrayList<String>();
		while(st1.hasMoreTokens()) {
			userNo.add(st1.nextToken());
		
		}
		
		StringTokenizer st2 = new StringTokenizer(tdArr,",");
		ArrayList<String> Grade = new ArrayList<String>();
		while(st2.hasMoreTokens()) {
			Grade.add(st2.nextToken());
		
		}
		  

		int result=new MemberService().updateGrade(userNo, Grade);

		System.out.println("DAO다녀온 후 RESULT:"+result);
		
			if (result > 0) {
			request.getRequestDispatcher("/list.grade").forward(request, response);
			  
			} else {
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request,response);
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
