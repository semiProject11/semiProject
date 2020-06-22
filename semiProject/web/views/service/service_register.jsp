<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="member.model.vo.*"%>
<%
Member loginUser = (Member)session.getAttribute("loginUser");
%>



<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<style>

#form-control {
   width: 100px;
   height: 100px;
}

div.change {
   display: none;
}

div.fileput {
   display: none;
}

div.ffileput {
   display: none;
}

#registration {
   background: black !important;
   border-color: black !important;
   outline: black !important;
}

.btn {
   box-shadow: none !important;
}

.form-control {
   box-shadow: none !important;
   display: inline !important;
   border-color : none !important;
   
}

form div * {
   display: inline-block;
}

form>div>.container>* {
   float: right !important;
}

.category {
   float: left;
}

.title {
   float: left;
}

.price {
   float: left;
}

.subject {
   float: left;
}

.aution {
   float: left;
}

.auction {
   float: left;
}

.area {
   float: left;
}

.contact {
   float: left;
}

#serviceExample {
   border: 1px solid rgb(206, 212, 218);
   width: 610px;
   height: 484px;
   border-top-left-radius: 0.3em;
   border-top-right-radius: 0.3em;
   border-bottom-right-radius: 0.3em;
   border-bottom-left-radius: 0.3em;
}

#titleImgArea {
   margin-left: 180px;
   margin-top: 15px;
   border-bottom-style: none;
   border : none;
}

#titleImg {
   visibility : hidden;
}

h1.b {
        text-align: center;
      }
      h1.b:after {
        content: "";
        display: block;
        width: 60px;
        border-bottom: 1px solid #bcbcbc;
        margin: 20px auto;
      }

