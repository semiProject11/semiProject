package member.controller;

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

import member.model.service.MemberService;
import member.model.vo.Profile;

/**
 * Servlet implementation class InsertFrofileServlet
 */
@WebServlet("/insert.pf")
public class InsertFrofileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertFrofileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		
		int maxSize = 1024 * 1024 *10; // 전송 용량
		
		String root = request.getSession().getServletContext().getRealPath("/");	// web/
		String savePath = root + "profile_imgFiles/";
		
		MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		
		String userNo = multiRequest.getParameter("userNo");
		// 텍스트에 담아서 보냈기 때문에 String 형이다.
		String saveFiles = null;
		
		String originFiles = null;
		System.out.println(userNo);
		Enumeration<String> files = multiRequest.getFileNames();
		
		while(files.hasMoreElements()) {
			
			// 전송 순서 역순으로 파일을 가져온다.
			String name = files.nextElement();
			
			if(multiRequest.getFilesystemName(name) != null) {
				// getFilesystemName() - 변화된 파일명(rename된 파일명)을 가져옴
				saveFiles = multiRequest.getFilesystemName(name);
				// getOriginalFileName() - 실제 사용자가 업로드 했던 파일 명
				originFiles = multiRequest.getOriginalFileName(name);
				
			}
			
		}
		
		Profile pf = new Profile();
		pf.setOrigin_name(originFiles);
		pf.setChange_name(saveFiles);
		pf.setFile_path(savePath);
		int result1 = new MemberService().profileEt(userNo);

		System.out.println("프로필 파일 갯수" +result1);
		int result = 0;
		if(result1 == 0) {
			result = new MemberService().insertProfile(pf, userNo);			
		}else {
			result = new MemberService().changeProfile(pf, userNo);
		}
		
		if(result>0) {
			response.sendRedirect("myPage.me");
		}else {
			request.setAttribute("msg", "프로필 변경실패");
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
