
package service.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

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
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sun.xml.internal.ws.util.ServiceFinder;

import board.model.service.BoardService;
import board.model.vo.Board;
import board.model.vo.Files;
import member.model.vo.Member;
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
      request.setCharacterEncoding("utf-8");
      // 유저 번호
      HttpSession session = request.getSession();
      
      Member loginUser = (Member)session.getAttribute("loginUser");
      String userNo =loginUser.getUserNo();
      
      
      
      // 전송 용량
      int maxSize = 1024 * 1024 * 10;      //10mbyte로 용량 제한 
      
      // 저장할 경로 지정
      String root = request.getSession().getServletContext().getRealPath("/");
      System.out.println(root);      //경로출력
      String savePath = root + "service_uploadFiles/";
      
      MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "utf-8",
            new DefaultFileRenamePolicy());
      
      
      Service_DaysTable_oh sd = new Service_DaysTable_oh();
  

  String category = multiRequest.getParameter("category");                      //카테고리
  String title = multiRequest.getParameter("title");                           //제목
  String saleMethod = multiRequest.getParameter("saleMethod");                  //판매방식
  String subject = multiRequest.getParameter("subject");                        //관련주제
  String detailContent = multiRequest.getParameter("detailContent");            //서비스설명
  String sellerInfo = multiRequest.getParameter("sellerInfo");                  //판매자정보
  String availableArea = multiRequest.getParameter("availableArea");            //가능지역
  String startTime = multiRequest.getParameter("startTime");                  //연락가능시간_시작
  String finishTime = multiRequest.getParameter("finishTime");                  //연락가능시간_마감
   
  String[] day = multiRequest.getParameterValues("day");                        //가능요일
  
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
   st.setsUserNo(userNo);
   
   
   
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
   
   if(saleMethod.equals("auction")) {
      
      String biddingPriceComma = multiRequest.getParameter("biddingPrice");
      
      String[] numberArr = biddingPriceComma.split(",");
      
      String sum = "";
      for(String s : numberArr) {
         sum+=s;
      }
      
      int biddingPrice = Integer.valueOf(sum);

     st.setPriceBidding(biddingPrice);
      
         //결과확인 
      System.out.println(biddingPrice);
 
      String deadline = multiRequest.getParameter("deadline");
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
      
      String salePriceComma = multiRequest.getParameter("salePrice");
      
      String[] numberArr = salePriceComma.split(",");
      
      String sum = "";
      for(String s : numberArr) {
         sum+=s;
      }
      int salePrice = Integer.valueOf(sum);

            st.setPriceSale(salePrice);
            
            //결과확인
           System.out.println(salePrice);     
   }
   

   
   //저장할 파일 이름 리스트
   ArrayList<String> saveFiles = new ArrayList<>();
   
   //원본 파일 이름 리스트
   ArrayList<String> originFiles = new ArrayList<>();
   
   //한번에 input파일테그를 통해 넘어온 것들을 한번에 꺼내내주기 위해  리스트들의 name들을 반환 
   Enumeration<String> files = multiRequest.getFileNames();
   while(files.hasMoreElements()) {
      
      //전송순서 역순으로 파일 가져옴
      String name = files.nextElement();
      
      if(multiRequest.getFilesystemName(name) != null) {
         //getFilesystemName() - 변화된 파일명(rename된 파일명을 가져옴)
         saveFiles.add(multiRequest.getFilesystemName(name));
         //getOriginalFileName() - 실제 사용자가 업로드 했던 파일명
         originFiles.add(multiRequest.getOriginalFileName(name));
      }
      //ArrayList안에 파일이 역순으로 들어있음 
   }
   
   System.out.println("saveFiles : " + saveFiles);
   System.out.println("originFiles : "+originFiles);
   
   ArrayList<Service_SeviceFilesTable_oh> servicefileList = new ArrayList<>();
   //이름외에도 파일과 관련된 정보를 싸서 관리, 역순을 정방향으로 변경 
   for(int i = originFiles.size()-1; i >=0; i--) {
      Service_SeviceFilesTable_oh serviceFiles = new Service_SeviceFilesTable_oh();
      serviceFiles.setFilePath(savePath);
      serviceFiles.setOriginName(originFiles.get(i));
      serviceFiles.setChangeName(saveFiles.get(i));
      
      
      if(i==originFiles.size()-1) {
         serviceFiles.setFileLevel(0);
         //대표이미지 !
      }else {
         serviceFiles.setFileLevel(1);
         //나머지는 대표이미지 아님 ! 
      }
      
      servicefileList.add(serviceFiles);
   }
   
   int result = new Service_Service().insertService(st,day,servicefileList);
   
   if(result > 0) {
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