
package member.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDao;
import member.model.dao.MemberDao;
import member.model.vo.Account;
import member.model.vo.Member;
import member.model.vo.Profile;
import member.model.vo.Seller;

public class MemberService {


	public Member loginMember(Member member) {
		Connection conn = getConnection();
		
		Member loginUser = new MemberDao().loginMember(conn, member);
		
		close(conn);
		
		return loginUser;
	}


	public int loginCheck(String userId, String userPwd) {
		
		Connection conn = getConnection();
		
		int result = new MemberDao().loginCheck(conn, userId, userPwd);
		
		close(conn);
		
		return result;
	}

	public Member selectMember(String userId) {
		Connection conn = null;
		conn = getConnection();

		Member member = new MemberDao().selectMember(conn, userId);
		
		

		close(conn);
		
		return member;
	}

	public int selectCount(int i, String userId) {
		Connection conn = null;
		conn = getConnection();
		int count = 0;
		
		if(i ==1) {
			count =  new MemberDao().selectBCount(conn, userId);			
		}else {
			count =  new MemberDao().selectSCount(conn, userId);
		}
		
		
		
		close(conn);
		
		return count;
	}

	public int insertProfile(Profile pf, String userNo) {
		Connection conn = getConnection();
		
		
		int result = new MemberDao().insertProfile(conn, pf, userNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);			
		}
		
		close(conn);
		
