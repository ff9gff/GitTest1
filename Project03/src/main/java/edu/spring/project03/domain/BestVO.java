package edu.spring.project03.domain;

public class BestVO {
	
	private int best_no;
	private int mno;
	private int review_no;
	
	public BestVO() {}
	public BestVO(int best_no, int mno, int review_no) {		
		this.best_no = best_no;
		this.mno = mno;
		this.review_no = review_no;
	}
	
	public int getBest_no() {
		return best_no;
	}
	public void setBest_no(int best_no) {
		this.best_no = best_no;
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
	
	
} // end class BestVO