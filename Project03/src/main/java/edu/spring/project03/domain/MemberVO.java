package edu.spring.project03.domain;

import java.util.Date;

public class MemberVO {
	private int mno;
	private String userid;
	private String pwd;
	private Date joindate;
	private int authority;

	
	public MemberVO() {}
	public MemberVO(int mno, String userid, String pwd, Date joindate, int authority) {
		this.mno = mno;
		this.userid = userid;
		this.pwd = pwd;
		this.joindate = joindate;
		this.authority = authority;
	}

	
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public Date getJoindate() {
		return joindate;
	}
	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}

	public int getAuthority() {
		return authority;
	}
	public void setAuthority(int authority) {
		this.authority = authority;
	}

	
} // end class MemberVO