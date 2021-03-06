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
import board.model.vo.Inquiary;
import member.model.vo.Member;

/**
 * Servlet implementation class InquiaryUpdateServlet
 */
@WebServlet("/update.inquiary")
public class InquiaryUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InquiaryUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// 전송 용량
		int maxSize = 1024 * 1024 * 10;

		// 저장할 경로 지정
		String root = request.getSession().getServletContext().getRealPath("/");
		String savePath = root + "board_uploadFiles/";

		MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "utf-8",
				new DefaultFileRenamePolicy());

		HttpSession session = request.getSession();
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		int userNo = Integer.valueOf(loginUser.getUserNo());
//		int userNo = 1;
		
		String title = multiRequest.getParameter("inquiaryTitle");
		String content = multiRequest.getParameter("inquiaryContent");
		String boardNo = multiRequest.getParameter("boardnum");
//		String user_no=Integer.valueOf(((Member)request.getSession().getAttribute("loginUser")).getUserNo()).toString();
		
		String board_type = multiRequest.getParameter("inquiaryName");

		
		// 저장할 파일 이름 리스트
		ArrayList<String> saveFiles = new ArrayList<>();

		// 원본 파일 이름 리스트
		ArrayList<String> originFiles = new ArrayList<>();

		Enumeration<String> files = multiRequest.getFileNames();
		while (files.hasMoreElements()) {

			String name = files.nextElement();
			if (multiRequest.getFilesystemName(name) != null) {
				saveFiles.add(multiRequest.getFilesystemName(name));
				originFiles.add(multiRequest.getFilesystemName(name));

			}

		}

		Board b = new Board();
		b.setTitle(title);
		b.setContent(content);
		b.setUser_no(userNo);

		Inquiary inq = new Inquiary();
		inq.setBoard_type(board_type);

		ArrayList<Files> inquiaryList = new ArrayList<>();

		for (int i = originFiles.size() - 1; i >= 0; i--) {
			Files f = new Files();
			f.setFile_path(savePath);
			f.setOrigin_name(originFiles.get(i));
			f.setChange_name(saveFiles.get(i));

			inquiaryList.add(f);

		}

		int result = new BoardService().updateInquiary(b, inquiaryList, inq, boardNo);

		if (result > 0) {
			request.getRequestDispatcher("/selectList.iq").forward(request, response);

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
