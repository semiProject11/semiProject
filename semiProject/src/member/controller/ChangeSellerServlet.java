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
 * Servlet implementation class ChangeSellerServlet
 */
@WebServlet("/changeS.member")
public class ChangeSellerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeSellerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String userNo=request.getParameter("arr");
		
		System.out.println("userNo:"+userNo);
	
		StringTokenizer st=new StringTokenizer(userNo,",");
		
		
		ArrayList<String> arr=new ArrayList();
		while(st.hasMoreTokens()) {
			arr.add(st.nextToken());
		}
		
		System.out.println("arr:"+arr);
		
		
		int result=new MemberService().updateSeller(arr);
		
		System.out.println("DAO다녀온 후 RESULT:"+result);
		
		
		
		if (result > 0) {
			request.getRequestDispatcher("/list.grade").forward(request, response);

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
