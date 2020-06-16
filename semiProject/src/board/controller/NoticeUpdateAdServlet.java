package board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board.model.service.BoardService;
import board.model.vo.Board;
import board.model.vo.Files;

/**
 * Servlet implementation class NoticeUpdateServlet
 */
@WebServlet("/update.notice")
public class NoticeUpdateAdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NoticeUpdateAdServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		int maxSize = 1024 * 1024 * 10;

		String root = request.getSession().getServletContext().getRealPath("/");
		String savePath = root + "board_uploadFiles/";

		MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8",
				new DefaultFileRenamePolicy());

		String title = multiRequest.getParameter("title");
		String content = multiRequest.getParameter("content");
		String board_no= multiRequest.getParameter("board_no");
		

//		String user_no = Integer.valueOf(((Member)request.getSession().getAttribute("loginUser")).getUserNo()).toString();
		String user_no = "1"; // 로그인유저를 쓸 수 없어서 임의로 함

		int board_code = Integer.valueOf(multiRequest.getParameter("board_code"));

		ArrayList<String> saveFiles = new ArrayList<>();
		ArrayList<String> originFiles = new ArrayList<>();

		Enumeration<String> files = multiRequest.getFileNames();

		while (files.hasMoreElements()) {

			String name = files.nextElement();
			if (multiRequest.getFilesystemName(name) != null) {

				saveFiles.add(multiRequest.getFilesystemName(name));
				originFiles.add(multiRequest.getOriginalFileName(name));

			}
		}

		Board b = new Board();
		b.setBoard_no(Integer.valueOf(board_no));
		b.setTitle(title);
		b.setContent(content);
		b.setUser_name(user_no);
		b.setBoard_code(board_code);

		ArrayList<Files> fList = new ArrayList<>();

		for (int i = originFiles.size() - 1; i >= 0; i--) { 
			Files f = new Files();
			f.setFile_path(savePath);
			f.setOrigin_name(originFiles.get(i));
			f.setChange_name(saveFiles.get(i));
			f.setBoard_no(Integer.valueOf(board_no));

			fList.add(f);
		}
		
		System.out.println("update 서블렛에서b "+b);
		System.out.println("update 서블렛에서f "+fList);

		int result = new BoardService().updateBoard(b,fList);

		if (result > 0) {
			request.getRequestDispatcher("/listAd.notice").forward(request, response);

		} else {
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
