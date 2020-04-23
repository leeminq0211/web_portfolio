package com.company.portfolio.dto;

public class ProductDTO {
	private int dno;
	private String dname;
	private String ddtail1;
	private String ddtail2;
	private String ddtail3;
	private String dcategory;
	private String ddate;
	private String dair;
	private String dcity;
	private int dsit;
	private int dprice;
	private int ddates;
	private int fk_dno;
	public ProductDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProductDTO(int dno, String dname, String ddtail1, String ddtail2, String ddtail3, String dcategory,
			String ddate, String dair, String dcity, int dsit, int dprice, int ddates, int fk_dno) {
		super();
		this.dno = dno;
		this.dname = dname;
		this.ddtail1 = ddtail1;
		this.ddtail2 = ddtail2;
		this.ddtail3 = ddtail3;
		this.dcategory = dcategory;
		this.ddate = ddate;
		this.dair = dair;
		this.dcity = dcity;
		this.dsit = dsit;
		this.dprice = dprice;
		this.ddates = ddates;
		this.fk_dno = fk_dno;
	}
	public int getDno() {
		return dno;
	}
	public void setDno(int dno) {
		this.dno = dno;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getDdtail1() {
		return ddtail1;
	}
	public void setDdtail1(String ddtail1) {
		this.ddtail1 = ddtail1;
	}
	public String getDdtail2() {
		return ddtail2;
	}
	public void setDdtail2(String ddtail2) {
		this.ddtail2 = ddtail2;
	}
	public String getDdtail3() {
		return ddtail3;
	}
	public void setDdtail3(String ddtail3) {
		this.ddtail3 = ddtail3;
	}
	public String getDcategory() {
		return dcategory;
	}
	public void setDcategory(String dcategory) {
		this.dcategory = dcategory;
	}
	public String getDdate() {
		return ddate;
	}
	public void setDdate(String ddate) {
		this.ddate = ddate;
	}
	public String getDair() {
		return dair;
	}
	public void setDair(String dair) {
		this.dair = dair;
	}
	public String getDcity() {
		return dcity;
	}
	public void setDcity(String dcity) {
		this.dcity = dcity;
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
	public int getDdates() {
		return ddates;
	}
	public void setDdates(int ddates) {
		this.ddates = ddates;
	}
	public int getFk_dno() {
		return fk_dno;
	}
	public void setFk_dno(int fk_dno) {
		this.fk_dno = fk_dno;
	}
	@Override
	public String toString() {
		return "ProductDTO [dno=" + dno + ", dname=" + dname + ", ddtail1=" + ddtail1 + ", ddtail2=" + ddtail2
				+ ", ddtail3=" + ddtail3 + ", dcategory=" + dcategory + ", ddate=" + ddate + ", dair=" + dair
				+ ", dcity=" + dcity + ", dsit=" + dsit + ", dprice=" + dprice + ", ddates=" + ddates + ", fk_dno="
				+ fk_dno + "]";
	}
	
	
}