</style>
</head>
<body>
   <jsp:include page="../common/menubar3.jsp" />

   <%-- action="<%=request.getContextPath() %>/register.service" --%>
   <!-- <div id="layoutSidenav_content"> -->
   <form class="insertForm" id="insertForm"
      action="<%=request.getContextPath()%>/register.service"
      name="insertForm" encType="multipart/form-data" method="post"
      onsubmit="return checkForm();">

      <br> <br> 
      <div class="container">
      
      <!-- 카테고리 -->
         <div class="category" style="margin-left: 300px; margin-top: 7px">
            <label for="category" class="category">카테고리</label>
         </div>
         &nbsp;&nbsp;&nbsp;
         <div class="category"
            style="margin-left: 30px; width: 180px; height: 30px;">
            <select class="form-control" name="category" id="category">
               <%if(!loginUser.getUserId().equals("admin")){%> 
               <option value="">카테고리 선택</option>
               <option value="Ar">예술</option>
               <option value="Re">요식업</option>
               <option value="Me">의료</option>
               <option value="Sp">스포츠</option>
               <option value="Fa">패션</option>
               <option value="It">IT</option>
               <option value="Fi">금융</option>
               <option value="Pu">공무원</option>
               <option value="Bu">비즈니스(창업)</option>
               <option value="Ma">마케팅</option>
               <%} %>
               
               <%if(loginUser.getUserId().equals("admin")){%> 
                <option value="Ev">이벤트</option> 
              <%} %>
               
 
            </select>
         </div>
         
         <!-- 제목 -->
         <br> <br>
         <div class="title" style="margin-left: 300px; margin-top: 5px">
            <label for="title1">&nbsp;&nbsp;&nbsp;제목</label>
         </div>
         <div class="title">
            <input type="text" class="form-control" id="title" name="title"
               style="margin-left: 42px; width: 470px; height: 33px;"
               placeholder="제목을 입력하세요">
         </div>
         <br> <br>
   
         <!-- 판매방식 -->
         <div class="form-check" style="margin-left: 280px;">
            <label for="method">판매방식</label> <input class="form-check-input"
               type="radio" name="saleMethod" id="choice_general" value="general"
               style="margin-left: 30px;" onclick="showDiv();"> <label
               class="form-check-label" for="exampleRadios"
               style="margin-left: 50px;">일반</label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
               class="form-check-input" type="radio" name="saleMethod"
               id="choice_auction" value="auction" style="margin-right: 150px;"
               onclick="showDiv();"> <label class="form-check-label"
               for="exampleRadios" style="margin-right: 100px;">경매</label>
         </div>

            <!-- 일반-->
         <div id="price" class="change" style="margin-left: 295px">
            <div class="price">
               <label for="sale" style="margin-left: 5px; margin-top: 5px">판매가격</label>
            </div>
            <div class="price">
               <input type="text" class="form-control" id="salePrice" onkeyup="inputNumberFormat(this)"
                  name="salePrice" style="width: 150px; height: 33px; margin-left: 30px;"
                  placeholder="0">&nbsp;원
            </div>

         </div>
         
         <!-- 경매 -->
         <div id="bidding" class="change" style="margin-left: 295px">

            <div class="aution">
               <label for="bidprice" style="margin-left: 5px; margin-top: 5px">입찰가격</label>
            </div>
            <div class="aution">
               <input type="text" class="form-control" id="biddingPrice" onkeyup="inputNumberFormat(this)"
                  name="biddingPrice"
                  style="margin-left: 30px; width: 150px; height: 33px;"
                  placeholder="0">&nbsp;원
            </div>

            <div class="auction">
               <label for="deadline" style="margin-left: 33px; margin-top: 5px">마감시간</label>
            </div>
            <div class="auction">
               <input type="datetime-local" class="form-control" id="deadline"
                  name="deadline"
                  style="width: 192px; height: 33px; margin-left: 18px;">
            </div>
         </div>
         <br> <br>
         
         <!-- 관련주제 -->
         <div class="subject" style="margin-left: 300px; margin-top: 5px">

            <label for="subject">관련주제</label>
         </div>
         <div class="subject">
            <input type="text" class="form-control" id="subject" name="subject"
               style="width: 470px; height: 33px; margin-left: 30px;"
               placeholder="제공할 서비스의 주제를 입력하세요">
               
         </div>
       

         <br> <!-- <hr width="690px" style="margin-left:265px" size="100px"> --><br>
   
          <br>
         <!-- 서비스설명 -->
         <div class="form-group"
            style="width: 600px; margin-left: 300px; margin-top: -20px;">
            <label class="textarea_text"></label> 
            <label for="exampleFormControlTextarea1">서비스 설명</label>
               <div id="serviceExample">

               <div id="titleImgArea">
                  <img id="titleImg" width="253" height="189.68" alt="&#10;&#10;&#10; 썸네일 미리보기" align="bottom">
                  
               </div>
              <textarea class="form-control" style="resize: none; border:none"
               name="detailContent" id="detailContent"
               placeholder="제공할 서비스에 대한 설명을 입력하세요" rows="11"></textarea>

           </div>
         
            
         </div>
       


         <!-- 서비스 설명 파일첨부1 -->

		 

         <%if(!loginUser.getUserId().equals("admin")){%> 

         <div class="row mt-2" id="file1" class="fileput">
            <div class="text-center" style="margin-left: 320px; width: 115px">
               <label for="find_file01">대표 이미지 첨부</label>
            </div>
            <div class="col-md-6 form-group form_file"
               style="position: relative;">

               <input type="text" id="fileNames1"
                  class="form-control form_point_color01"
                  style="position: absolute; width: 80%" readonly
                  placeholder="대표이미지로 설정할 파일을 클릭 또는 드래그하세요"> <input
                  type="file" name="fileName1" class="form-control" id="fileName1"
                  style="position: absolute; opacity: 0;" onchange="LoadImg(this,1)">

            </div>
         </div>
         <%} %>

         <!-- 서비스 설명 파일첨부2 -->

         <div class="row mt-2" id="file2" class="fileput">
            <div class="text-center" style="margin-left: 320px; width: 115px">
               <label for="find_file02">이미지 첨부</label>
            </div>
            <div class="col-md-6 form-group form_file"
               style="position: relative;">

               <input type="text" id="fileName2"
                  class="form-control form_point_color02"
                  style="position: absolute; width: 80%" readonly
                  placeholder="첨부할 이미지를 클릭 또는 드래그하세요"> <input type="file"
                  name="fileName2" class="form-control" id="find_file02"
                  style="position: absolute; opacity: 0; "
                  onchange="javascript: document.getElementById('fileName2').value = this.value">

            </div>
         </div>

         
            <br>
            <br>
         <!-- 판매자정보 -->
         <div class="form-group"
            style="width: 600px; margin-left: 300px; margin-top: -20px;">
            <label class="textarea_text">판매자 정보</label> <label
               for="exampleFormControlTextarea1"></label>
            <textarea class="form-control" style="resize: none"
               name="sellerInfo" id="sellerInfo"
               placeholder="판매자님의 정보를 입력해주세요&#13;&#10;ex)경력사항, 스펙" rows="18"></textarea>
         </div>

      

         <!-- 파일첨부 3-->
            <div class="row mt-2" id="file1" class="ffileput">
               <div class="text-center" style="margin-left: 320px; width: 115px">
                  <label for="find_file01"> 이미지 첨부</label>
               </div>
               <div class="col-md-6 form-group form_file"
                  style="position: relative;">

                  <input type="text" id="fileName3"
                     class="form-control form_point_color01"
                     style="position: absolute; width: 80%" readonly
                     placeholder="첨부할 이미지를 선택하거나 드래그하세요"> <input
                     type="file" name="fileName3" class="form-control"
                     id="find_file01" style="position: absolute; opacity: 0;"
                     onchange="javascript: document.getElementById('fileName3').value = this.value">

               </div>
            </div>
           
               
            <!-- 파일첨부 3-->
            <div class="row mt-2" id="file2" class="ffileput">
               <div class="text-center" style="margin-left: 320px; width: 115px">
                  <label for="find_file02">이미지 첨부</label>
               </div>
               <div class="col-md-6 form-group form_file"
                  style="position: relative;">

                  <input type="text" id="fileName4"
                     class="form-control form_point_color02"
                     style="position: absolute; width: 80%" readonly
                     placeholder="첨부할 이미지를 클릭하거나 드래그하세요"> <input type="file"
                     name="fileName4" class="form-control" id="find_file02"
                     style="position: absolute; opacity: 0;"
                     onchange="javascript: document.getElementById('fileName4').value = this.value">
               
               </div>
               <hr width="690px" style="margin-left:280px" size="100px">
            </div>
   
        
         
         <!-- 가능지역 -->
         <div class="area" style="margin-left: 300px; margin-top: 5px">
            <label for="title1" class="title1">가능지역</label>
         </div>
         <div class="area">
            <input type="text" class="form-control" name="availableArea"
               id="availableArea"
               style="width: 250px; height: 33px; margin-left: 50px;"
               placeholder="도/시/군">
         </div>
         <br> <br>
         
         <!-- 가능요일 -->
         <div class="form-check-inline" style="margin-left: 300px">
            <label>가능요일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <input class="form-check-input" type="checkbox" id="day" name="day"
               value="월요일"> <label>월&nbsp;&nbsp;&nbsp;</label> <input
               class="form-check-input" type="checkbox" id="day" name="day"
               value="화요일"> <label>화&nbsp;&nbsp;&nbsp;</label> <input
               class="form-check-input" type="checkbox" id="day" name="day"
               value="수요일"> <label>수&nbsp;&nbsp;&nbsp;</label> <input
               class="form-check-input" type="checkbox" id="day" name="day"
               value="목요일"> <label>목&nbsp;&nbsp;&nbsp;</label> <input
               class="form-check-input" type="checkbox" id="day" name="day"
               value="금요일"> <label>금&nbsp;&nbsp;&nbsp;</label> <input
               class="form-check-input" type="checkbox" id="day" name="day"
               value="토요일"> <label>토&nbsp;&nbsp;&nbsp;</label> <input
               class="form-check-input" type="checkbox" id="day" name="day"
               value="일요일"> <label>일</label>

            </label>
         </div>
         <br>
         
         
         <!-- 연락가능시간 -->
         <div id="contact" style="margin-left: 295px;">
            <div class="contact" style="margin-top: 5px">
               <label for="time">연락가능 시간</label>
            </div>
            <div class="contact">
               <input type="time" value="HH24" class="form-control" name="startTime"
                  id="startTime"
                  style="width: 140px; height: 33px; margin-left: 20px;">&nbsp;&nbsp;&nbsp;부터

               <input type="time" class="form-control" name="finishTime"
                  id="finishTime"
                  style="width: 140px; height: 33px; margin-left: 15px;">&nbsp;&nbsp;&nbsp;까지
            </div>
         </div>
         <br> <br>



         <div class="form-group">
            <input type="submit" value="등록" id="registration"
               class="btn btn-primary" style="width: 100px; margin-left: 750px;">
         </div>
      </div>

      <br> <br>
   </form>



