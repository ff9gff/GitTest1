package edu.spring.project03.domain;

public class ImgVO {
	
	private int board_type;
	private int content_no;
	private int photo_no;
	private String img_file;
	
	public ImgVO() {
		
	}

	public ImgVO(int board_type, int content_no, int photo_no, String img_file) {
		this.board_type = board_type;
		this.content_no = content_no;
		this.photo_no = photo_no;
		this.img_file = img_file;
	}

	public int getBoard_type() {
		return board_type;
	}

	public void setBoard_type(int board_type) {
		this.board_type = board_type;
	}

	public int getContent_no() {
		return content_no;
	}

	public void setContent_no(int content_no) {
		this.content_no = content_no;
	}

	public int getPhoto_no() {
		return photo_no;
	}

	public void setPhoto_no(int photo_no) {
		this.photo_no = photo_no;
	}

	public String getImg_file() {
		return img_file;
	}

	public void setImg_file(String img_file) {
		this.img_file = img_file;
	}

}
