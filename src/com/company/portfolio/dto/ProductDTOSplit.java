package com.company.portfolio.dto;

public class ProductDTOSplit {
/*
dname 상품세부명
ddtail1_1 여행설명
ddtail1_2 여행이미지
ddtail2_1 미팅일시
ddtail2_2 미팅장소
ddtail2_3 호텔이름
ddtail2_4 포함사항			
ddtail2_5 불포함사항		
ddtail2_6 전달사항				
ddtail3_1 상세설명	 	
ddtail3_2 상세설명이미지	 	
dcategory 카테고리
ddate_1 여행기간(시작일)
ddate_2 여행기간(종료일)
dair_1 출발공항
dair_2 도착공항
dair_3 출발항공
dair_4 도착항공
dcity_1 주요방문도시
dcity_2 나라
dcity_3 대륙
dsit 남은좌석
dprice 가격
fk_dno
 */
	private int dno;
	private String dname;
	private String ddtail1_1;
	private String ddtail1_2;
	private String ddtail2_1;
	private String ddtail2_2;
	private String ddtail2_3;
	private String ddtail2_4;
	private String ddtail2_5;
	private String ddtail2_6;
	private String ddtail3_1;
	private String ddtail3_2;
	private String dcategory;
	private String ddate_1;
	private String ddate_2;
	private String dair_1;
	private String dair_2;
	private String dair_3;
	private String dair_4;
	private String dcity_1;
	private String dcity_2;
	private String dcity_3;
	private int dsit;
	private int dprice;
	private int fk_dno;
	public ProductDTOSplit() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProductDTOSplit(int dno, String dname, String ddtail1_1, String ddtail1_2, String ddtail2_1,
			String ddtail2_2, String ddtail2_3, String ddtail2_4, String ddtail2_5, String ddtail2_6, String ddtail3_1,
			String ddtail3_2, String dcategory, String ddate_1, String ddate_2, String dair_1, String dair_2,
			String dair_3, String dair_4, String dcity_1, String dcity_2, String dcity_3, int dsit, int dprice,
			int fk_dno) {
		super();
		this.dno = dno;
		this.dname = dname;
		this.ddtail1_1 = ddtail1_1;
		this.ddtail1_2 = ddtail1_2;
		this.ddtail2_1 = ddtail2_1;
		this.ddtail2_2 = ddtail2_2;
		this.ddtail2_3 = ddtail2_3;
		this.ddtail2_4 = ddtail2_4;
		this.ddtail2_5 = ddtail2_5;
		this.ddtail2_6 = ddtail2_6;
		this.ddtail3_1 = ddtail3_1;
		this.ddtail3_2 = ddtail3_2;
		this.dcategory = dcategory;
		this.ddate_1 = ddate_1;
		this.ddate_2 = ddate_2;
		this.dair_1 = dair_1;
		this.dair_2 = dair_2;
		this.dair_3 = dair_3;
		this.dair_4 = dair_4;
		this.dcity_1 = dcity_1;
		this.dcity_2 = dcity_2;
		this.dcity_3 = dcity_3;
		this.dsit = dsit;
		this.dprice = dprice;
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
	public String getDdtail1_1() {
		return ddtail1_1;
	}
	public void setDdtail1_1(String ddtail1_1) {
		this.ddtail1_1 = ddtail1_1;
	}
	public String getDdtail1_2() {
		return ddtail1_2;
	}
	public void setDdtail1_2(String ddtail1_2) {
		this.ddtail1_2 = ddtail1_2;
	}
	public String getDdtail2_1() {
		return ddtail2_1;
	}
	public void setDdtail2_1(String ddtail2_1) {
		this.ddtail2_1 = ddtail2_1;
	}
	public String getDdtail2_2() {
		return ddtail2_2;
	}
	public void setDdtail2_2(String ddtail2_2) {
		this.ddtail2_2 = ddtail2_2;
	}
	public String getDdtail2_3() {
		return ddtail2_3;
	}
	public void setDdtail2_3(String ddtail2_3) {
		this.ddtail2_3 = ddtail2_3;
	}
	public String getDdtail2_4() {
		return ddtail2_4;
	}
	public void setDdtail2_4(String ddtail2_4) {
		this.ddtail2_4 = ddtail2_4;
	}
	public String getDdtail2_5() {
		return ddtail2_5;
	}
	public void setDdtail2_5(String ddtail2_5) {
		this.ddtail2_5 = ddtail2_5;
	}
	public String getDdtail2_6() {
		return ddtail2_6;
	}
	public void setDdtail2_6(String ddtail2_6) {
		this.ddtail2_6 = ddtail2_6;
	}
	public String getDdtail3_1() {
		return ddtail3_1;
	}
	public void setDdtail3_1(String ddtail3_1) {
		this.ddtail3_1 = ddtail3_1;
	}
	public String getDdtail3_2() {
		return ddtail3_2;
	}
	public void setDdtail3_2(String ddtail3_2) {
		this.ddtail3_2 = ddtail3_2;
	}
	public String getDcategory() {
		return dcategory;
	}
	public void setDcategory(String dcategory) {
		this.dcategory = dcategory;
	}
	public String getDdate_1() {
		return ddate_1;
	}
	public void setDdate_1(String ddate_1) {
		this.ddate_1 = ddate_1;
	}
	public String getDdate_2() {
		return ddate_2;
	}
	public void setDdate_2(String ddate_2) {
		this.ddate_2 = ddate_2;
	}
	public String getDair_1() {
		return dair_1;
	}
	public void setDair_1(String dair_1) {
		this.dair_1 = dair_1;
	}
	public String getDair_2() {
		return dair_2;
	}
	public void setDair_2(String dair_2) {
		this.dair_2 = dair_2;
	}
	public String getDair_3() {
		return dair_3;
	}
	public void setDair_3(String dair_3) {
		this.dair_3 = dair_3;
	}
	public String getDair_4() {
		return dair_4;
	}
	public void setDair_4(String dair_4) {
		this.dair_4 = dair_4;
	}
	public String getDcity_1() {
		return dcity_1;
	}
	public void setDcity_1(String dcity_1) {
		this.dcity_1 = dcity_1;
	}
	public String getDcity_2() {
		return dcity_2;
	}
	public void setDcity_2(String dcity_2) {
		this.dcity_2 = dcity_2;
	}
	public String getDcity_3() {
		return dcity_3;
	}
	public void setDcity_3(String dcity_3) {
		this.dcity_3 = dcity_3;
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
	@Override
	public String toString() {
		return "ProductDTOSplit [dno=" + dno + ", dname=" + dname + ", ddtail1_1=" + ddtail1_1 + ", ddtail1_2="
				+ ddtail1_2 + ", ddtail2_1=" + ddtail2_1 + ", ddtail2_2=" + ddtail2_2 + ", ddtail2_3=" + ddtail2_3
				+ ", ddtail2_4=" + ddtail2_4 + ", ddtail2_5=" + ddtail2_5 + ", ddtail2_6=" + ddtail2_6 + ", ddtail3_1="
				+ ddtail3_1 + ", ddtail3_2=" + ddtail3_2 + ", dcategory=" + dcategory + ", ddate_1=" + ddate_1
				+ ", ddate_2=" + ddate_2 + ", dair_1=" + dair_1 + ", dair_2=" + dair_2 + ", dair_3=" + dair_3
				+ ", dair_4=" + dair_4 + ", dcity_1=" + dcity_1 + ", dcity_2=" + dcity_2 + ", dcity_3=" + dcity_3
				+ ", dsit=" + dsit + ", dprice=" + dprice + ", fk_dno=" + fk_dno + "]";
	}
}