		return result;
	}

	public String selectFileName(String userId) {
		Connection conn = getConnection();
		
		String fileName = new MemberDao().selectFileName(conn, userId);
		
		
		close(conn);
		
		return fileName;
	}

	



	public int findIdCheck(String userName, String email) {
		
		Connection conn = getConnection();
		
		int result = new MemberDao().findIdCheck(conn, userName, email);
		
		close(conn);
		
		return result;
	}


	public Member findId(String userName, String email) {
		
		Connection conn = getConnection();
		
		Member member = new MemberDao().findId(conn, userName, email);
		
		close(conn);
		
		return member;
	}


	public int profileEt(String userNo) {
		Connection conn = getConnection();
		
		int result = new MemberDao().profileEt(conn, userNo);
		
		close(conn);
		
		
		
		return result;
	}


	public int changeProfile(Profile pf, String userNo) {
		Connection conn = getConnection();
		
		
		int result = new MemberDao().changeProfile(conn, pf, userNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);			
		}
		
		close(conn);
		
		return result;
	}


	public ArrayList<Member> selectGradeList(int currentPage, int limit) {
		Connection conn=getConnection();
		ArrayList<Member> gradeList=new MemberDao().selectGradeList(conn,currentPage,limit);
	
		close(conn);
		return gradeList;
		
	}


	public ArrayList<Seller> selectSellerList(int currentPage, int limit) {
		Connection conn=getConnection();
		ArrayList<Seller> sellerList=new MemberDao().selectSellerList(conn,currentPage,limit);
		close(conn);

		return sellerList;
		
		
	}


	public Member memberLogin(String userId) {
		Connection conn = getConnection();
		
		Member mem = new MemberDao().memberLogin(conn, userId);
		
		close(conn);
		return mem;
	}


	public int findPwdCheck(String userId, String userName, String email) {
Connection conn = getConnection();
		
int result = new MemberDao().findPwdCheck(conn, userId, userName, email);
		
		close(conn);
		
		return result;
	}


	public int idCheck(String userId) {
		Connection conn = getConnection();
		
		int result = new MemberDao().idCheck(conn, userId);
		
		close(conn);
		
		return result;
	}


	public int chargeMoney(String userNo, int chMoney) {
		Connection conn = getConnection();
		
		
		int result = new MemberDao().chargeMoney(conn, userNo, chMoney);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		
		close(conn);
		
		return result;
	}


	public int selectMemberPoint(String userNo) {
		Connection conn = getConnection();
		
		int result = new MemberDao().selectMemberPoint(conn, userNo);
		
		close(conn);
		
		return result;
	}


	public int registerMember(Member member, Account account) {
		Connection conn = getConnection();
		MemberDao mDao = new MemberDao();
		
		int result = mDao.registerMember(conn, member);
		int result2 = mDao.registerMember(conn, account);
		int result3 = mDao.registerBuyer(conn);
		int result4 = mDao.registerSeller(conn);
		int result5 = mDao.registerProfile_file(conn);
		
		if(result>0 && result2>0 && result3>0 && result4>0 && result5>0) {
			commit(conn);	
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public Account selectAccount(String userNo) {
		Connection conn = getConnection();
		
		Account account = new MemberDao().selectAccount(conn, userNo);
		
	
		close(conn);
		
		return account;

	}



	public ArrayList<Member> selectTradeListS(int currentPage, int limit) {
		Connection conn = getConnection();

		ArrayList<Member> memberList = new MemberDao().selectTradeS(conn, currentPage, limit);

		
	
		close(conn);
		
		return memberList;
	}


	public ArrayList<Member> selectTradeListB(int currentPage, int limit) {
		Connection conn = getConnection();
		

		ArrayList<Member> memberList = new MemberDao().selectTradeB(conn, currentPage, limit);

		
	
		close(conn);
		
		return memberList;
	}


	public Member selectSeller(int service_no) {
		Connection conn=getConnection();
		Member seller=new MemberDao().selectTradeSel(conn,service_no);
		close(conn);
		return seller;
	}


	public Member selectBuyer(int service_no) {
		Connection conn=getConnection();
		Member buyer=new MemberDao().selectTradeBuy(conn,service_no);
		close(conn);
		return buyer;
	}

	
	public int pointWithdraw(int withdraw, String userNo) {

		Connection conn = getConnection();
		
		int result = new MemberDao().pointWithdraw(conn, withdraw, userNo);
		
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}


	public int updateMember(Member member) {
		Connection conn = getConnection();
		
		int result = new MemberDao().updateMember(conn, member);
		
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}


	public int updateAccount(Account account) {
		Connection conn = getConnection();
		
		int result = new MemberDao().updateAccount(conn, account);
		
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}


	public int changePwd(Member member) {
		Connection conn = getConnection();
		System.out.println("member" + member);
		int result = new MemberDao().changePwd(conn, member);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}


	public int updateGrade(ArrayList<String> userNo, ArrayList<String> Grade) {
		Connection conn=getConnection();
		System.out.println(userNo);
		System.out.println(Grade);
		int result=new MemberDao().updateGrade(conn,userNo, Grade);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}


	public int updateBuyer(ArrayList<String> arr) {
		Connection conn=getConnection();
		System.out.println("서비스에 옴");
		int result=new MemberDao().updateBuyer(conn,arr);
		System.out.println("서비스:"+result);

		if (result > 0) {
			System.out.println("커밋됨");
			commit(conn);
		} else {
			System.out.println("롤백됨");
			rollback(conn);
		}
		close(conn);
		
	
		return result;
	}


	public int updateSeller(ArrayList<String> arr) {
		Connection conn=getConnection();
		System.out.println("서비스에 옴");
		int result=new MemberDao().updateSeller(conn,arr);
		System.out.println("서비스:"+result);

		if (result > 0) {
			System.out.println("커밋됨");
			commit(conn);
		} else {
			System.out.println("롤백됨");
			rollback(conn);
		}
		close(conn);
		
	
		return result;
	}


	public ArrayList<Member> searchMember(String word, int currentPage, int limit) {
		
		Connection conn=getConnection();
		ArrayList<Member> list=new MemberDao().searchMember(conn,word,currentPage,limit);
				
		
		close(conn);
		return list;
	}


	public ArrayList<Seller> searchSellerList(String word, int currentPage, int limit) {
		Connection conn=getConnection();
		ArrayList<Seller> sellerList=new MemberDao().searchSellerList(conn,word,currentPage,limit);
		close(conn);

		return sellerList;
	}


	public int emailCheck(String email) {
		Connection conn = getConnection();
		
		int result = new MemberDao().emailCheck(conn, email);
		
		close(conn);
		
		return result;
	}


	public int memberWithdrawal(String userNo) {
		Connection conn	= getConnection();
		
		int result = new MemberDao().memberWithdrawal(conn, userNo);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}


	public String memberPwd(String userNo) {
		Connection conn	= getConnection();
		String pwd = new MemberDao().memberPwd(conn, userNo);
		
		close(conn);
		
		return pwd;
	}


	public int memberGradeTot(String sUserNo, int rating, String grade) {
		Connection conn	= getConnection();
		
		int result = new MemberDao().memberGradeTot(conn, sUserNo, rating, grade);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}


	public int selectRating(String sUserNo) {
		Connection conn = getConnection();
		
		int result = new MemberDao().selectRating(conn, sUserNo);
		
		close(conn);
		return result;
	}


	

	
	public Member selectMemberInquiary(int board_no) {
		Connection conn =getConnection();
		System.out.println("멤버서비스에서 board_no"+board_no);
		Member member=new MemberDao().selectMemberInquiary(conn,board_no);
		System.out.println("멤버디오 다녀온 후 member"+member);
		return member;
	}


	public Member selectMemberReview(int board_no) {
		Connection conn =getConnection();

		Member member=new MemberDao().selectMemberReview(conn,board_no);

		return member;
	}


	public ArrayList<Member> selectM_ReivewList() {

		Connection conn = getConnection();
		
		ArrayList<Member> mList = new MemberDao().selectM_ReviewList(conn);

		close(conn);
		
		return mList;
	}


	public ArrayList<Member> selectMember(int currentPage, int limit) {
		Connection conn = getConnection();
		
		ArrayList<Member> mList = new MemberDao().selectMember(conn,currentPage,limit);

		close(conn);
		
		return mList;
		
	}



	public Member selectSellerReview(int board_no) {
		Connection conn =getConnection();

		Member seller=new MemberDao().selectSellerReview(conn,board_no);

		return seller;
	}



	public int minusPoint(ArrayList<String> userNo, ArrayList point) {
		Connection conn=getConnection();
		
		int result=new MemberDao().minusPoint(userNo, point,conn);
		
		close(conn);
		return result;
	}



	public ArrayList selectPoint(ArrayList<String> userNo) {
		Connection conn=getConnection();
		
		ArrayList beforeUser=new MemberDao().selectPoint(conn,userNo);
		
		
		close(conn);
		return beforeUser;
	}


	public int plusPoint(ArrayList<String> userNo, ArrayList afterPoint) {
		Connection conn=getConnection();
		
		int result=new MemberDao().plusPoint(userNo, afterPoint,conn);
		
		close(conn);
		return result;
	}


	

	public int selectPB(String bNo) {
		Connection conn = getConnection();
		
		
		int point = new MemberDao().selectPB(bNo, conn);
		close(conn);
		return point;
	}


	public int selectPS(String sNo) {
		Connection conn = getConnection();
		
		int point = new MemberDao().selectPS(sNo, conn);
		
		close(conn);
		return point;
	}


	public ArrayList<Member> searchPoint(String word, int currentPage, int limit) {
		
		Connection conn=getConnection();
		ArrayList<Member> list=new MemberDao().searchPoint(conn,currentPage,limit,word);
	System.out.println("service:"+list);
		close(conn);
		return list;

	}


	public ArrayList<Member> searchTradeListS(int currentPage, int limit, String type, String word) {
		Connection conn=getConnection();
		ArrayList<Member> list=new MemberDao().searchTradeListS(conn,currentPage,limit,word,type);
	System.out.println("service:"+list);
		close(conn);
		return list;
	}


	public ArrayList<Member> searchTradeListB(int currentPage, int limit, String type, String word) {
		Connection conn=getConnection();
		ArrayList<Member> list=new MemberDao().searchTradeListB(conn,currentPage,limit,word,type);
	System.out.println("serviceB:"+list);
		close(conn);
		return list;
	}


	public ArrayList<Member> searchTradeListSaaa(int currentPage, int limit, String type, String word) {
		Connection conn=getConnection();
		ArrayList<Member> list=new MemberDao().searchTradeListSaaa(conn,currentPage,limit,word,type);
	System.out.println("service:"+list);
		close(conn);
		return list;
	}


	public ArrayList<Member> searchTradeListBaaa(int currentPage, int limit, String type, String word) {
		Connection conn=getConnection();
		ArrayList<Member> list=new MemberDao().searchTradeListBaaa(conn,currentPage,limit,word,type);
	System.out.println("serviceB:"+list);
		close(conn);
		return list;
	}


	public int checkAc(String account) {
	      Connection conn = getConnection();
	      
	      int result = new MemberDao().checkAc(conn, account);
	      
	      close(conn);
	      
	      return result;

	}







}


	


