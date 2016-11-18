package edu.spring.project03.domain;

public class LikeVO {
	
	private int like_no;
	private int mno;
	private int review_no;
	
	public LikeVO() {
		
	}

	public LikeVO(int like_no, int mno, int review_no) {
		this.like_no = like_no;
		this.mno = mno;
		this.review_no = review_no;
	}

	public int getLike_no() {
		return like_no;
	}

	public void setLike_no(int like_no) {
		this.like_no = like_no;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public int getReview_no() {
		return review_no;
	}

	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}
	
}
