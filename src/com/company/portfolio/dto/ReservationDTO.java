package com.company.portfolio.dto;

public class ReservationDTO {
	private int rno;
	private String rdate;
	private int adultCnt;
	private int chdCnt;
	private int infCnt;
	private int dsit;
	private int dprice;
	private int fk_dno;
	private String fk_mid;
	private int tno;
	private String ttitle;
	private String timage;
	public ReservationDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReservationDTO(int rno, String rdate, int adultCnt, int chdCnt, int infCnt, int dsit, int dprice, int fk_dno,
			String fk_mid, int tno, String ttitle, String timage) {
		super();
		this.rno = rno;
		this.rdate = rdate;
		this.adultCnt = adultCnt;
		this.chdCnt = chdCnt;
		this.infCnt = infCnt;
		this.dsit = dsit;
		this.dprice = dprice;
		this.fk_dno = fk_dno;
		this.fk_mid = fk_mid;
		this.tno = tno;
		this.ttitle = ttitle;
		this.timage = timage;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public int getAdultCnt() {
		return adultCnt;
	}
	public void setAdultCnt(int adultCnt) {
		this.adultCnt = adultCnt;
	}
	public int getChdCnt() {
		return chdCnt;
	}
	public void setChdCnt(int chdCnt) {
		this.chdCnt = chdCnt;
	}
	public int getInfCnt() {
		return infCnt;
	}
	public void setInfCnt(int infCnt) {
		this.infCnt = infCnt;
	}
	public int getDsit() {
		return dsit;
	}
	public void setDsit(int dsit) {
		this.dsit = dsit;
	}
	public int getDprice() {
		return dprice;
	}
	public void setDprice(int dprice) {
		this.dprice = dprice;
	}
	public int getFk_dno() {
		return fk_dno;
	}
	public void setFk_dno(int fk_dno) {
		this.fk_dno = fk_dno;
	}
	public String getFk_mid() {
		return fk_mid;
	}
	public void setFk_mid(String fk_mid) {
		this.fk_mid = fk_mid;
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
	@Override
	public String toString() {
		return "ReservationDTO [rno=" + rno + ", rdate=" + rdate + ", adultCnt=" + adultCnt + ", chdCnt=" + chdCnt
				+ ", infCnt=" + infCnt + ", dsit=" + dsit + ", dprice=" + dprice + ", fk_dno=" + fk_dno + ", fk_mid="
				+ fk_mid + ", tno=" + tno + ", ttitle=" + ttitle + ", timage=" + timage + "]";
	}
}
