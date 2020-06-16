package service.controller;

import java.io.IOException;
import java.util.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sun.xml.internal.ws.util.ServiceFinder;

import board.model.service.BoardService;
import board.model.vo.Board;
import board.model.vo.Files;
import service.model.service.Service_Service;
import service.model.vo.Service_DaysTable_oh;
import service.model.vo.Service_ServiceTable_oh;
import service.model.vo.Service_SeviceFilesTable_oh;
/**
 * Servlet implementation class ServiceInsertServlet
 */
@WebServlet("/register.service")
public class ServiceInsertServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   
  
   
   
   public ServiceInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      
   String category = request.getParameter("category");                        //카테고리
   String title = request.getParameter("title");                           //제목
   String saleMethod = request.getParameter("saleMethod");                  //판매방식
   String subject = request.getParameter("subject");                        //관련주제
   String detailContent = request.getParameter("detailContent");            //서비스설명
   String sellerInfo = request.getParameter("sellerInfo");                  //판매자정보
   String availableArea = request.getParameter("availableArea");            //가능지역
   String startTime = request.getParameter("startTime");                  //연락가능시간_시작
   String finishTime = request.getParameter("finishTime");                  //연락가능시간_마감
   


 
  Service_DaysTable_oh sd = new Service_DaysTable_oh();
  String[] day = request.getParameterValues("day");                  //가능요일
  

   //서비스 vo
   Service_ServiceTable_oh st = new Service_ServiceTable_oh();
   
   st.setCategoryCode(category);
   st.setTitle(title);
   st.setSaleMethod(saleMethod);
   st.setSubject(subject);
   st.setsExplain(detailContent);
   st.setSaleInfo(sellerInfo);
   st.setAvailableArea(availableArea);
   st.setContactTime_start(startTime);
   st.setContactTime_finish(finishTime);
   
   //결과확인
   
   System.out.println(category);
   System.out.println(title);
   System.out.println(saleMethod);
   System.out.println(subject);
   System.out.println(detailContent);
   System.out.println(sellerInfo);
   System.out.println(availableArea);
   System.out.println(startTime);
   System.out.println(finishTime);
   
   if(saleMethod.equals("경매")) {
      
      int biddingPrice = Integer.parseInt(request.getParameter("biddingPrice")); //입찰가격
      
      
      st.setPriceBidding(biddingPrice);
     
      
         //결과확인 
      System.out.println(biddingPrice);
 
      String deadline = request.getParameter("deadline");
      String year = deadline.substring(0, 4);
      String month = deadline.substring(5, 7);
      String day2 = deadline.substring(8, 10);
      String hour = deadline.substring(11, 13);
      String minute = deadline.substring(14, 16);
      
      
      String time = year + month + day2 + " " + hour + ":" + minute;
     
      //결과확인
      System.out.println("time : " + time);
      st.setDeadline(time);
      
      
   }else {
            int salePrice = Integer.parseInt(request.getParameter("salePrice"));      //판매가격
            st.setPriceSale(salePrice);
   }
   
   int result = new Service_Service().insertService(st,day);
   
   
   
   if(result>0) {
         request.setAttribute("msg", "등록이 완료되었습니다.");
         request.getRequestDispatcher("/views/service/service_register_success.jsp").forward(request, response);

   }else {
      request.setAttribute("msg", "실패 !");
      request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
   }

   
   }
   

         //로그인했을 떄 글 작성하게 하기 위한 session
//         HttpSession session = request.getSession();
//         Member loginUser = (Member)session.getAttribute("loginUser");
         

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}