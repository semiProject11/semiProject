<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>

#jumbotron{
	background : yellow !important;
}

@font-face { font-family: 'NIXGONL-Vb'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/NIXGONL-Vb.woff') format('woff'); 
font-weight: normal; font-style: normal; 
}
@font-face { font-family: 'HangeulNuri-Bold'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_three@1.0/HangeulNuri-Bold.woff') format('woff'); 
font-weight: normal; font-style: normal; }
@import url(//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css); <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' 
type='text/css'> * { font-family: 'Spoqa Han Sans', 'Spoqa Han Sans JP', 'Sans-serif'; }
@font-face { font-family: 'MapoPeacefull'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/MapoPeacefullA.woff') format('woff'); 
font-weight: normal; font-style: normal; }
@font-face { font-family: 'BBTreeGB'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_nine_@1.1/BBTreeGB.woff') 
format('woff'); font-weight: normal; font-style: normal; }
@font-face { font-family: 'Arita-dotum-Medium'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Arita-dotum-Medium.woff') 
format('woff'); font-weight: normal; font-style: normal; }
@font-face { font-family: 'Goyang'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Goyang.woff') 
format('woff'); font-weight: normal; font-style: normal; }
@font-face { font-family: 'BinggraeMelona'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.0/BinggraeMelona.woff') format('woff'); 
font-weight: normal; font-style: normal; }
@font-face { font-family: 'EBSHMJESaeronRA'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/EBSHMJESaeronRA.woff') 
format('woff'); font-weight: normal; font-style: normal; }

@font-face { font-family: 'NEXON Lv1 Gothic OTF'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF.woff') 
format('woff'); font-weight: normal; font-style: normal; }
@font-face { font-family: 'TTWorinseokboB'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_ten@1.2/TTWorinseokboB.woff') format('woff'); 
font-weight: normal; font-style: normal; }
@font-face { font-family: 'SungDongGothic'; font-style: normal; font-weight: 700; src: url('//cdn.jsdelivr.net/korean-webfonts/1/orgs/govs/sdgu/SungDongGothic/SungDongGothicB.woff2') format('woff2'), url('//cdn.jsdelivr.net/korean-webfonts/1/orgs/govs/sdgu/SungDongGothic/SungDongGothicB.woff') format('woff'); } @font-face { font-family: 'SungDongGothic'; font-style: normal; font-weight: 800; src: url('//cdn.jsdelivr.net/korean-webfonts/1/orgs/govs/sdgu/SungDongGothic/SungDongGothicEB.woff2') format('woff2'), url('//cdn.jsdelivr.net/korean-webfonts/1/orgs/govs/sdgu/SungDongGothic/SungDongGothicEB.woff') format('woff'); } .
sungdonggothic * { font-family: 'SungDongGothic', sans-serif; }
@font-face { font-family: 'ChosunGu'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@1.0/ChosunGu.woff') 
format('woff'); font-weight: normal; font-style: normal; }
@font-face { font-family: 'ChosunKm'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@1.0/ChosunKm.woff') format('woff'); 
font-weight: normal; font-style: normal; }
@font-face { font-family: 'NEXON Lv2 Gothic'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv2 Gothic.woff') format('woff'); 
font-weight: normal; font-style: normal; }
@font-face { font-family: '2YangPyeongM'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/2YangPyeongM.woff') 
format('woff'); font-weight: normal; font-style: normal; }
@font-face { font-family: 'GimpoTitle00'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/GimpoTitle00.woff') format('woff'); 
font-weight: normal; font-style: normal; }
@font-face { font-family: 'InfinitySans-RegularA1'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-RegularA1.woff') format('woff'); 
font-weight: normal; font-style: normal; }
@font-face { font-family: 'MyLotteMedium'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.0/MyLotteMedium.woff') format('woff'); 
font-weight: normal; font-style: normal; }
@font-face { font-family: 'Dosuguan'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_three@1.0/도서관체.woff') 
format('woff'); font-weight: normal; font-style: normal; }
@font-face { font-family: 'BinggraeTaom'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.1/BinggraeTaomA1.woff') 
format('woff'); font-weight: normal; font-style: normal; }
@font-face { font-family: 'KBIZHanmaumGothic'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/KBIZHanmaumGothic.woff') 
format('woff'); font-weight: normal; font-style: normal; }
@font-face { font-family: 'Cafe24Ssukssuk'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Ssukssuk.woff') 
format('woff'); font-weight: normal; font-style: normal; }
@font-face { font-family: 'HangultuelGothic'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_ten@1.10/HangultuelGothic.woff') format('woff'); 
font-weight: normal; font-style: normal; }
@font-face { font-family: 'SeoulNamsanM'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/SeoulNamsanM.woff') format('woff'); 
font-weight: normal; font-style: normal; }
</style>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
		<div class="jumbotron" style="margin-left: 400px; margin-right: 300px;">
  <h1 class="display-1" style="font-family:  'NIXGONL-Vb'; margin-left:200px" >서비스 등록이 완료되었습니다.</h1>
 <!--  <h1 class="display-1" style="font-family: 'HangeulNuri-Bold'; margin-left:200px" >서비스 등록이 완료되었습니다. 'HangeulNuri-Bold'</h1>
  <h1 class="display-1" style="font-family:'Spoqa Han Sans'; margin-left:200px" >서비스 등록이 완료되었습니다. 'Spoqa Han Sans'</h1>
  <h1 class="display-1" style="font-family: 'MapoPeacefull'; margin-left:200px" >서비스 등록이 완료되었습니다. 'MapoPeacefull'</h1>
  <h1 class="display-1" style="font-family: 'BBTreeGB'; margin-left:200px" >서비스 등록이 완료되었습니다. 'BBTreeGB'</h1>
    <h1 class="display-1" style="font-family: 'Arita-dotum-Medium'; margin-left:200px" >서비스 등록이 완료되었습니다. 'Arita-dotum-Medium'</h1>
      <h2 class="display-1" style="font-family: 'Goyang'; margin-left:200px" >서비스 등록이 완료되었습니다. 'Goyang'</h2>
        <h1 class="display-1" style="font-family: 'BBTreeGB'; margin-left:200px" >서비스 등록이 완료되었습니다. 'Goyang'</h1>
          <h1 class="display-1" style="font-family:'BinggraeMelona'; margin-left:200px" >서비스 등록이 완료되었습니다. 'BinggraeMelona'</h1>
              <h1 class="display-1" style="font-family: ; margin-left:200px" >서비스 등록이 완료되었습니다.  'JoongnajocheL-KSCpc-EUC-H'</h1>
          
              <h1 class="display-1" style="font-family:'NEXON Lv1 Gothic OTF'; margin-left:200px" >서비스 등록이 완료되었습니다. 'NEXON Lv1 Gothic OTF'</h1>
          
              <h1 class="display-1" style="font-family:'TTWorinseokboB'; margin-left:200px" >서비스 등록이 완료되었습니다. 'TTWorinseokboB'</h1>
          
              <h1 class="display-1" style="font-family:'SungDongGothic'; margin-left:200px" >서비스 등록이 완료되었습니다. 'SungDongGothic'</h1>
          
              <h1 class="display-1" style="font-family:'ChosunGu'; margin-left:200px" >서비스 등록이 완료되었습니다. 'ChosunGu'</h1>
                 <h1 class="display-1" style="font-family:'ChosunKm'; margin-left:200px" >서비스 등록이 완료되었습니다. 'ChosunKm'</h1>
                    <h1 class="display-1" style="font-family:'NEXON Lv2 Gothic'; margin-left:200px" >서비스 등록이 완료되었습니다. 'NEXON Lv2 Gothic'</h1>
                    <h1 class="display-1" style="font-family:'2YangPyeongM'; margin-left:200px" >서비스 등록이 완료되었습니다. '2YangPyeongM'</h1>
                    <h1 class="display-1" style="font-family:'GimpoTitle00'; margin-left:200px" >서비스 등록이 완료되었습니다. 'GimpoTitle00'</h1>
                    <h1 class="display-1" style="font-family:'InfinitySans-RegularA1'; margin-left:200px" >서비스 등록이 완료되었습니다. 'InfinitySans-RegularA1'</h1>
                    <h1 class="display-1" style="font-family:'MyLotteMedium'; margin-left:200px" >서비스 등록이 완료되었습니다. 'MyLotteMedium'</h1>
                    <h1 class="display-1" style="font-family:'Dosuguan'; margin-left:200px" >서비스 등록이 완료되었습니다. 'Dosuguan'</h1>
                    <h1 class="display-1" style="font-family:'BinggraeTaom'; margin-left:200px" >서비스 등록이 완료되었습니다. 'BinggraeTaom'</h1>
                    <h1 class="display-1" style="font-family:'KBIZHanmaumGothic'; margin-left:200px" >서비스 등록이 완료되었습니다. 'KBIZHanmaumGothic'</h1>
                    <h2 class="display-1" style="font-family:'Cafe24Ssukssuk'; margin-left:200px" >서비스 등록이 완료되었습니다. 'Cafe24Ssukssuk'</h2>
                    <h2 class="display-1" style="font-family:'HangultuelGothic'; margin-left:200px" >서비스 등록이 완료되었습니다. 'HangultuelGothic'</h2>
                    <h2 class="display-1" style="font-family:'SeoulNamsanM'; margin-left:200px" >서비스 등록이 완료되었습니다. 'SeoulNamsanM'</h2>
                    -->
          
          
      
  
  <!-- <p class="lead">등록된 글 확인하기</p> -->
  <hr class="my-2">
  <p></p>
  <a class="btn btn-primary btn-lg" href="service_register.jsp" role="button" style="margin-left : 300px" >게시글 확인하기</a>
  <a class="btn btn-primary btn-lg" href="#" role="button" style="margin-left : 10px">홈으로</a>
</div>





</body>
</html>