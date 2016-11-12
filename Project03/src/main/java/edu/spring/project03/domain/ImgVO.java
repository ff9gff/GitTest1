package edu.spring.project03.domain;

public class ImgVO {
	
	private String type; // 게시판 종류
	private int no; // 종류에 따른 게시글 번호
	private String img_url;
	
	public ImgVO() {
		
	}

	public ImgVO(String type, int no, String img_url) {
		this.type = type;
		this.no = no;
		this.img_url = img_url;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getImg_url() {
		return img_url;
	}

	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}

}
