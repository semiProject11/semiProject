
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


	public ArrayList<Member> selectGradeList() {
		Connection conn=getConnection();
		ArrayList<Member> gradeList=new MemberDao().selectGradeList(conn);
	
		close(conn);
		return gradeList;
		
	}


	public ArrayList<Seller> selectSellerList() {
		Connection conn=getConnection();
		ArrayList<Seller> sellerList=new MemberDao().selectSellerList(conn);
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
		
		if(result>0 && result2>0 && result3>0 && result4>0) {
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



	public ArrayList<Member> selectTradeListS() {
		Connection conn = getConnection();
		
		ArrayList<Member> memberList = new MemberDao().selectTradeS(conn);
		
	
		close(conn);
		
		return memberList;
	}


	public ArrayList<Member> selectTradeListB() {
		Connection conn = getConnection();
		
		ArrayList<Member> memberList = new MemberDao().selectTradeB(conn);
		
	
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


	public int updateGrade(ArrayList<String> arr) {
		Connection conn=getConnection();
		int result=new MemberDao().updateGrade(conn,arr);
		
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


	public ArrayList<Member> searchMember(String word) {
		
		Connection conn=getConnection();
		ArrayList<Member> list=new MemberDao().searchMember(conn,word);
				
		
		close(conn);
		return list;
	}


	public ArrayList<Seller> searchSellerList(String word) {
		Connection conn=getConnection();
		ArrayList<Seller> sellerList=new MemberDao().searchSellerList(conn,word);
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


	public int memberGradeTot(String sUserNo, int rating) {
		Connection conn	= getConnection();
		
		int result = new MemberDao().memberGradeTot(conn, sUserNo, rating);
		
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

}


	


