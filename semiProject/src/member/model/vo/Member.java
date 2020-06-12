package member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Member implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8104364992881033083L;
	private int userNo;			// 회원번호
	private String userId;		// 아이디
	private String userPwd;		// 비밀번호
	private String userName;	// 이름
	private int userBirth;		// 생년월일
	private String phone;		// 전화번호
	private String email;		// 이메일
	private int	point;			// 포인트
	private Date enrollDate;	// 가입일
	private Date dropDate;		// 탈퇴일자
	private String status;		// 탈퇴여부
	private String grade;		// 등급
	private int gradeTot;		// 등급 평점
	private String profile;		// 프로필 사진
	private String sellYN;		// 판매자권한
	private String ReviewYN;	// 구매자권한
	
	
	public Member() {
	}
	



	public Member(String userId, String userPwd) {
		this.userId = userId;
		this.userPwd = userPwd;
	}




	public Member(int userNo, String userId, String userPwd, String userName, int userBirth, String phone, String email,
			int point, Date enrollDate, Date dropDate, String status, String grade, int gradeTot, String profile,
			String sellYN, String reviewYN) {
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userBirth = userBirth;
		this.phone = phone;
		this.email = email;
		this.point = point;
		this.enrollDate = enrollDate;
		this.dropDate = dropDate;
		this.status = status;
		this.grade = grade;
		this.gradeTot = gradeTot;
		this.profile = profile;
		this.sellYN = sellYN;
		ReviewYN = reviewYN;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getUserPwd() {
		return userPwd;
	}


	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public int getUserBirth() {
		return userBirth;
	}


	public void setUserBirth(int userBirth) {
		this.userBirth = userBirth;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public int getPoint() {
		return point;
	}


	public void setPoint(int point) {
		this.point = point;
	}


	public Date getEnrollDate() {
		return enrollDate;
	}


	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}


	public Date getDropDate() {
		return dropDate;
	}


	public void setDropDate(Date dropDate) {
		this.dropDate = dropDate;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getGrade() {
		return grade;
	}


	public void setGrade(String grade) {
		this.grade = grade;
	}


	public int getGradeTot() {
		return gradeTot;
	}


	public void setGradeTot(int gradeTot) {
		this.gradeTot = gradeTot;
	}


	public String getProfile() {
		return profile;
	}


	public void setProfile(String profile) {
		this.profile = profile;
	}


	public String getSellYN() {
		return sellYN;
	}


	public void setSellYN(String sellYN) {
		this.sellYN = sellYN;
	}


	public String getReviewYN() {
		return ReviewYN;
	}


	public void setReviewYN(String reviewYN) {
		ReviewYN = reviewYN;
	}


	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", userBirth=" + userBirth + ", phone=" + phone + ", email=" + email + ", point=" + point
				+ ", enrollDate=" + enrollDate + ", dropDate=" + dropDate + ", status=" + status + ", grade=" + grade
				+ ", gradeTot=" + gradeTot + ", profile=" + profile + ", sellYN=" + sellYN + ", ReviewYN=" + ReviewYN
				+ "]";
	}




	
	
	
}
