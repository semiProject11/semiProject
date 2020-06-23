package board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board.model.service.BoardService;
import board.model.vo.Board;
import board.model.vo.Files;
import board.model.vo.Report;
import member.model.vo.Member;

/**
 * Servlet implementation class ReportInsertServlet
 */
@WebServlet("/insert.report")
public class ReportInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
	
		int maxSize = 1024 * 1024 * 10;


		String root = request.getSession().getServletContext().getRealPath("/");
		String savePath = root + "board_uploadFiles/";

		MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "utf-8",
				new DefaultFileRenamePolicy());

		String title = multiRequest.getParameter("title");
		String content = multiRequest.getParameter("content");
		String service_no=multiRequest.getParameter("service_no");
		
		HttpSession session = request.getSession();
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		String user_no=Integer.valueOf(((Member)request.getSession().getAttribute("loginUser")).getUserNo()).toString();
		
		String board_type = multiRequest.getParameter("report_type");
		int board_code = 30;


		System.out.println("dkdhdhdh!!!!:"+user_no);
	
		ArrayList<String> saveFiles = new ArrayList<>();
		ArrayList<String> originFiles = new ArrayList<>();

		Enumeration<String> files = multiRequest.getFileNames();
		while (files.hasMoreElements()) {

			String name = files.nextElement();
			if (multiRequest.getFilesystemName(name) != null) {
				saveFiles.add(multiRequest.getFilesystemName(name));
				originFiles.add(multiRequest.getFilesystemName(name));

			}

		}
		/*
		 * System.out.println("savefiles:"+saveFiles);
		 * System.out.println("originFiles:"+originFiles);
		 */
		
		Board b = new Board();
		b.setTitle(title);
		b.setContent(content);
		b.setUser_no(Integer.valueOf(user_no));
		b.setBoard_code(board_code);

		Report rep = new Report();
		rep.setReport_type(board_type);

		ArrayList<Files> reportList = new ArrayList<>();

		for (int i = originFiles.size() - 1; i >= 0; i--) {
			Files f = new Files();
			f.setFile_path(savePath);
			f.setOrigin_name(originFiles.get(i));
			f.setChange_name(saveFiles.get(i));

			reportList.add(f);

		}
		
		System.out.println("서블릿에서:"+reportList);

		int result = new BoardService().insertReport(b,service_no, reportList, rep);

		if (result > 0) {
			request.getRequestDispatcher("/list.notice").forward(request, response);

		} else {
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
