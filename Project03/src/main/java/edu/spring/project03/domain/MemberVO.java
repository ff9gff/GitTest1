package edu.spring.project03.domain;

import java.util.Date;

public class MemberVO {
	private int mno;
	private String userid;
	private String pwd;
	private String nickname;
	private Date joindate;
	private int authority;
	
	public MemberVO() {

	}

	public MemberVO(int mno, String userid, String pwd, String nickname, Date joindate, int authority) {
		this.mno = mno;
		this.userid = userid;
		this.pwd = pwd;
		this.nickname = nickname;
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

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
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

}
