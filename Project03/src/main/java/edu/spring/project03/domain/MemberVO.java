package edu.spring.project03.domain;

public class MemberVO {
	private int mno;
	private String userid;
	private String pwd;
	private String nickname;
	private int authority;
	
	public MemberVO() {

	}

	public MemberVO(int mno, String userid, String pwd, String nickname, int authority) {
		this.mno = mno;
		this.userid = userid;
		this.pwd = pwd;
		this.nickname = nickname;
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

	public int getAuthority() {
		return authority;
	}

	public void setAuthority(int authority) {
		this.authority = authority;
	}
}
