package com.company.portfolio.dto;

import java.util.ArrayList;

public class MainProductDTO {
	private int tno;
	private String ttitle;
	private String timage;
	private int minPrice;
	private int maxPrice;
	private String minDate;
	private String maxDate;
	private float avgReivew;
	private ArrayList<ProductDTO> list;
	public MainProductDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MainProductDTO(int tno, String ttitle, String timage, int minPrice, int maxPrice, String minDate,
			String maxDate, float avgReivew, ArrayList<ProductDTO> list) {
		super();
		this.tno = tno;
		this.ttitle = ttitle;
		this.timage = timage;
		this.minPrice = minPrice;
		this.maxPrice = maxPrice;
		this.minDate = minDate;
		this.maxDate = maxDate;
		this.avgReivew = avgReivew;
		this.list = list;
	}
	public int getTno() {
		return tno;
	}
	public void setTno(int tno) {
		this.tno = tno;
	}
	public String getTtitle() {
		return ttitle;
	}
	public void setTtitle(String ttitle) {
		this.ttitle = ttitle;
	}
	public String getTimage() {
		return timage;
	}
	public void setTimage(String timage) {
		this.timage = timage;
	}
	public int getMinPrice() {
		return minPrice;
	}
	public void setMinPrice(int minPrice) {
		this.minPrice = minPrice;
	}
	public int getMaxPrice() {
		return maxPrice;
	}
	public void setMaxPrice(int maxPrice) {
		this.maxPrice = maxPrice;
	}
	public String getMinDate() {
		return minDate;
	}
	public void setMinDate(String minDate) {
		this.minDate = minDate;
	}
	public String getMaxDate() {
		return maxDate;
	}
	public void setMaxDate(String maxDate) {
		this.maxDate = maxDate;
	}
	public float getAvgReivew() {
		return avgReivew;
	}
	public void setAvgReivew(float avgReivew) {
		this.avgReivew = avgReivew;
	}
	public ArrayList<ProductDTO> getList() {
		return list;
	}
	public void setList(ArrayList<ProductDTO> list) {
		this.list = list;
	}
	@Override
	public String toString() {
		return "MainProductDTO [tno=" + tno + ", ttitle=" + ttitle + ", timage=" + timage + ", minPrice=" + minPrice
				+ ", maxPrice=" + maxPrice + ", minDate=" + minDate + ", maxDate=" + maxDate + ", avgReivew="
				+ avgReivew + ", list=" + list + "]";
	}
	
}
