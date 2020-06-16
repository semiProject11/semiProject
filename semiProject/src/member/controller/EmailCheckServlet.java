package member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;

/**
 * Servlet implementation class EmailCheckServlet
 */
@WebServlet("/emailCheck.me")
public class EmailCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmailCheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String arrE[] = request.getParameterValues("email");
		System.out.println(Arrays.toString(arrE));
		
		String email = "";
		if(arrE != null) {	
			for(int i=0 ; i < arrE.length ; i++) {
				if(i != arrE.length - 1) {
					email += arrE[i];
				}else {
					email += arrE[i];
				}
			}
		}

		System.out.println(email);
		int result = new MemberService().emailCheck(email);
		PrintWriter out = response.getWriter();

		if(result == 0) {
			out.print("success");
		}else {
			out.print("fail");
		}
		
		out.flush();
		out.close();
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
