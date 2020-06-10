package member.model.service;

import static common.JDBCTemplate.*;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;

import member.model.dao.MemberDao;
import member.model.vo.Member;

public class MemberService {

	public Member loginMember(Member member) {
		Connection conn = getConnection();
		
		Member loginUser = new MemberDao().loginMember(conn, member);
		
		close(conn);
		
		return loginUser;
	}

<<<<<<< HEAD
	public int loginCheck(String userId, String userPwd) {
		
		Connection conn = getConnection();
		
		int result = new MemberDao().idCheck(conn, userId, userPwd);
		
		close(conn);
		
		return result;
	}
=======
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

	
>>>>>>> refs/remotes/origin/master

}
