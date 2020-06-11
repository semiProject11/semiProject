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

	

}
