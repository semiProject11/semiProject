package service.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

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
   String title = request.getParameter("title");                        //제목
   String saleMethod = request.getParameter("saleMethod");                  //판매방식
   String subject = request.getParameter("subject");                     //관련주제
   String detailContent = request.getParameter("detailContent");            //서비스설명
   String sellerInfo = request.getParameter("sellerInfo");                  //판매자정보
   String availableArea = request.getParameter("availableArea");            //가능지역
   String startTime = request.getParameter("startTime");                  //연락가능시간_시작
   String finishTime = request.getParameter("finishTime");                  //연락가능시간_마감


   String[] day = request.getParameterValues("day");                  //가능요일

   //콤마로 이어서 출력 
//   String days = "";
//   if(day != null) {   
//      for(int i=0 ; i < day.length ; i++) {
//         if(i != day.length - 1) {
//            days += day[i] + ",";
//         }else {
//            days += day[i];
//         }
//      }
//   }
   Service_DaysTable_oh sd = new Service_DaysTable_oh();
   
   StringBuffer days = new StringBuffer();
   for(String dday : day) {
      
      days.append(dday);
   
      System.out.println(dday);
      sd.setAvailableDate(dday);
   }
 
   
   
   //Day vo
   
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
   
   
   if(saleMethod.equals("경매")) {
      
      int biddingPrice = Integer.parseInt(request.getParameter("biddingPrice")); //입찰가격
      String deadline = request.getParameter("deadline");                     //마감시간
      
      st.setPriceBidding(biddingPrice);
      st.setDeadline(deadline);

      
   }else {
            int salePrice = Integer.parseInt(request.getParameter("salePrice"));      //판매가격
            st.setPriceSale(salePrice);
   }
   
   int result = new Service_Service().insertService(st,sd);
   }
   
//   int maxSize = 1024 * 1024 * 10;
//   
//    request.setCharacterEncoding("utf-8");
//   
//   //저장할 경로 지정 
//   String root = request.getSession().getServletContext().getRealPath("/");
//   String savePath = root + "service_uploadFiles/";
//   
//   MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "utf-8",
//         new DefaultFileRenamePolicy());
//      
//   String servicetitle = multiRequest.getParameter();
//   
//   }
//   
   


      /*
       * ArrayList<Service_DaysTable_oh> sdo = new ArrayList<Service_DaysTable_oh>();
       * Service_DaysTable_oh sd = new Service_DaysTable_oh();
       */

      
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