<!-- 스크립트 -->

   <script>
     
      /*일반판매 문자입력제한, 3자리수마다 콤마추가*/
      $(document).ready(function() {

      $('input[name=salePrice]').css('imeMode','disabled').keypress(function(event) {
       if(event.which && (event.which < 48 || event.which > 57) ) {
        event.preventDefault();
       }
      }).keyup(function(){
       if( $(this).val() != null && $(this).val() != '' ) {
        $(this).val( $(this).val().replace(/[^0-9]/g, '') );
        $(this).val( comma($(this).val()));
       }
      });
      
      
      });
      
      function comma(str) {
          str = String(str);
          return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
      }
      function inputNumberFormat(obj) {
          obj.value = comma(uncomma(obj.value));
      }
         
      
      
      /*경매 문자입력제한, 3자리수마다 콤마추가*/
      
      
      $(document).ready(function() {

         $('input[name=biddingPrice]').css('imeMode','disabled').keypress(function(event) {
          if(event.which && (event.which < 48 || event.which > 57) ) {
           event.preventDefault();
          }
         }).keyup(function(){
          if( $(this).val() != null && $(this).val() != '' ) {
           $(this).val( $(this).val().replace(/[^0-9]/g, '') );
           $(this).val( comma($(this).val()));
          }
         });
         
         
         });
         
         function comma(str) {
             str = String(str);
             return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
         }
         function inputNumberFormat(obj) {
             obj.value = comma(uncomma(obj.value));
         }
         
         
         
         
        
   //일반/경매 라디오버튼 선택시 변경 
   function showDiv() {

       if (document.getElementById("choice_general").checked) {
          document.getElementById("price").style.display = "block";
          document.getElementById("bidding").style.display = "none";
          
       }

       if (document.getElementById("choice_auction").checked) {
          document.getElementById("price").style.display = "none";
          document.getElementById("bidding").style.display = "block";
       }

    }
   
            /*유효성검사*/
      function checkForm() {
         /*카테고리 유효성 검사*/
         if ($("#category").val() == "") {
            alert("카테고리를 선택해주세요");
            $('#category').focus;

            return false;
         }//

         /*제목 유효성검사*/
         if ($("#title").val().trim().length == 0) {
        	 
            alert("제목을 입력해주세요");
            $("#title").focus;
            return false;
         }//
         
         /*판매방식 유효성검사 */
         if($(':radio[name="saleMethod"]:checked').length<1){
            alert("판매방식을 선택해주세요");
            $("#saleMethod").focus;
            return false;
         }//
        
         /*일반판매금액 유효성검사 */
         if($('input:radio[id=choice_general]').is(':checked')){
            if($("#salePrice").val().trim().length == 0){
            	 $("#salePrice").focus;
            	alert("판매 가격을 입력해주세요");
               return false;    
            }
         }//
         
         /*경매 가격 유효성검사 */
         if($('input:radio[id=choice_auction]').is(':checked')){
            if($("#biddingPrice").val().trim().length == 0){
            	 $("#biddingPrice").focus;
               alert("입찰가격를 입력해주세요");
               return false;    
            }
         }//
         
         /*경매 마감시간 유효성검사 */
         if($('input:radio[id=choice_auction]').is(':checked')){
            if($("#deadline").val().trim().length == 0){
            	 $("#deadline").focus;
               alert("입찰 마감시간을 입력해주세요");
               return false;    
            }
         }//
         

         /*관련주제 유효성검사*/
         if ($("#subject").val().trim().length == 0) {
        	 $("#subject").focus;
            alert("서비스의 주제를 입력해주세요");

            return false;
         }//
         
         /*서비스 설명 유효성 검사*/

         if ($("#detailContent").val().trim().length == 0) {
        	 $("#detailContent").focus;
            alert("제공할 서비스에 대한 설명을 입력해주세오");
            return false;
         }//
         
         
         /*이미지 유효성 검사*/
         if (!$("#fileName1").prop("value")) {
        	 $("#fileName1").focus;
            alert("대표 이미지를 첨부해주세요");
            return false;
         }//
         
         <%if(loginUser.getUserId().equals("admin")){ %> 
         /*이미지 유효성 검사*/
         if (!$("#fileName2").prop("value")) {
        	 $("#fileName2").focus;
            alert("이미지를 첨부해주세요");
            return false;
         }//
         <% } %>
         
         
         /*판매자 정보 유효성 검사*/

         if ($("#sellerInfo").val().trim().length == 0) {
            alert("판매자님의 정보를 입력해주세요");
            $("#sellerInfo").focus;
            return false;
         }//

         
         /*가능지역 유효성 검사*/

         if ($("#availableArea").val().trim().length == 0) {
        	 $("#availableArea").focus;
            alert("만남이 가능한 지역을 입력헤주세요");
            return false;
         }//
         
         /*가능요일 유효성 검사*/
         if($("input:checkbox[name='day']").is(":checked") == false){
        	 $("#day").focus;
            alert("만남이 가능한 요일을 체크해주세요");
            return false;
            
         }//
   
         /*연락 가능시간 유효성 검사*/
         if ($("#startTime").val() == false) {
        	 $("#startTime").focus;
            alert("연락 가능한 시간대를 선택하세요");
            return false;
         }//

         /*연락 가능시간 유효성 검사*/
         if ($("#finishTime").val() == false) {
        	 $("#finishTime").focus;
            alert("연락 가능한 시간대를 선택하세요");
            return false;

         }//
         
         /*시작 시간이 끝시간보다 적은 경우*/
         if($("#startTime").val() > $("#finishTime").val()){
        	 $("#startTime").focus;
            alert("연락가능시간대를 정확히 선택해주세요");
            return false;
         }//
         
         
         } /*유효성검사 끝 */
      
      
      //이미지 미리보기
      function LoadImg(value, num) {
         if (value.files && value.files[0]) {
            var reader = new FileReader();

            reader.onload = function(e) {
               switch (num) {
               case 1:
                  $("#titleImg").attr("src", e.target.result).css("visibility","visible");
                  break;
               }
            }
            reader.readAsDataURL(value.files[0]);
         }
      }

         
    
  </script>

 

   <!-- ServiceInsertServlet만들러 간다 !  -->



</body>

</html>