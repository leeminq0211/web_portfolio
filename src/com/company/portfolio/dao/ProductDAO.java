package com.company.portfolio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.company.portfolio.dbmanager.DBManager;
import com.company.portfolio.dto.MainProductDTO;
import com.company.portfolio.dto.ProductDTO;
import com.company.portfolio.dto.ProductDTOSplit;
import com.company.portfolio.dto.ReplyDTO;
import com.company.portfolio.dto.ReservationDTO;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;


public class ProductDAO {
	public int write(ProductDTO dto) {
		Connection conn=null;PreparedStatement pstmt=null;
		int result=0;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			System.out.println("확인:"+dto);
			pstmt = conn.prepareStatement("insert into tdetail (dname , ddtail1, ddtail2 ,ddtail3 , dcategory, ddate ,dair, dcity , dsit , dprice , fk_dno) values ( ?, ? , ?, ? , ? ,?, ? , ? , ? , ? ,? )");
			System.out.println("성공");
			
			pstmt.setString(1, dto.getDname());
			pstmt.setString(2, dto.getDdtail1());
			pstmt.setString(3, dto.getDdtail2());
			pstmt.setString(4, dto.getDdtail3());
			pstmt.setString(5, dto.getDcategory());
			//dto.getDcategory()
			pstmt.setString(6, dto.getDdate());
			pstmt.setString(7, dto.getDair());
			pstmt.setString(8, dto.getDcity());
			pstmt.setInt(9, dto.getDsit());
			pstmt.setInt(10, dto.getDprice());
			pstmt.setInt(11, dto.getFk_dno());
			System.out.println("시작:"+dto);
			result = pstmt.executeUpdate();
			System.out.println("성공");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return result;
	}
	public int writeMain(MainProductDTO dto) {
		Connection conn=null;PreparedStatement pstmt=null;
		int result=0;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			System.out.println("확인:"+dto);
			/*
			tno int not null auto_increment primary key,
			ttitle varchar(100) not null,
			timage varchar(20)
			 */
			pstmt = conn.prepareStatement("insert into tmain (ttitle,timage) values ( ?, ?)");
			System.out.println("성공");
			pstmt.setString(1, dto.getTtitle());
			pstmt.setString(2, dto.getTimage());
			System.out.println("시작:"+dto);
			result = pstmt.executeUpdate();
			System.out.println("성공");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return result;
	}
	public ArrayList<MainProductDTO> listMain() {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset=null;
		ArrayList<MainProductDTO> list = new ArrayList<MainProductDTO>();
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			System.out.println("확인");
			pstmt = conn.prepareStatement("select a.tno tno, a.ttitle ttitle, a.timage timage, min(b.dprice) minprice,max(b.dprice) maxprice, min(substring_index(ddate, '|||', 1)) mindate, max(substring_index(ddate, '|||', -1)) maxdate from tmain a join tdetail b on a.tno = b.fk_dno group by a.tno");
			rset = pstmt.executeQuery();
			while(rset.next()) {
				//minPrice maxPrice minDate maxDate
				MainProductDTO dto = new MainProductDTO();
				dto.setTno(rset.getInt("tno"));
				dto.setTimage(rset.getString("timage"));
				dto.setTtitle(rset.getString("ttitle"));
				dto.setMinPrice(rset.getInt("minPrice"));
				dto.setMaxPrice(rset.getInt("maxPrice"));
				dto.setMinDate(rset.getString("minDate"));
				dto.setMaxDate(rset.getString("maxDate"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return list;
	}
	public ArrayList<MainProductDTO> listMain(String where,int month,String order) {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset=null;
		ArrayList<MainProductDTO> list = new ArrayList<MainProductDTO>();
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			System.out.println("확인");
			pstmt = conn.prepareStatement("select a.tno tno, a.ttitle ttitle, a.timage timage, min(b.dprice) minprice,max(b.dprice) maxprice, min(substring_index(ddate, '|||', 1)) mindate, max(substring_index(ddate, '|||', -1)) maxdate from tmain a join tdetail b on a.tno = b.fk_dno where substring_index(dcity, '|||', -1)=? group by a.tno");
			pstmt.setString(1, where);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				//minPrice maxPrice minDate maxDate
				MainProductDTO dto = new MainProductDTO();
				dto.setTno(rset.getInt("tno"));
				dto.setTimage(rset.getString("timage"));
				dto.setTtitle(rset.getString("ttitle"));
				dto.setMinPrice(rset.getInt("minPrice"));
				dto.setMaxPrice(rset.getInt("maxPrice"));
				dto.setMinDate(rset.getString("minDate"));
				dto.setMaxDate(rset.getString("maxDate"));
				dto.setAvgReivew(new ReviewDAO().avgStra(rset.getInt("tno")));
				dto.setList(new ProductDAO().listProduct(rset.getInt("tno"),month,order));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return list;
	}
	public ArrayList<ProductDTO> listProduct(int fk_dno,int month,String order) {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset=null;
		ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			System.out.println("확인");
			pstmt = conn.prepareStatement("select dno, dname, ddtail1, ddtail2, ddtail3, dcategory, ddate, dair, dcity, dsit, dprice, fk_dno,TO_DAYS(substring_index(ddate, '|||', -1))-TO_DAYS(substring_index(ddate, '|||', 1)) ddates from tdetail where fk_dno=? and right(substring_index(substring_index(ddate, '|||', 1), '-', 2),2)=(select month(sysdate()- INTERVAL ? MONTH) from dual) order by "+order);
			pstmt.setInt(1, fk_dno);
			pstmt.setInt(2, month);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				//dno; dname; ddtail1; ddtail2; ddtail3; dcategory; ddate; dair; dcity; dsit; dprice; fk_dno;
				ProductDTO dto = new ProductDTO();
				dto.setDno(rset.getInt("dno"));
				dto.setDname(rset.getString("dname"));
				dto.setDdtail1(rset.getString("ddtail1"));
				dto.setDdtail2(rset.getString("ddtail2"));
				dto.setDdtail3(rset.getString("ddtail3"));
				dto.setDcategory(rset.getString("dcategory"));
				dto.setDdate(rset.getString("ddate"));
				dto.setDair(rset.getString("dair"));
				dto.setDcity(rset.getString("dcity"));
				dto.setDsit(rset.getInt("dsit"));
				dto.setDprice(rset.getInt("dprice"));
				dto.setFk_dno(rset.getInt("fk_dno"));
				dto.setDdates(rset.getInt("ddates"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return list;
	}
	public ArrayList<MainProductDTO> listMainSearch(String searching,int month,String order) {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset=null;
		ArrayList<MainProductDTO> list = new ArrayList<MainProductDTO>();
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			System.out.println("확인");
			pstmt = conn.prepareStatement("select a.tno tno, a.ttitle ttitle, a.timage timage, min(b.dprice) minprice,max(b.dprice) maxprice, min(substring_index(ddate, '|||', 1)) mindate, max(substring_index(ddate, '|||', -1)) maxdate from tmain a join tdetail b on a.tno = b.fk_dno where instr(lower(replace(ddtail1,' ','')),lower(replace(?,' ',''))) or instr(lower(replace(dname,' ','')),lower(replace(?,' ',''))) or instr(lower(replace(ddtail2,' ','')),lower(replace(?,' ',''))) or instr(lower(replace(ddtail3,' ','')),lower(replace(?,' ',''))) or instr(lower(replace(dcity,' ','')),lower(replace(?,' ',''))) group by a.tno");
			pstmt.setString(1, searching);
			pstmt.setString(2, searching);
			pstmt.setString(3, searching);
			pstmt.setString(4, searching);
			pstmt.setString(5, searching);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				//minPrice maxPrice minDate maxDate
				MainProductDTO dto = new MainProductDTO();
				dto.setTno(rset.getInt("tno"));
				dto.setTimage(rset.getString("timage"));
				dto.setTtitle(rset.getString("ttitle"));
				dto.setMinPrice(rset.getInt("minPrice"));
				dto.setMaxPrice(rset.getInt("maxPrice"));
				dto.setMinDate(rset.getString("minDate"));
				dto.setMaxDate(rset.getString("maxDate"));
				dto.setAvgReivew(new ReviewDAO().avgStra(rset.getInt("tno")));
				dto.setList(new ProductDAO().listProductSearch(rset.getInt("tno"),month,order,searching));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return list;
	}
	public ArrayList<ProductDTO> listProductSearch(int fk_dno,int month,String order,String searching) {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset=null;
		ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			System.out.println("확인");
			pstmt = conn.prepareStatement("select dno, dname, ddtail1, ddtail2, ddtail3, dcategory, ddate, dair, dcity, dsit, dprice, fk_dno,TO_DAYS(substring_index(ddate, '|||', -1))-TO_DAYS(substring_index(ddate, '|||', 1)) ddates from tdetail where fk_dno=? and (instr(lower(replace(ddtail1,' ','')),lower(replace(?,' ',''))) or instr(lower(replace(dname,' ','')),lower(replace(?,' ',''))) or instr(lower(replace(ddtail2,' ','')),lower(replace(?,' ',''))) or instr(lower(replace(ddtail3,' ','')),lower(replace(?,' ',''))) or instr(lower(replace(dcity,' ','')),lower(replace(?,' ','')))) order by "+order);
			pstmt.setInt(1, fk_dno);
			pstmt.setString(2, searching);
			pstmt.setString(3, searching);
			pstmt.setString(4, searching);
			pstmt.setString(5, searching);
			pstmt.setString(6, searching);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				//dno; dname; ddtail1; ddtail2; ddtail3; dcategory; ddate; dair; dcity; dsit; dprice; fk_dno;
				ProductDTO dto = new ProductDTO();
				dto.setDno(rset.getInt("dno"));
				dto.setDname(rset.getString("dname"));
				dto.setDdtail1(rset.getString("ddtail1"));
				dto.setDdtail2(rset.getString("ddtail2"));
				dto.setDdtail3(rset.getString("ddtail3"));
				dto.setDcategory(rset.getString("dcategory"));
				dto.setDdate(rset.getString("ddate"));
				dto.setDair(rset.getString("dair"));
				dto.setDcity(rset.getString("dcity"));
				dto.setDsit(rset.getInt("dsit"));
				dto.setDprice(rset.getInt("dprice"));
				dto.setFk_dno(rset.getInt("fk_dno"));
				dto.setDdates(rset.getInt("ddates"));
				list.add(dto);
				System.out.println(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return list;
	}
	public ArrayList<MainProductDTO> listMainView() {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset=null;
		ArrayList<MainProductDTO> list = new ArrayList<MainProductDTO>();
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			System.out.println("확인");
			pstmt = conn.prepareStatement("select * from tmain");
			rset = pstmt.executeQuery();
			while(rset.next()) {
				//minPrice maxPrice minDate maxDate
				MainProductDTO dto = new MainProductDTO();
				dto.setTno(rset.getInt("tno"));
				dto.setTimage(rset.getString("timage"));
				dto.setTtitle(rset.getString("ttitle"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return list;
	}//select dno, dname, ddtail1, ddtail2, ddtail3, dcategory, ddate, dair, dcity, dsit, dprice, fk_dno,TO_DAYS(substring_index(ddate, '|||', -1))-TO_DAYS(substring_index(ddate, '|||', 1)) ddates from tdetail where

	public ProductDTOSplit listProductDetail(int dno) {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset=null;
		ProductDTOSplit dto = new ProductDTOSplit();
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("select * from tdetail where dno=?");
			pstmt.setInt(1, dno);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				
				dto.setDno(rset.getInt("dno"));
				dto.setDname(rset.getString("dname"));
				String result = rset.getString("ddtail1");
				String[] ddtail1 = result.split("\\|\\|\\|");
				dto.setDdtail1_1(ddtail1[0]);
				dto.setDdtail1_2(ddtail1[1]);
				result = rset.getString("ddtail2");
				String[] ddtail2 = result.split("\\|\\|\\|");
				dto.setDdtail2_1(ddtail2[0]);
				dto.setDdtail2_2(ddtail2[1]);
				dto.setDdtail2_3(ddtail2[2]);
				dto.setDdtail2_4(ddtail2[3]);
				dto.setDdtail2_5(ddtail2[4]);
				dto.setDdtail2_6(ddtail2[5]);
				String[] ddtail3 = (rset.getString("ddtail3")).split("\\|\\|\\|");
				dto.setDdtail3_1(ddtail3[0]);
				dto.setDdtail3_2(ddtail3[1]);
				dto.setDcategory(rset.getString("dcategory"));
				String[] ddate = (rset.getString("ddate")).split("\\|\\|\\|");
				dto.setDdate_1(ddate[0]);
				dto.setDdate_2(ddate[1]);
				String[] dair = rset.getString("dair").split("\\|\\|\\|");
				dto.setDair_1(dair[0]);
				dto.setDair_2(dair[1]);
				dto.setDair_3(dair[2]);
				dto.setDair_4(dair[3]);
				String[] dcity = rset.getString("dcity").split("\\|\\|\\|");
				System.out.println(dcity);
				dto.setDcity_1(dcity[0]);
				dto.setDcity_2(dcity[1]);
				dto.setDcity_3(dcity[2]);
				dto.setDsit(rset.getInt("dsit"));
				dto.setDprice(rset.getInt("dprice"));
				dto.setFk_dno(rset.getInt("fk_dno"));;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return dto;
	}
	public JsonArray detailDifference(String dif) {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset=null;
		JsonArray list = new JsonArray();
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			System.out.println("확인");
			pstmt = conn.prepareStatement("select dno, dname, ddtail1, ddtail2, ddtail3, dcategory, ddate, dair, dcity, dsit, dprice, fk_dno,TO_DAYS(substring_index(ddate, '|||', -1))-TO_DAYS(substring_index(ddate, '|||', 1)) ddates from tdetail where dno in ("+dif+")");
			rset = pstmt.executeQuery();
			while(rset.next()) {
				//dno; dname; ddtail1; ddtail2; ddtail3; dcategory; ddate; dair; dcity; dsit; dprice; fk_dno;				
				JsonObject jObject = new JsonObject();
				jObject.addProperty("dno", rset.getInt("dno"));
				jObject.addProperty("dname", rset.getString("dname"));
				jObject.addProperty("ddtail1", rset.getString("ddtail1"));
				jObject.addProperty("ddtail2", rset.getString("ddtail2"));
				jObject.addProperty("ddtail3", rset.getString("ddtail3"));
				jObject.addProperty("dcategory", rset.getString("dcategory"));
				jObject.addProperty("ddate", rset.getString("ddate"));
				jObject.addProperty("dair", rset.getString("dair"));
				jObject.addProperty("dcity", rset.getString("dcity"));
				jObject.addProperty("dsit", rset.getInt("dsit"));
				jObject.addProperty("dprice", rset.getInt("dprice"));
				jObject.addProperty("fk_dno", rset.getInt("fk_dno"));
				jObject.addProperty("ddates", rset.getInt("ddates"));
				list.add(jObject);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return list;
	}
	public ArrayList<MainProductDTO> listMain(String where, int month, String order, int sit) {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset=null;
		ArrayList<MainProductDTO> list = new ArrayList<MainProductDTO>();
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			System.out.println("확인");
			pstmt = conn.prepareStatement("select a.tno tno, a.ttitle ttitle, a.timage timage, min(b.dprice) minprice,max(b.dprice) maxprice, min(substring_index(ddate, '|||', 1)) mindate, max(substring_index(ddate, '|||', -1)) maxdate from tmain a join tdetail b on a.tno = b.fk_dno where substring_index(dcity, '|||', -1)=? group by a.tno");
			pstmt.setString(1, where);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				//minPrice maxPrice minDate maxDate
				MainProductDTO dto = new MainProductDTO();
				dto.setTno(rset.getInt("tno"));
				dto.setTimage(rset.getString("timage"));
				dto.setTtitle(rset.getString("ttitle"));
				dto.setMinPrice(rset.getInt("minPrice"));
				dto.setMaxPrice(rset.getInt("maxPrice"));
				dto.setMinDate(rset.getString("minDate"));
				dto.setMaxDate(rset.getString("maxDate"));
				dto.setList(new ProductDAO().listProduct(rset.getInt("tno"),month,order,sit));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return list;
	}
	public ArrayList<ProductDTO> listProduct(int fk_dno,int month,String order,int dsit) {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset=null;
		ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			System.out.println("확인");
			pstmt = conn.prepareStatement("select dno, dname, ddtail1, ddtail2, ddtail3, dcategory, ddate, dair, dcity, dsit, dprice, fk_dno,TO_DAYS(substring_index(ddate, '|||', -1))-TO_DAYS(substring_index(ddate, '|||', 1)) ddates from tdetail where fk_dno=? and dsit>=? and right(substring_index(substring_index(ddate, '|||', 1), '-', 2),2)=(select month(sysdate()- INTERVAL ? MONTH) from dual) order by "+order);
			pstmt.setInt(1, fk_dno);
			pstmt.setInt(2, dsit);
			pstmt.setInt(3, month);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				//dno; dname; ddtail1; ddtail2; ddtail3; dcategory; ddate; dair; dcity; dsit; dprice; fk_dno;
				ProductDTO dto = new ProductDTO();
				dto.setDno(rset.getInt("dno"));
				dto.setDname(rset.getString("dname"));
				dto.setDdtail1(rset.getString("ddtail1"));
				dto.setDdtail2(rset.getString("ddtail2"));
				dto.setDdtail3(rset.getString("ddtail3"));
				dto.setDcategory(rset.getString("dcategory"));
				dto.setDdate(rset.getString("ddate"));
				dto.setDair(rset.getString("dair"));
				dto.setDcity(rset.getString("dcity"));
				dto.setDsit(rset.getInt("dsit"));
				dto.setDprice(rset.getInt("dprice"));
				dto.setFk_dno(rset.getInt("fk_dno"));
				dto.setDdates(rset.getInt("ddates"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return list;
	}
	public JsonArray listProductAjax(String search , String date) {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset=null;
		JsonArray list = new JsonArray();
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			System.out.println("확인");
			System.out.println("select a.tno tno,  a.ttitle ttitle, a.timage timage, min(b.dprice) minprice,max(b.dprice) maxprice, min(substring_index(ddate, '|||', 1)) mindate, max(substring_index(ddate, '|||', -1)) maxdate from tmain a join tdetail b on a.tno = b.fk_dno where "+ search +" and substring_index(ddate, '|||', 1) "+date+" group by a.tno limit 0,3");
			pstmt = conn.prepareStatement("select a.tno tno,a.ttitle ttitle,  a.timage timage, min(b.dprice) minprice,max(b.dprice) maxprice, min(substring_index(ddate, '|||', 1)) mindate, max(substring_index(ddate, '|||', -1)) maxdate from tmain a join tdetail b on a.tno = b.fk_dno where "+ search +" and substring_index(ddate, '|||', 1) "+date+" group by a.tno limit 0,3");
			rset = pstmt.executeQuery();
			while(rset.next()) {
				JsonObject jObject = new JsonObject();
				jObject.addProperty("tno", rset.getInt("tno"));
				jObject.addProperty("timage", rset.getString("timage"));
				jObject.addProperty("ttitle", rset.getString("ttitle"));
				jObject.addProperty("minPrice", rset.getInt("minPrice"));
				jObject.addProperty("maxPrice", rset.getInt("maxPrice"));
				jObject.addProperty("minDate", rset.getString("minDate"));
				jObject.addProperty("maxDate", rset.getString("maxDate"));		
				jObject.addProperty("avgReview", new ReviewDAO().avgStra(rset.getInt("tno")));
				System.out.println(jObject);
				list.add(jObject);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return list;
	}
	public ArrayList<MainProductDTO> listProductArray() {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset=null;
		 ArrayList<MainProductDTO> list = new ArrayList<MainProductDTO>();
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			System.out.println("확인");
			System.out.println("select a.tno tno,  a.ttitle ttitle, a.timage timage, min(b.dprice) minprice,max(b.dprice) maxprice, min(substring_index(ddate, '|||', 1)) mindate, max(substring_index(ddate, '|||', -1)) maxdate from tmain a join tdetail b on a.tno = b.fk_dno group by a.tno order by tno desc");
			pstmt = conn.prepareStatement("select a.tno tno,  a.ttitle ttitle, a.timage timage, min(b.dprice) minprice,max(b.dprice) maxprice, min(substring_index(ddate, '|||', 1)) mindate, max(substring_index(ddate, '|||', -1)) maxdate from tmain a join tdetail b on a.tno = b.fk_dno group by a.tno order by tno desc");
			rset = pstmt.executeQuery();
			while(rset.next()) {
				//minPrice maxPrice minDate maxDate
				MainProductDTO dto = new MainProductDTO();
				dto.setTno(rset.getInt("tno"));
				dto.setTimage(rset.getString("timage"));
				dto.setTtitle(rset.getString("ttitle"));
				dto.setMinPrice(rset.getInt("minPrice"));
				dto.setMaxPrice(rset.getInt("maxPrice"));
				dto.setMinDate(rset.getString("minDate"));
				dto.setMaxDate(rset.getString("maxDate"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return list;
	}
	public ArrayList<MainProductDTO> listProductArray(String search , String date) {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset=null;
		 ArrayList<MainProductDTO> list = new ArrayList<MainProductDTO>();
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			System.out.println("확인");
			System.out.println("select a.tno tno,  a.ttitle ttitle, a.timage timage, min(b.dprice) minprice,max(b.dprice) maxprice, min(substring_index(ddate, '|||', 1)) mindate, max(substring_index(ddate, '|||', -1)) maxdate from tmain a join tdetail b on a.tno = b.fk_dno where "+ search +" and substring_index(ddate, '|||', 1) "+date+" group by a.tno");
			pstmt = conn.prepareStatement("select a.tno tno,a.ttitle ttitle,  a.timage timage, min(b.dprice) minprice,max(b.dprice) maxprice, min(substring_index(ddate, '|||', 1)) mindate, max(substring_index(ddate, '|||', -1)) maxdate from tmain a join tdetail b on a.tno = b.fk_dno where "+ search +" and substring_index(ddate, '|||', 1) "+date+" group by a.tno");
			rset = pstmt.executeQuery();
			while(rset.next()) {
				//minPrice maxPrice minDate maxDate
				MainProductDTO dto = new MainProductDTO();
				dto.setTno(rset.getInt("tno"));
				dto.setTimage(rset.getString("timage"));
				dto.setTtitle(rset.getString("ttitle"));
				dto.setMinPrice(rset.getInt("minPrice"));
				dto.setMaxPrice(rset.getInt("maxPrice"));
				dto.setMinDate(rset.getString("minDate"));
				dto.setMaxDate(rset.getString("maxDate"));
				dto.setList(new ProductDAO().listProductListArray(search, date,rset.getInt("tno")));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return list;
	}
	public ArrayList<ProductDTO> listProductListArray(String search , String date,int tno) {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset=null;
		 ArrayList<ProductDTO>  list = new ArrayList<ProductDTO>();
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			System.out.println("확인");
			pstmt = conn.prepareStatement("select a.dno, a.dname, a.ddtail1, a.ddtail2, a.ddtail3, a.dcategory, a.ddate, a.dair, a.dcity, a.dsit, a.dprice, a.fk_dno,TO_DAYS(substring_index(a.ddate, '|||', -1))-TO_DAYS(substring_index(a.ddate, '|||', 1)) ddates from tdetail a join tmain b on b.tno = a.fk_dno where "+ search +" and substring_index(ddate, '|||', 1) "+date+" and fk_dno=?");
			pstmt.setInt(1, tno);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				ProductDTO dto = new ProductDTO();
				dto.setDno(rset.getInt("dno"));
				dto.setDname(rset.getString("dname"));
				dto.setDdtail1(rset.getString("ddtail1"));
				dto.setDdtail2(rset.getString("ddtail2"));
				dto.setDdtail3(rset.getString("ddtail3"));
				dto.setDcategory(rset.getString("dcategory"));
				dto.setDdate(rset.getString("ddate"));
				dto.setDair(rset.getString("dair"));
				dto.setDcity(rset.getString("dcity"));
				dto.setDsit(rset.getInt("dsit"));
				dto.setDprice(rset.getInt("dprice"));
				dto.setFk_dno(rset.getInt("fk_dno"));
				dto.setDdates(rset.getInt("ddates"));
				list.add(dto);	
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return list;
	}
	public int reserve(ProductDTO dto,int sit) {
		Connection conn=null;PreparedStatement pstmt=null;
		int result=0;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("update tdetail set dsit=dsit-? where dno = ?");
			pstmt.setInt(1,sit);
			pstmt.setInt(2,dto.getDno());
			result = pstmt.executeUpdate();
		} catch (Exception e) { e.printStackTrace();
		} finally {
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return result;
	}
	public int reserveUndo(ReservationDTO dto) {
		Connection conn=null;PreparedStatement pstmt=null;
		int result=0;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("update tdetail set dsit=? where dno = ?");
			pstmt.setInt(1,dto.getDsit());
			pstmt.setInt(2,dto.getFk_dno());
			result = pstmt.executeUpdate();
		} catch (Exception e) { e.printStackTrace();
		} finally {
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return result;
	}
	public String getCity(int tno) {
		Connection conn=null;PreparedStatement pstmt=null;ResultSet rset=null;
		String result="";
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("select substring_index(dcity, '|||', -1) from tdetail where fk_dno=?");
			pstmt.setInt(1,tno);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				result=rset.getString(1);
			}
		} catch (Exception e) { e.printStackTrace();
		} finally {
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return result;
	}
}
