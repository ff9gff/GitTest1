package edu.spring.project03.domain;

import java.util.Date;

public class ReviewReply {
	
	private int rno;
	private int parentrno;
	private int review_no;
	private int mno;
	private String content;
	private Date regdate;
	
	public ReviewReply() {

	}
	
	public ReviewReply(int rno, int parentrno, int review_no, int mno, String content, Date regdate) {
		this.rno = rno;
		this.parentrno = parentrno;
		this.review_no = review_no;
		this.mno = mno;
		this.content = content;
		this.regdate = regdate;
	}

	public int getParentrno() {
		return parentrno;
	}

	public void setParentno(int parentrno) {
		this.parentrno = parentrno;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public int getReview_no() {
		return review_no;
	}

	public void setReview_no(int review_no) {
		this.review_no = review_no;
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
