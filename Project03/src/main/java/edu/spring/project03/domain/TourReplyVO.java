package edu.spring.project03.domain;

import java.util.Date;

public class TourReplyVO {
	
	private int rno;
	private int trip_no;
	private int mno;
	private String content;
	private Date regdate;
	
	public TourReplyVO() {
		
	}

	public TourReplyVO(int rno, int trip_no, int mno, String content, Date regdate) {
		this.rno = rno;
		this.trip_no = trip_no;
		this.mno = mno;
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

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
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
