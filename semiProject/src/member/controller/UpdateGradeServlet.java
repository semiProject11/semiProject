package member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

		
		String userNo=request.getParameter("userNo"); //회원번호
		String grade=request.getParameter("grade"); //변경할 등급
		String rowArr=request.getParameter("rowArr");
		String tdArr=request.getParameter("tdArr");
		
		System.out.println("userno:"+userNo);
		System.out.println("grade:"+grade);
		System.out.println("rowArr:"+rowArr);
		System.out.println("tdArr:"+tdArr);
		
		
		
		
		
		
		/*
		 * String rowArr=request.getParameter("rowArr");
		 * System.out.println("서블릿에서 rowArr"+rowArr); String
		 * tdArr=request.getParameter("tdArr"); System.out.println("서블릿에서 tdArr"+tdArr);
		 * 
		 * 
		 * StringTokenizer st=new StringTokenizer(rowArr,","); ArrayList<String> arr=new
		 * ArrayList(); while(st.hasMoreTokens()) { arr.add(st.nextToken());
		 * 
		 * }
		 * 
		 * System.out.println("토크나이저로 끊은 값:"+arr);
		 */
		
		/*
		 *  int result=new MemberService().updateGrade(arr);
		 * 
		 * System.out.println("DAO다녀온 후 RESULT:"+result);
		 * 
		 * if (result > 0) {
		 * request.getRequestDispatcher("/list.grade").forward(request, response);
		 * 
		 * } else {
		 * request.getRequestDispatcher("views/common/errorPage.jsp").forward(request,
		 * response); }
		 */
		
		
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
