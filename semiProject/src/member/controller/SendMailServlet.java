package member.controller;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class SendMail
 */
@WebServlet("/send.me")
public class SendMailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendMailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		 
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
 
        String userId =     request.getParameter("userId");
        String userName =    request.getParameter("userName");
        String email =    request.getParameter("email");
        String userPwd = request.getParameter("userPwd");

        String sResult = "OK";
       
        
      // 임시 비밀번호  생성
        StringBuffer temp =new StringBuffer();
        Random rnd = new Random();
        for(int i=0;i<10;i++)
        {
            int rIndex = rnd.nextInt(3);
            switch (rIndex) {
            case 0:
                // a-z
                temp.append((char) ((int) (rnd.nextInt(26)) + 97));
                break;
            case 1:
                // A-Z
                temp.append((char) ((int) (rnd.nextInt(26)) + 65));
                break;
            case 2:
                // 0-9
                temp.append((rnd.nextInt(10)));
                break;
            }
        }
        
        String AuthenticationKey = temp.toString();
        
        // 임시 비밀번호 생성 확인
        System.out.println(AuthenticationKey);
        
        // 임시 비밀번호의 값을 기존 패스워드 값에 덮어 쓰기
        userPwd = temp.toString();
        
        int result = new MemberService().changePwd(new Member(userId, userName, email, userPwd));
        
        try {
        	// 보내는 사람
            String mail_from =  "toffg6450@naver.com";
            String mail_to =    email;
            String title =      "TimeSeller " + userName +" 회원님의 임시비밀번호 안내 메일입니다.";
            String content = 	userName + " 회원님의 임시 비밀번호는 " +"[ " +temp+ " ]" + " 입니다. 로그인 후 꼭 비밀번호를 변경해주세요!!";
            
            mail_from = new String(mail_from.getBytes("UTF-8"), "UTF-8");
            mail_to = new String(mail_to.getBytes("UTF-8"), "UTF-8");
 
            Properties props = new Properties();
            props.put("mail.transport.protocol", "smtp");
            props.put("mail.smtp.host", "smtp.naver.com");
            props.put("mail.smtp.debug", "true"); 
            props.put("mail.smtp.port", "465");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.socketFactory.fallback", "false");
            props.put("mail.smtp.auth", "true");
 
            System.out.println(5678);
            
            try { Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() { 
            	protected PasswordAuthentication getPasswordAuthentication() { 
            	return new PasswordAuthentication("toffg6450@naver.com","s159632s^$%)"); 	// 네이버 메일 ID / PWD 
            	}
            	 });
 
            mailSession.setDebug(true); 
        	
        	// Create a default MimeMessage object.
        	 Message message = new MimeMessage(mailSession); 
        	
        	// Set From: header field of the header. 
        	message.setFrom(new InternetAddress(mail_from)); 
        	
        	// Set To: header field of the header. 
        	message.addRecipient(Message.RecipientType.TO, new InternetAddress(mail_to)); 
        	
        	// Set Subject: header field 
        	message.setSubject(title); 
        	
        	// Now set the actual message 
        	message.setContent(content, "text/html;charset=utf-8"); 	// 내용과 인코딩 
        	// Send message
        	 Transport.send(message);
        	 
        	// System.out.println("Sent message successfully...."); 
        	// sResult = "Sent message successfully...."; } 

         	}catch (MessagingException e) { 
        	e.printStackTrace(); 
        	System.out.println("Error: unable to send message...." + e.toString()); 
        	sResult = "ERR"; 
         	}
        	}catch (Exception err){
        	System.out.println(err.toString()); 
        	sResult = "ERR"; 
        	}finally { 
        	// dbhandle.close(dbhandle.con); 
        	} 
        
        if(result>0) {
        	response.sendRedirect("views/loginAndRegister/LS_login.jsp");
        }else {
        	response.sendRedirect("index.jsp");
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
