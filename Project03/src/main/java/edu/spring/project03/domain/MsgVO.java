package edu.spring.project03.domain;

import java.util.Date;

public class MsgVO {
	
	private String userid;
	private String content;
	private Date msg_date;
	
	public MsgVO() {
	
	}

	public MsgVO(String userid, String content, Date msg_date) {
		this.userid = userid;
		this.content = content;
		this.msg_date = msg_date;
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

	public Date getMsg_date() {
		return msg_date;
	}

	public void setMsg_date(Date msg_date) {
		this.msg_date = msg_date;
	}
	
}
