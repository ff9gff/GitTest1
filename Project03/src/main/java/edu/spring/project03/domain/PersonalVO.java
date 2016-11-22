package edu.spring.project03.domain;

import java.util.Date;

public class PersonalVO {

	private int mno;
	private String name;
	private int sex;
	private int age;
	private String nickname;
	private String phone;
	private String address;
	private String introduce;
	private String email;
	private Date joindate;

	public PersonalVO() {}
	/*	this.mno = mno;
		this.userid = userid;
		this.pwd = pwd;
		this.authority = authority;*/
	public PersonalVO(MemberVO vo,String email, Date joindate){
		this.email = email;
		this.joindate = joindate;
	}
	public PersonalVO(int mno, String name, int sex, int age, String nickname, String phone, String address,
			String introduce, String email, Date joindate) {
		this.mno = mno;
		this.name = name;
		this.sex = sex;
		this.age = age;
		this.nickname = nickname;
		this.phone = phone;
		this.address = address;
		this.introduce = introduce;
		this.email = email;
		this.joindate = joindate;
	}
	
	public PersonalVO(String name, int sex, int age, String nickname, String introduce){
		this.name = name;
		this.sex = sex;
		this.age = age;
		this.nickname = nickname;
		this.introduce = introduce;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getJoindate() {
		return joindate;
	}

	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}

} // end class PersonalVO