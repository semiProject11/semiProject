package service.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import board.model.vo.Review;
import service.model.vo.CategoryListPd;
import service.model.vo.Service;
import service.model.vo.ServiceBuyList;
import service.model.vo.ServiceSellList;
import service.model.vo.Service_Category;
import service.model.vo.Service_List;
import service.model.vo.Service_ServiceTable_oh;
import service.model.vo.Service_SeviceFilesTable_oh;
import service.model.vo.Service_info;

public class ServiceDao {

	public ArrayList<Service_List> selectTradeList(Connection conn) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT ROWNUM RNUM,L.* FROM(SELECT * FROM LIST L LEFT JOIN SERVICE S ON(L.SERVICE_NO=S.SERVICE_NO) LEFT JOIN MEMBER M ON(S.B_USER_NO=M.USER_NO))L ORDER BY TRADE_DATE DESC";
		ArrayList<Service_List> tradeList = new ArrayList<>();

		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();

			while (rset.next()) {

				Service_List s = new Service_List(rset.getInt("service_no"), rset.getDate("trade_date"),
						rset.getString("s_user_no"), rset.getString("b_user_no"), rset.getString("refund_yn"));
				tradeList.add(s);

			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return tradeList;
	}

	public ArrayList<Service_ServiceTable_oh> selectServiceList(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT ROWNUM RNUM,L.* FROM(SELECT * FROM LIST L LEFT JOIN SERVICE S ON(L.SERVICE_NO=S.SERVICE_NO) LEFT JOIN MEMBER M ON(S.B_USER_NO=M.USER_NO))L ORDER BY TRADE_DATE DESC";
		ArrayList<Service_ServiceTable_oh> serviceList = new ArrayList<>();

		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();

			while (rset.next()) {

				Service_ServiceTable_oh s = new Service_ServiceTable_oh(rset.getInt("service_no"),
						rset.getString("s_user_no"), rset.getString("category_code"), rset.getString("title"),
						rset.getString("salemethod"), rset.getInt("price_sale"), rset.getInt("price_bidding"),
						rset.getString("rnum"), // 마감시간대신 rnum받아옴
						rset.getString("subject"), rset.getString("s_explain"), rset.getString("sale_info"),
						rset.getString("available_area"), rset.getString("contacttime_start"),
						rset.getString("contacttime_finish"), rset.getInt("readcount"), rset.getInt("file_count"),
						rset.getString("file_yn"), rset.getString("b_user_no"), rset.getDate("register_date"));

				serviceList.add(s);

			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return serviceList;
	}

	public Service_List selectTrade(Connection conn, int service_no) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM LIST WHERE SERVICE_NO=?";
		Service_List trade = new Service_List();

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, service_no);
			rset = pstmt.executeQuery();

			if (rset.next()) {

				trade = new Service_List(rset.getInt("service_no"), rset.getDate("trade_date"),
						rset.getString("s_user_no"), rset.getString("b_user_no"), rset.getString("refund_yn"));

			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return trade;
	}

