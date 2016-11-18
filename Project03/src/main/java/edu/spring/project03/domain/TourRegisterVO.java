package edu.spring.project03.domain;

import java.util.Date;

public class TourRegisterVO {
	
	private int trip_no; // 여행 모집 게시글 번호 
	private int mno; // 회원 번호
	private String title;
	private int contidion_sex;
	private int contidion_age;
	private String content;
	private Date regdate;
	private String start_date;
	private String end_date;
	private int expire; // 모집 마감 여부
	
	public TourRegisterVO() {

	}

	public TourRegisterVO(int trip_no, int mno, String title, int contidion_sex, int contidion_age, String content,
			Date regdate, String start_date, String end_date, int expire) {
		this.trip_no = trip_no;
		this.mno = mno;
		this.title = title;
		this.contidion_sex = contidion_sex;
		this.contidion_age = contidion_age;
		this.content = content;
		this.regdate = regdate;
		this.start_date = start_date;
		this.end_date = end_date;
		this.expire = expire;
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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getContidion_sex() {
		return contidion_sex;
	}

	public void setContidion_sex(int contidion_sex) {
		this.contidion_sex = contidion_sex;
	}

	public int getContidion_age() {
		return contidion_age;
	}

	public void setContidion_age(int contidion_age) {
		this.contidion_age = contidion_age;
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

	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public int getExpire() {
		return expire;
	}

	public void setExpire(int expire) {
		this.expire = expire;
	}

}
