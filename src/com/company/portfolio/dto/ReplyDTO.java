package com.company.portfolio.dto;

public class ReplyDTO {
	private int bno;
	private String bname;
	private String bpass;
	private String btitle;
	private String bcontent;
	private String bdate;
	private int bhit;
	private String bip;
	private String bcategory;
	private int bgroup;
	private int bstep;
	private int bindent;
	private String bfile;
	public ReplyDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReplyDTO(int bno, String bname, String bpass, String btitle, String bcontent, String bdate, int bhit,
			String bip, String bcategory, int bgroup, int bstep, int bindent, String bfile) {
		super();
		this.bno = bno;
		this.bname = bname;
		this.bpass = bpass;
		this.btitle = btitle;
		this.bcontent = bcontent;
		this.bdate = bdate;
		this.bhit = bhit;
		this.bip = bip;
		this.bcategory = bcategory;
		this.bgroup = bgroup;
		this.bstep = bstep;
		this.bindent = bindent;
		this.bfile = bfile;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBpass() {
		return bpass;
	}
	public void setBpass(String bpass) {
		this.bpass = bpass;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public int getBhit() {
		return bhit;
	}
	public void setBhit(int bhit) {
		this.bhit = bhit;
	}
	public String getBip() {
		return bip;
	}
	public void setBip(String bip) {
		this.bip = bip;
	}
	public String getBcategory() {
		return bcategory;
	}
	public void setBcategory(String bcategory) {
		this.bcategory = bcategory;
	}
	public int getBgroup() {
		return bgroup;
	}
	public void setBgroup(int bgroup) {
		this.bgroup = bgroup;
	}
	public int getBstep() {
		return bstep;
	}
	public void setBstep(int bstep) {
		this.bstep = bstep;
	}
	public int getBindent() {
		return bindent;
	}
	public void setBindent(int bindent) {
		this.bindent = bindent;
	}
	public String getBfile() {
		return bfile;
	}
	public void setBfile(String bfile) {
		this.bfile = bfile;
	}
	@Override
	public String toString() {
		return "ReplyDTO [bno=" + bno + ", bname=" + bname + ", bpass=" + bpass + ", btitle=" + btitle + ", bcontent="
				+ bcontent + ", bdate=" + bdate + ", bhit=" + bhit + ", bip=" + bip + ", bcategory=" + bcategory
				+ ", bgroup=" + bgroup + ", bstep=" + bstep + ", bindent=" + bindent + ", bfile=" + bfile + "]";
	}
	
}