	public Service_ServiceTable_oh selectTradeServ(Connection conn, int service_no) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM SERVICE WHERE SERVICE_NO=?";
		Service_ServiceTable_oh service = new Service_ServiceTable_oh();

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, service_no);
			rset = pstmt.executeQuery();

			if (rset.next()) {

				service = new Service_ServiceTable_oh(rset.getInt("service_no"), rset.getString("s_user_no"),
						rset.getString("category_code"), rset.getString("title"), rset.getString("salemethod"),
						rset.getInt("price_sale"), rset.getInt("price_bidding"), rset.getString("deadline"),
						rset.getString("subject"), rset.getString("s_explain"), rset.getString("sale_info"),
						rset.getString("available_area"), rset.getString("contacttime_start"),
						rset.getString("contacttime_finish"), rset.getInt("readcount"), rset.getInt("file_count"),
						rset.getString("file_yn"), rset.getString("b_user_no"), rset.getDate("register_date"));

			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return service;
	}

	public Service_Category selectTradeCategory(Connection conn, int service_no) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM LIST L JOIN SERVICE S ON(L.SERVICE_NO=S.SERVICE_NO) JOIN CATEGORY C ON(C.CATEGORY_CODE=S.CATEGORY_CODE) WHERE L.SERVICE_NO=?";
		Service_Category category = null;

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, service_no);

			rset = pstmt.executeQuery();

			if (rset.next()) {

				category = new Service_Category(rset.getString("category_code"), rset.getString("category_name"));

			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return category;
	}

	public int getBuyListCount(Connection conn, String userNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		String query = "SELECT COUNT(*) C FROM SERVICE WHERE B_USER_NO = ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userNo);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				result = rset.getInt("C");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return result;
	}

	public ArrayList<ServiceBuyList> selectBuyServiceList(Connection conn, int currentPage, int limit, String userNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		ArrayList<ServiceBuyList> bsList = new ArrayList<>();

		int starRow = (currentPage - 1) * limit + 1;
		int endRow = currentPage * limit;

		String query = "SELECT * FROM (SELECT ROWNUM RNUM, S.* FROM SERVICE_BUY_LIST S WHERE B_USER_NO = ? ORDER BY 4 DESC) WHERE RNUM BETWEEN ? AND ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userNo);
			pstmt.setInt(2, starRow);
			pstmt.setInt(3, endRow);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				ServiceBuyList service = new ServiceBuyList(rset.getString("CHANGE_NAME"), rset.getString("TITLE"),
						rset.getDate("TRADE_DATE"), rset.getString("USER_NAME"), rset.getString("PHONE"),
						rset.getInt("SERVICE_NO"), rset.getString("B_USER_NO"));

				bsList.add(service);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return bsList;
	}

	public ArrayList<Review> selectReviewList(Connection conn, String userNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		ArrayList<Review> re = new ArrayList<>();

		String query = "SELECT * FROM BOARD B JOIN REVIEW R ON(B.BOARD_NO = R.BOARD_NO) WHERE USER_NO = ? AND BOARD_CODE = 10";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userNo);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				Review review = new Review(rset.getString("CONTENT"), rset.getInt("RATING"), rset.getInt("SERVICE_NO"));

				re.add(review);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return re;
	}

	public String selectUserNo(Connection conn, int serviceNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String result = "";
		String query = "SELECT S_USER_NO FROM SERVICE WHERE SERVICE_NO =?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, serviceNo);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				result = rset.getString("S_USER_NO");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return result;
	}

	public int inssertService(Connection conn, Service_ServiceTable_oh st) {

		PreparedStatement pstmt = null;
		int result1 = 0;

		// 데이터가 없어서 임의의 값 넣음
		String query = "INSERT INTO SERVICE VALUES(SEQ_SERVICE.NEXTVAL,'서비스유저넘버',?,?,\r\n"
				+ "DEFAULT,DEFAULT,DEFAULT,'게시판유저넘버',?,?,?,TO_DATE(?,'YYYYMMDD HH24:MI'),?,?,TO_DATE(?,'HH24:MI') ,\r\n"
				+ "TO_DATE(?,'HH24:MI'),?,SYSDATE,?)";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, st.getSaleInfo());
			pstmt.setString(2, st.getAvailableArea());
			pstmt.setString(3, st.getSaleMethod());
			pstmt.setString(4, st.getSubject());
			pstmt.setString(5, st.getCategoryCode());
			pstmt.setString(6, st.getDeadline());
			pstmt.setInt(7, Integer.valueOf(st.getPriceBidding()));
			pstmt.setInt(8, Integer.valueOf(st.getPriceSale()));
			pstmt.setString(9, st.getContactTime_start());
			pstmt.setString(10, st.getContactTime_finish());
			pstmt.setString(11, st.getTitle());
			pstmt.setString(12, st.getsExplain());

			result1 = pstmt.executeUpdate();
			System.out.println("반환값은 : " + result1);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result1;

		/* 스플릿으로 잘라서 배열에 넣어줘서 배열 숫자만큼 돌려주기 */

	}

	public int insertService1(Connection conn, String[] day) {
		PreparedStatement pstmt = null;
		int result2 = 0;
		String aaa = "";

		// 데이터 없어서 임의의 값 넣음
		String query = "INSERT INTO DAYS VALUES(?,5)";
		// 서비스번호 임시로 넣어둠 !

		try {
			for (int i = 0; i < day.length; i++) {
				pstmt = conn.prepareStatement(query);
				aaa = day[i];
				pstmt.setString(1, aaa);

				result2 = pstmt.executeUpdate();

				System.out.println("가능 날짜 반환값은 : " + result2);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result2;

	}

	public Service selectServiceReview(Connection conn, int board_no) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT *\r\n" + "FROM REVIEW F\r\n" + "LEFT JOIN BOARD B ON (F.BOARD_NO = B.BOARD_NO)\r\n"
				+ "LEFT JOIN MEMBER M ON (B.USER_NO = M.USER_NO)\r\n"
				+ "LEFT JOIN BUYER BE ON (M.USER_NO = BE.B_USER_NO)\r\n"
				+ "LEFT JOIN LIST L ON (BE.B_USER_NO = L.B_USER_NO)\r\n"
				+ "LEFT JOIN SELLER SE ON (L.S_USER_NO = SE.S_USER_NO)\r\n"
				+ "LEFT JOIN SERVICE S ON (L.SERVICE_NO = S.SERVICE_NO)\r\n"
				+ "LEFT JOIN CATEGORY C ON (S.CATEGORY_CODE = C.CATEGORY_CODE) WHERE B.BOARD_NO=?";
		Service service = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, board_no);
			rset = pstmt.executeQuery();

			if (rset.next()) {
				service = new Service(rset.getInt("service_no"), rset.getInt("s_user_no"), rset.getString("sale_info"),
						rset.getString("available_area"), rset.getInt("readCount"), rset.getInt("file_count"),
						rset.getString("file_YN"), rset.getInt("b_user_no"), rset.getString("saleMethod"),
						rset.getDate("deadline"), rset.getInt("price_bidding"), rset.getInt("price_sale"),
						rset.getString("subject"), rset.getString("category_code"));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return service;
	}

	public ArrayList<Service> selectS_ReviewList(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT *\r\n" + "FROM REVIEW F\r\n" + "LEFT JOIN BOARD B ON (F.BOARD_NO = B.BOARD_NO)\r\n"
				+ "LEFT JOIN MEMBER M ON (B.USER_NO = M.USER_NO)\r\n"
				+ "LEFT JOIN BUYER BE ON (M.USER_NO = BE.B_USER_NO)\r\n"
				+ "LEFT JOIN LIST L ON (BE.B_USER_NO = L.B_USER_NO)\r\n"
				+ "LEFT JOIN SERVICE S ON (L.SERVICE_NO = S.SERVICE_NO)\r\n"
				+ "LEFT JOIN CATEGORY C ON (S.CATEGORY_CODE = C.CATEGORY_CODE)";
		ArrayList<Service> sList = new ArrayList<>();

		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();

			while (rset.next()) {

				Service s = new Service(rset.getInt("service_no"), rset.getInt("s_user_no"),
						rset.getString("sale_info"), rset.getString("available_area"), rset.getInt("readCount"),
						rset.getInt("file_count"), rset.getString("file_YN"), rset.getInt("b_user_no"),
						rset.getString("saleMethod"), rset.getDate("deadline"), rset.getInt("price_bidding"),
						rset.getInt("price_sale"), rset.getString("subject"), rset.getString("category_code"));
				sList.add(s);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return sList;

	}

	public ArrayList<Service_Category> selectSC_ReviewList(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT *\r\n" + "FROM REVIEW F\r\n" + "LEFT JOIN BOARD B ON (F.BOARD_NO = B.BOARD_NO)\r\n"
				+ "LEFT JOIN MEMBER M ON (B.USER_NO = M.USER_NO)\r\n"
				+ "LEFT JOIN BUYER BE ON (M.USER_NO = BE.B_USER_NO)\r\n"
				+ "LEFT JOIN LIST L ON (BE.B_USER_NO = L.B_USER_NO)\r\n"
				+ "LEFT JOIN SERVICE S ON (L.SERVICE_NO = S.SERVICE_NO)\r\n"
				+ "LEFT JOIN CATEGORY C ON (S.CATEGORY_CODE = C.CATEGORY_CODE)";
		ArrayList<Service_Category> scList = new ArrayList<>();

		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Service_Category sc = new Service_Category(rset.getString("category_code"),
						rset.getString("category_name"));
				scList.add(sc);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return scList;
	}

	public Service_List selectLServiceReview(Connection conn, int board_no) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT *\r\n" + "FROM REVIEW F\r\n" + "LEFT JOIN BOARD B ON (F.BOARD_NO = B.BOARD_NO)\r\n"
				+ "LEFT JOIN MEMBER M ON (B.USER_NO = M.USER_NO)\r\n"
				+ "LEFT JOIN BUYER BE ON (M.USER_NO = BE.B_USER_NO)\r\n"
				+ "LEFT JOIN LIST L ON (BE.B_USER_NO = L.B_USER_NO)\r\n"
				+ "LEFT JOIN SELLER SE ON (L.S_USER_NO = SE.S_USER_NO)\r\n"
				+ "LEFT JOIN SERVICE S ON (L.SERVICE_NO = S.SERVICE_NO)\r\n"
				+ "LEFT JOIN CATEGORY C ON (S.CATEGORY_CODE = C.CATEGORY_CODE) WHERE B.BOARD_NO=?";
		Service_List lService = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, board_no);
			rset = pstmt.executeQuery();

			if (rset.next()) {
				lService = new Service_List(rset.getInt("service_no"), rset.getDate("trade_date"),
						rset.getString("s_user_no"), rset.getString("b_user_no"), rset.getString("refund_yn"));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return lService;
	}

	public Service_Category selectCServiceReview(Connection conn, int board_no) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT *\r\n" + "FROM REVIEW F\r\n" + "LEFT JOIN BOARD B ON (F.BOARD_NO = B.BOARD_NO)\r\n"
				+ "LEFT JOIN MEMBER M ON (B.USER_NO = M.USER_NO)\r\n"
				+ "LEFT JOIN BUYER BE ON (M.USER_NO = BE.B_USER_NO)\r\n"
				+ "LEFT JOIN LIST L ON (BE.B_USER_NO = L.B_USER_NO)\r\n"
				+ "LEFT JOIN SELLER SE ON (L.S_USER_NO = SE.S_USER_NO)\r\n"
				+ "LEFT JOIN SERVICE S ON (L.SERVICE_NO = S.SERVICE_NO)\r\n"
				+ "LEFT JOIN CATEGORY C ON (S.CATEGORY_CODE = C.CATEGORY_CODE) WHERE B.BOARD_NO=?";
		Service_Category cService = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, board_no);
			rset = pstmt.executeQuery();

			if (rset.next()) {

				cService = new Service_Category(rset.getString("category_code"), rset.getString("category_name"));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return cService;
	}

	public ServiceBuyList selectBuyListServiceReview(Connection conn, int board_no) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT *\r\n" + "FROM REVIEW F\r\n" + "LEFT JOIN BOARD B ON (F.BOARD_NO = B.BOARD_NO)\r\n"
				+ "LEFT JOIN MEMBER M ON (B.USER_NO = M.USER_NO)\r\n"
				+ "LEFT JOIN BUYER BE ON (M.USER_NO = BE.B_USER_NO)\r\n"
				+ "LEFT JOIN LIST L ON (BE.B_USER_NO = L.B_USER_NO)\r\n"
				+ "LEFT JOIN SELLER SE ON (L.S_USER_NO = SE.S_USER_NO)\r\n"
				+ "LEFT JOIN SERVICE S ON (L.SERVICE_NO = S.SERVICE_NO)\r\n"
				+ "LEFT JOIN CATEGORY C ON (S.CATEGORY_CODE = C.CATEGORY_CODE) WHERE B.BOARD_NO=?";
		ServiceBuyList sbService = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, board_no);
			rset = pstmt.executeQuery();

			if (rset.next()) {

				sbService = new ServiceBuyList(rset.getString("title"));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return sbService;
	}

	public int getSellListCount(Connection conn, String userNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		String query = "SELECT COUNT(*) C FROM SERVICE WHERE S_USER_NO = ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userNo);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				result = rset.getInt("C");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return result;
	}

	public ArrayList<ServiceSellList> selectSellServiceList(Connection conn, int currentPage, int limit,
			String userNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		ArrayList<ServiceSellList> bsList = new ArrayList<>();

		int starRow = (currentPage - 1) * limit + 1;
		int endRow = currentPage * limit;

		String query = "SELECT SERVICE_NO,TITLE,SERVICE_STATUS FROM (SELECT ROWNUM RNUM, S.* FROM SERVICE_SELL_LIST S WHERE S_USER_NO = '1') WHERE RNUM BETWEEN 1 AND 5";

		try {
			pstmt = conn.prepareStatement(query);
			// pstmt.setString(1, userNo);
			// pstmt.setInt(2, starRow);
			// pstmt.setInt(3, endRow);

			rset = pstmt.executeQuery();
			System.out.println("test");
			while (rset.next()) {
				System.out.println("나 나오니?");

				ServiceSellList service = new ServiceSellList(rset.getInt("SERVICE_NO"), rset.getString("TITLE"),
						rset.getString("SERVICE_STATUS"));

				bsList.add(service);

			}
			System.out.println(bsList);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return bsList;
	}

	public int deleteService(Connection conn, ArrayList<String> arr) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "DELETE FROM SERVICE WHERE SERVICE_NO = ?";
		try {

			for (int i = 0; i < arr.size(); i++) {
				pstmt = conn.prepareStatement(query);

				pstmt.setInt(1, Integer.valueOf(arr.get(i)));

				result += pstmt.executeUpdate();

			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;

	}

	public int deleteServiceFile(Connection conn, ArrayList<String> arr) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "DELETE FROM SERVICE_FILES WHERE SERVICE_NO = ?";
		try {

			for (int i = 0; i < arr.size(); i++) {
				pstmt = conn.prepareStatement(query);

				pstmt.setInt(1, Integer.valueOf(arr.get(i)));

				result += pstmt.executeUpdate();

			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public int deleteServiceDate(Connection conn, ArrayList<String> arr) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "DELETE FROM DAYS WHERE SERVICE_NO = ?";
		try {

			for (int i = 0; i < arr.size(); i++) {
				pstmt = conn.prepareStatement(query);

				pstmt.setInt(1, Integer.valueOf(arr.get(i)));

				result += pstmt.executeUpdate();

			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	// ===================================================================================

	public ArrayList selectsvList(Connection conn, String category, String salemethod) {
		PreparedStatement pstmt = null;
		ArrayList list = new ArrayList();
		ResultSet rs = null;
		String query = "";

		System.out.println("serviceDao : " + salemethod);

		// String query = "SELECT * FROM SERVICE_PD WHERE CATEGORY_CODE = '"+ category
		// +"' AND salemethod = 'auction'";
		if (salemethod.equalsIgnoreCase("auction")) {
			query = "SELECT * FROM SERVICE_PD WHERE CATEGORY_CODE = '" + category + "' AND salemethod = '" + salemethod
					+ "' AND SERVICE_STATUS = 'Y'";
		}
		try {
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			CategoryListPd clpd = null;

			while (rs.next()) {
				clpd = new CategoryListPd(rs.getInt("SERVICE_NO"), rs.getString("S_USER_NO"),
						rs.getString("SALEMETHOD"), rs.getString("CATEGORY_CODE"), rs.getString("CATEGORY_NAME"),
						rs.getString("CHANGE_NAME"), rs.getString("USER_ID"), rs.getString("TITLE"),
						rs.getInt("PRICE_SALE"), rs.getInt("PRICE_BIDDING"), rs.getString("GRADE_NAME"),
						rs.getString("GRADE_NO"), rs.getInt("READCOUNT"), rs.getString("DEADLINE"),
						rs.getString("SERVICE_STATUS"));

				list.add(clpd);
			}

			// System.out.println("list 잘들어왔나 ? " + list);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		return list;
	}

	public ArrayList selectFList(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Service_SeviceFilesTable_oh sf = null;
		ArrayList list = new ArrayList();

		String query = "SELECT * FROM SERVICE_FILES WHERE STATUS = 'Y' AND FILE_LEVEL = 0";

		try {
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				sf = new Service_SeviceFilesTable_oh(rs.getInt("fid"), rs.getInt("service_no"),
						rs.getString("origin_name"), rs.getString("change_name"), rs.getString("file_path"),
						rs.getDate("upload_date"), rs.getInt("file_level"), rs.getInt("download_count"),
						rs.getString("status"));
				list.add(sf);
			}
			System.out.println("sf : " + list);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	public ArrayList selectgeneral(Connection conn, String category, String salemethod) {
		PreparedStatement pstmt = null;
		ArrayList list = new ArrayList();
		ResultSet rs = null;
		String query = "";

		System.out.println(category);

		// String query = "SELECT * FROM SERVICE_PD WHERE CATEGORY_CODE = '"+ category
		// +"' AND salemethod = 'general'";
		if (salemethod.equalsIgnoreCase("general")) {
			query = "SELECT * FROM SERVICE_PD WHERE CATEGORY_CODE = '" + category + "' AND salemethod = '" + salemethod
					+ "'AND SERVICE_STATUS = 'Y'";
		}

		try {

			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			CategoryListPd clpd = null;

			while (rs.next()) {
				clpd = new CategoryListPd(rs.getInt("SERVICE_NO"), rs.getString("S_USER_NO"),
						rs.getString("SALEMETHOD"), rs.getString("CATEGORY_CODE"), rs.getString("CATEGORY_NAME"),
						rs.getString("CHANGE_NAME"), rs.getString("USER_ID"), rs.getString("TITLE"),
						rs.getInt("PRICE_SALE"), rs.getInt("PRICE_BIDDING"), rs.getString("GRADE_NAME"),
						rs.getString("GRADE_NO"), rs.getInt("READCOUNT"), rs.getString("DEADLINE"),
						rs.getString("SERVICE_STATUS"));
				list.add(clpd);
			}

			System.out.println("list 잘들어왔나 ? " + list);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		return list;
	}

	public ArrayList sortpricehigh(Connection conn, String category, String salemethod) {
		PreparedStatement pstmt = null;
		ArrayList list = new ArrayList();
		ResultSet rs = null;
		String query = "";
		System.out.println(category);

		if (salemethod.equalsIgnoreCase("auction")) {
			query = "SELECT * FROM SERVICE_PD WHERE CATEGORY_CODE = '" + category + "' AND salemethod = '" + salemethod
					+ "' AND SERVICE_STATUS = 'Y' ORDER BY PRICE_BIDDING DESC";
		} else {
			query = "SELECT * FROM SERVICE_PD WHERE CATEGORY_CODE = '" + category + "' AND salemethod = '" + salemethod
					+ "' AND SERVICE_STATUS = 'Y' ORDER BY PRICE_SALE DESC";
		}

		try {

			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			CategoryListPd clpd = null;

			while (rs.next()) {
				clpd = new CategoryListPd(rs.getInt("SERVICE_NO"), rs.getString("S_USER_NO"),
						rs.getString("SALEMETHOD"), rs.getString("CATEGORY_CODE"), rs.getString("CATEGORY_NAME"),
						rs.getString("CHANGE_NAME"), rs.getString("USER_ID"), rs.getString("TITLE"),
						rs.getInt("PRICE_SALE"), rs.getInt("PRICE_BIDDING"), rs.getString("GRADE_NAME"),
						rs.getString("GRADE_NO"), rs.getInt("READCOUNT"), rs.getString("DEADLINE"),
						rs.getString("SERVICE_STATUS"));
				list.add(clpd);
			}

			System.out.println("list 잘들어왔나 ? " + list);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		return list;
	}

	public ArrayList sortpricelow(Connection conn, String category, String salemethod) {
		PreparedStatement pstmt = null;
		ArrayList list = new ArrayList();
		ResultSet rs = null;
		String query = "";
		System.out.println(category);

		if (salemethod.equalsIgnoreCase("auction")) {
			query = "SELECT * FROM SERVICE_PD WHERE CATEGORY_CODE = '" + category + "' AND salemethod = '" + salemethod
					+ "' AND SERVICE_STATUS = 'Y' ORDER BY PRICE_BIDDING ASC";
		} else {
			query = "SELECT * FROM SERVICE_PD WHERE CATEGORY_CODE = '" + category + "' AND salemethod = '" + salemethod
					+ "' AND SERVICE_STATUS = 'Y' ORDER BY PRICE_SALE ASC";
		}

		try {

			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			CategoryListPd clpd = null;

			while (rs.next()) {
				clpd = new CategoryListPd(rs.getInt("SERVICE_NO"), rs.getString("S_USER_NO"),
						rs.getString("SALEMETHOD"), rs.getString("CATEGORY_CODE"), rs.getString("CATEGORY_NAME"),
						rs.getString("CHANGE_NAME"), rs.getString("USER_ID"), rs.getString("TITLE"),
						rs.getInt("PRICE_SALE"), rs.getInt("PRICE_BIDDING"), rs.getString("GRADE_NAME"),
						rs.getString("GRADE_NO"), rs.getInt("READCOUNT"), rs.getString("DEADLINE"),
						rs.getString("SERVICE_STATUS"));
				list.add(clpd);
			}

			System.out.println("list 잘들어왔나 ? " + list);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		return list;
	}

	public ArrayList viewssort(Connection conn, String category, String salemethod) {
		PreparedStatement pstmt = null;
		ArrayList list = new ArrayList();
		ResultSet rs = null;
		String query = "";
		System.out.println(category);

		if (salemethod.equalsIgnoreCase("auction")) {
			query = "SELECT * FROM SERVICE_PD WHERE CATEGORY_CODE = '" + category + "' AND salemethod = '" + salemethod
					+ "' AND SERVICE_STATUS = 'Y' ORDER BY READCOUNT DESC";
		} else {
			query = "SELECT * FROM SERVICE_PD WHERE CATEGORY_CODE = '" + category + "' AND salemethod = '" + salemethod
					+ "' AND SERVICE_STATUS = 'Y' ORDER BY READCOUNT DESC";
		}

		try {

			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			CategoryListPd clpd = null;

			while (rs.next()) {
				clpd = new CategoryListPd(rs.getInt("SERVICE_NO"), rs.getString("S_USER_NO"),
						rs.getString("SALEMETHOD"), rs.getString("CATEGORY_CODE"), rs.getString("CATEGORY_NAME"),
						rs.getString("CHANGE_NAME"), rs.getString("USER_ID"), rs.getString("TITLE"),
						rs.getInt("PRICE_SALE"), rs.getInt("PRICE_BIDDING"), rs.getString("GRADE_NAME"),
						rs.getString("GRADE_NO"), rs.getInt("READCOUNT"), rs.getString("DEADLINE"),
						rs.getString("SERVICE_STATUS"));
				list.add(clpd);
			}

			System.out.println("list 잘들어왔나 ? " + list);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		return list;
	}

	public ArrayList newpdsort(Connection conn, String category, String salemethod) {
		PreparedStatement pstmt = null;
		ArrayList list = new ArrayList();
		ResultSet rs = null;
		String query = "";
		System.out.println(category);

		if (salemethod.equalsIgnoreCase("auction")) {
			query = "SELECT * FROM SERVICE_PD WHERE CATEGORY_CODE = '" + category + "' AND salemethod = '" + salemethod
					+ "' AND SERVICE_STATUS = 'Y' ORDER BY SERVICE_NO DESC";
		} else {
			query = "SELECT * FROM SERVICE_PD WHERE CATEGORY_CODE = '" + category + "' AND salemethod = '" + salemethod
					+ "' AND SERVICE_STATUS = 'Y' ORDER BY SERVICE_NO DESC";
		}

		try {

			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			CategoryListPd clpd = null;

			while (rs.next()) {
				clpd = new CategoryListPd(rs.getInt("SERVICE_NO"), rs.getString("S_USER_NO"),
						rs.getString("SALEMETHOD"), rs.getString("CATEGORY_CODE"), rs.getString("CATEGORY_NAME"),
						rs.getString("CHANGE_NAME"), rs.getString("USER_ID"), rs.getString("TITLE"),
						rs.getInt("PRICE_SALE"), rs.getInt("PRICE_BIDDING"), rs.getString("GRADE_NAME"),
						rs.getString("GRADE_NO"), rs.getInt("READCOUNT"), rs.getString("DEADLINE"),
						rs.getString("SERVICE_STATUS"));
				list.add(clpd);
			}

			System.out.println("list 잘들어왔나 ? " + list);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		return list;
	}

	public ArrayList resetpd(Connection conn, String category, String salemethod) {
		PreparedStatement pstmt = null;
		ArrayList list = new ArrayList();
		ResultSet rs = null;
		String query = "";
		System.out.println(category);

		if (salemethod.equalsIgnoreCase("auction")) {
			query = "SELECT * FROM SERVICE_PD WHERE CATEGORY_CODE = '" + category + "' AND salemethod = '" + salemethod
					+ "' AND SERVICE_STATUS = 'Y'";
		} else {
			query = "SELECT * FROM SERVICE_PD WHERE CATEGORY_CODE = '" + category + "' AND salemethod = '" + salemethod
					+ "' AND SERVICE_STATUS = 'Y'";
		}

		try {

			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			CategoryListPd clpd = null;

			while (rs.next()) {
				clpd = new CategoryListPd(rs.getInt("SERVICE_NO"), rs.getString("S_USER_NO"),
						rs.getString("SALEMETHOD"), rs.getString("CATEGORY_CODE"), rs.getString("CATEGORY_NAME"),
						rs.getString("CHANGE_NAME"), rs.getString("USER_ID"), rs.getString("TITLE"),
						rs.getInt("PRICE_SALE"), rs.getInt("PRICE_BIDDING"), rs.getString("GRADE_NAME"),
						rs.getString("GRADE_NO"), rs.getInt("READCOUNT"), rs.getString("DEADLINE"),
						rs.getString("SERVICE_STATUS"));
				list.add(clpd);
			}

			System.out.println("list 잘들어왔나 ? " + list);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		return list;
	}

	public ArrayList popitem(Connection conn, String[] category) {
		PreparedStatement pstmt = null;
		ArrayList list = new ArrayList();
		ResultSet rs = null;
		CategoryListPd clpd = null;

		String query = "SELECT ROWNUM, M.* FROM(SELECT * FROM SERVICE_PD where category_code=? AND SERVICE_STATUS = 'Y' ORDER BY READCOUNT DESC) M WHERE ROWNUM <= 4";
		try {

			for (int i = 0; i < category.length; i++) {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, category[i]);

				rs = pstmt.executeQuery();

				while (rs.next()) {
					clpd = new CategoryListPd(rs.getInt("SERVICE_NO"), rs.getString("S_USER_NO"),
							rs.getString("SALEMETHOD"), rs.getString("CATEGORY_CODE"), rs.getString("CATEGORY_NAME"),
							rs.getString("CHANGE_NAME"), rs.getString("USER_ID"), rs.getString("TITLE"),
							rs.getInt("PRICE_SALE"), rs.getInt("PRICE_BIDDING"), rs.getString("GRADE_NAME"),
							rs.getString("GRADE_NO"), rs.getInt("READCOUNT"), rs.getString("DEADLINE"),
							rs.getString("SERVICE_STATUS"));
					list.add(clpd);
				}
			}
			System.out.println("category : " + list);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		return list;
	}


	public CategoryListPd auctiondetail(Connection conn, String sNo) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		CategoryListPd clpd = null;

		System.out.println(sNo);

		String query = "SELECT SERVICE_NO,S_USER_NO,CHANGE_NAME,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,\r\n" + 
				"GRADE_NO,READCOUNT,TO_CHAR(DEADLINE,'YYYY-MM-DD HH24:MI') t,SERVICE_STATUS FROM SERVICE_PD WHERE SERVICE_NO = ?";

		try {

			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sNo);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				clpd = new CategoryListPd(rs.getInt("SERVICE_NO"), rs.getString("S_USER_NO"),
						rs.getString("SALEMETHOD"), rs.getString("CATEGORY_CODE"), rs.getString("CATEGORY_NAME"),
						rs.getString("CHANGE_NAME"), rs.getString("USER_ID"), rs.getString("TITLE"),
						rs.getInt("PRICE_SALE"), rs.getInt("PRICE_BIDDING"), rs.getString("GRADE_NAME"),
						rs.getString("GRADE_NO"), rs.getInt("READCOUNT"), rs.getString("t"),
						rs.getString("SERVICE_STATUS"));
			}

			System.out.println("검색된 sNo의 list 잘들어왔나 ? " + clpd);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		return clpd;
	}

	public int updateCount(Connection conn, int sNo2) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = "UPDATE SERVICE SET READCOUNT = READCOUNT + 1 WHERE SERVICE_NO = ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, sNo2);
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		// System.out.println(result);
		return result;
	}

	public ArrayList selectsvinfo(Connection conn, String sNo) {
		PreparedStatement pstmt = null;
		ArrayList list = new ArrayList();
		ResultSet rs = null;
		Service_info svinfo = null;
		
		String query = "SELECT SERVICE_NO, S_USER_NO, CHANGE_NAME, PHONE,\r\n" + 
				"TO_CHAR(CONTACTTIME_START,'YYYY-MM-DD HH24:MI') s,TO_CHAR(CONTACTTIME_FINISH,'YYYY-MM-DD HH24:MI') f,\r\n" + 
				"SALE_INFO, S_EXPLAIN, AVAILABLE_AREA, AVAILABLE_DATE, SUBJECT\r\n" + 
				"FROM SERVICE_INFO WHERE SERVICE_NO = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sNo);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				svinfo = new Service_info(rs.getInt("SERVICE_NO"),
											rs.getString("S_USER_NO"),
											rs.getString("CHANGE_NAME"),
											rs.getString("PHONE"),
											rs.getString("s"),
											rs.getString("f"),
											rs.getString("SALE_INFO"),
											rs.getString("S_EXPLAIN"),
											rs.getString("AVAILABLE_AREA"),
											rs.getString("AVAILABLE_DATE"),
											rs.getString("SUBJECT"));
				list.add(svinfo);
				
			}
			System.out.println("svinfo : " + list);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return list;
	}

}
