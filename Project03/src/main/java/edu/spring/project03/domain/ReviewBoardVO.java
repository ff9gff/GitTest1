package edu.spring.project03.domain;

import java.util.Date;

public class ReviewBoardVO {
	
	private int review_no;
	private String title;
	private String content;
	private String userid;
	private int like;
	private int totalview;
	private Date regdate;
	
	public ReviewBoardVO() {
		
	}

	public ReviewBoardVO(int review_no, String title, String content, String userid, int like, int totalview,
			Date regdate) {
		this.review_no = review_no;
		this.title = title;
		this.content = content;
		this.userid = userid;
		this.like = like;
		this.totalview = totalview;
		this.regdate = regdate;
	}

	public int getReview_no() {
		return review_no;
	}

	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getLike() {
		return like;
	}

	public void setLike(int like) {
		this.like = like;
	}

	public int getTotalview() {
		return totalview;
	}

	public void setTotalview(int totalview) {
		this.totalview = totalview;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

}
