package edu.spring.project03.domain;

import java.util.Date;

public class ReplyBoardVO {
	
	private int rno;
	private int trip_no;
	private String userid;
	private String content;
	private Date regdate;
	
	public ReplyBoardVO() {
		super();
	}

	public ReplyBoardVO(int rno, int trip_no, String userid, String content, Date regdate) {
		this.rno = rno;
		this.trip_no = trip_no;
		this.userid = userid;
		this.content = content;
		this.regdate = regdate;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public int getTrip_no() {
		return trip_no;
	}

	public void setTrip_no(int trip_no) {
		this.trip_no = trip_no;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	
}
