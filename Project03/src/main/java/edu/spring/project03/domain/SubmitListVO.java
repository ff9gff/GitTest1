package edu.spring.project03.domain;

public class SubmitListVO {
	
	private int trip_no;
	private int list_no;
	private String userid;
	private int approval;
	
	public SubmitListVO() {
		super();
	}

	public SubmitListVO(int trip_no, int list_no, String userid, int approval) {
		this.trip_no = trip_no;
		this.list_no = list_no;
		this.userid = userid;
		this.approval = approval;
	}

	public int getTrip_no() {
		return trip_no;
	}

	public void setTrip_no(int trip_no) {
		this.trip_no = trip_no;
	}

	public int getList_no() {
		return list_no;
	}

	public void setList_no(int list_no) {
		this.list_no = list_no;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getApproval() {
		return approval;
	}

	public void setApproval(int approval) {
		this.approval = approval;
	}
	
	
	
	
	
	

}
