package com.company.portfolio.dto;

public class MemberDTO {
	private int mno;
	private String mid;
	private String mname;
	private String mpass;
	private String memail;
	private String mdate;
	private String mip;
	public MemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberDTO(int mno, String mid, String mname, String mpass, String memail, String mdate, String mip) {
		super();
		this.mno = mno;
		this.mid = mid;
		this.mname = mname;
		this.mpass = mpass;
		this.memail = memail;
		this.mdate = mdate;
		this.mip = mip;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMpass() {
		return mpass;
	}
	public void setMpass(String mpass) {
		this.mpass = mpass;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	public String getMip() {
		return mip;
	}
	public void setMip(String mip) {
		this.mip = mip;
	}
	@Override
	public String toString() {
		return "MemberDTO [mno=" + mno + ", mid=" + mid + ", mname=" + mname + ", mpass=" + mpass + ", memail=" + memail
				+ ", mdate=" + mdate + ", mip=" + mip + "]";
	}
}
