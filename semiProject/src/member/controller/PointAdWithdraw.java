package member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class PointWithdraw
 */
@WebServlet("/withdrawAd.me")
public class PointAdWithdraw extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PointAdWithdraw() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String rowArr = request.getParameter("rowArr");	//회원 번호
		String tdArr =request.getParameter("tdArr");		// 충전할 금액

		
		String a=request.getParameter("a");
		String b=request.getParameter("b");

		System.out.println("a랑 b"+a+"+"+b);
		
		StringTokenizer st1 = new StringTokenizer(rowArr,",");
		ArrayList<String> userNo = new ArrayList<String>();
		while(st1.hasMoreTokens()) {
			userNo.add(st1.nextToken());
		
		}
		
		StringTokenizer st2 = new StringTokenizer(tdArr,",");
		ArrayList<String> point = new ArrayList<>();
		while(st2.hasMoreTokens()) {
			point.add(st2.nextToken());
		
		}
		 
		
	
		//선택된 회원들의 포인트를 dao에서 뽑아와서 입력한 포인트를 뺴주고 다시 넣기 (진행중임);
		//1.선택된 회원의 포인트 정보를 배열에 담음
		ArrayList<Member> beforeUser=new MemberService().selectPoint(userNo); 
	
		ArrayList afterPoint=new ArrayList<>();
		int plist=0;
		
		//2.가져온 배열의 포인트 - 입력한 배열의 포인트 

	
		for(int i=0;i<beforeUser.size();i++) {
		plist=(beforeUser.get(i).getPoint())-(Integer.valueOf(point.get(i)));

		afterPoint.add(plist);
		
		}
		
		
		int result=new MemberService().minusPoint(userNo, afterPoint);


		
			if (result > 0) {
			response.sendRedirect("list.point");
			  
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
