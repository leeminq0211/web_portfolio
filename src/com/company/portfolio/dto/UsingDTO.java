package com.company.portfolio.dto;

public class UsingDTO {
	private int no;
	private String category;
	private String title;
	private String content;
	private String date;
	private String file;
	
	public UsingDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UsingDTO(int no, String category, String title, String content,String date,String file) {
		super();
		this.no = no;
		this.category = category;
		this.title = title;
		this.content = content;
		this.date = date;
		this.file = file;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	@Override
	public String toString() {
		return "UsingDTO [no=" + no + ", category=" + category + ", title=" + title + ", content=" + content + ", date=" + date + ", file=" + file + "]";
	}
}
