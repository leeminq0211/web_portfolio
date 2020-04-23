package com.company.portfolio.dto;

public class ReviewDTO {
	private int rno;
	private String rtitle;
	private String rdetail;
	private String rstar;
	private String rname;
	private String rtype;
	private String rdate;
	private String rpick;
	private int fk_rno;
	public ReviewDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReviewDTO(int rno, String rtitle, String rdetail, String rstar, String rname, String rtype, String rdate,
			String rpick, int fk_rno) {
		super();
		this.rno = rno;
		this.rtitle = rtitle;
		this.rdetail = rdetail;
		this.rstar = rstar;
		this.rname = rname;
		this.rtype = rtype;
		this.rdate = rdate;
		this.rpick = rpick;
		this.fk_rno = fk_rno;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getRtitle() {
		return rtitle;
	}
	public void setRtitle(String rtitle) {
		this.rtitle = rtitle;
	}
	public String getRdetail() {
		return rdetail;
	}
	public void setRdetail(String rdetail) {
		this.rdetail = rdetail;
	}
	public String getRstar() {
		return rstar;
	}
	public void setRstar(String rstar) {
		this.rstar = rstar;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getRtype() {
		return rtype;
	}
	public void setRtype(String rtype) {
		this.rtype = rtype;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getRpick() {
		return rpick;
	}
	public void setRpick(String rpick) {
		this.rpick = rpick;
	}
	public int getFk_rno() {
		return fk_rno;
	}
	public void setFk_rno(int fk_rno) {
		this.fk_rno = fk_rno;
	}
	@Override
	public String toString() {
		return "ReviewDTO [rno=" + rno + ", rtitle=" + rtitle + ", rdetail=" + rdetail + ", rstar=" + rstar + ", rname="
				+ rname + ", rtype=" + rtype + ", rdate=" + rdate + ", rpick=" + rpick + ", fk_rno=" + fk_rno + "]";
	}
	
	
}
