package service.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.vo.Member;
import service.model.service.Service_Service;
import service.model.vo.CategoryListPd;
import service.model.vo.Service;
import service.model.vo.Service_Review;
import service.model.vo.Service_SeviceFilesTable_oh;
import service.model.vo.Service_info;

/**
 * Servlet implementation class auctiondetailServlet
 */
@WebServlet("/auction.detail")
public class auctiondetailServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public auctiondetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("UTF-8");
      String sNo = request.getParameter("sNo");
      String loginUserNo = request.getParameter("loginUserNo");
      
   
      // 현제 로그인한 구매자 번호 구해오는 구문
      HttpSession session = request.getSession();      
      Member loginUser = (Member)session.getAttribute("loginUser");      
      if(loginUser != null) {
           loginUserNo = loginUser.getUserNo();
          }
      
      // 서비스 넘버로 판매자 번호 구해오는 구문
      CategoryListPd clpd = new Service_Service().auctiondetail(sNo);
      String suserNo = clpd.getsUserNo();
      
     
      String result = "";

      
      System.out.println("판매자 번호 : " + suserNo);
      System.out.println("구매자 번호 : " + loginUserNo);
      
      Service_Service svService = new Service_Service();
      
      
      System.out.println("현재 세션에 담긴 객체 값 : " + session.getAttribute(sNo)); // 현재 생성후 세션 객체 값은 null이다.
      
      if(session.getAttribute(sNo)==null) { // 처음에 생성된 세션객체는 null값을 가졌기 때문에 if문이 실행이된다.
          
      result = Integer.valueOf(svService.updateCount(sNo)).toString(); // 조회수 카운팅 해주는 메소드
       
      session.setAttribute(sNo, sNo); // sNo(현재 클릭하여 들어간 서비스 게시물의 서비스번호)로 이름을 가진 세션객체에  현재 서비스 게시물 번호 값을 저장한 세션객체로 설정 된다.
          
      }
      
      // 이후 해당 서비스 게시물 번호값을 가진 세션객체는 null값이 아니므로 if문을 못들어 가기때문에 조회수 증가가 막힌다.
      
      
         ArrayList<Service_SeviceFilesTable_oh> flist = svService.selectfList();
         
         ArrayList<Service_info> infolist = svService.selectsvinfo(sNo);
         
         
         ArrayList<Service_Review> rlist = svService.selectreview(suserNo);
         
         
         Member member = svService.pointcheck(loginUserNo);
         
         Service sv = svService.selectbuserNo(sNo);
         
        if(clpd!=null&&!flist.isEmpty()) {
           if(clpd.getDeadLine()!=null) {
              request.setAttribute("clpd", clpd);
              request.setAttribute("flist", flist);
              request.setAttribute("infolist", infolist);
              request.setAttribute("rlist", rlist);
              request.setAttribute("member", member);
              request.setAttribute("sv", sv);
              
              request.getRequestDispatcher("views/service/sv_detail.jsp").forward(request, response);
           } else {
              request.setAttribute("clpd", clpd);
              request.setAttribute("flist", flist);
              request.setAttribute("infolist", infolist);
              request.setAttribute("rlist", rlist);
              request.setAttribute("member", member);
              request.setAttribute("sv", sv);
              request.getRequestDispatcher("views/service/sv_general_detail.jsp").forward(request, response);  
           }
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