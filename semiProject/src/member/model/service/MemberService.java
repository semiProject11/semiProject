<<<<<<< HEAD
package member.model.service;

import static common.JDBCTemplate.*;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import member.model.dao.MemberDao;
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
		
		
		if(count > 0) {
			commit(conn);
		}else {
			rollback(conn);			
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
		
		if(fileName.isEmpty()) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
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
=======
package member.model.service;
>>>>>>> refs/remotes/origin/master

<<<<<<< HEAD

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


	public int chargeMoney(int userNo, int chMoney) {
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


	public int selectMemberPoint(int userNo) {
		Connection conn = getConnection();
		
		int result = new MemberDao().selectMemberPoint(conn, userNo);
		
		close(conn);
		
		return result;
	}





	public int updateGrade(String[] gradeChange) {
	
		Connection conn=getConnection();
		
		int result=new MemberDao().updateGrade(conn, gradeChange);
		
		
		return result;
	}

=======
import static common.JDBCTemplate.*;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;
>>>>>>> refs/remotes/origin/master

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


	public int chargeMoney(int userNo, int chMoney) {
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


	public int selectMemberPoint(int userNo) {
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
		
		if(result>0 && result2>0) {
			commit(conn);	
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public Account selectAccount(int userNo) {
		Connection conn = getConnection();
		
		Account account = new MemberDao().selectAccount(conn, userNo);
		
	
		close(conn);
		
		return account;

	}


}


	


