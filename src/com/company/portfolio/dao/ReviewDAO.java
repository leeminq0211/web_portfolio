package com.company.portfolio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.company.portfolio.dbmanager.DBManager;
import com.company.portfolio.dto.ReviewDTO;
import com.google.gson.*;

public class ReviewDAO {
	public ArrayList<ReviewDTO> listMainView() {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset=null;
		ArrayList<ReviewDTO> list = new ArrayList<ReviewDTO>();
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			System.out.println("확인");
			pstmt = conn.prepareStatement("select * from review");
			rset = pstmt.executeQuery();
			while(rset.next()) {
				//minPrice maxPrice minDate maxDate
				ReviewDTO dto = new ReviewDTO();
				dto.setRno(rset.getInt("rno"));
				dto.setRtitle(rset.getString("rtitle"));
				dto.setRdetail(rset.getString("rdetail"));
				dto.setRstar(rset.getString("rstar"));
				dto.setRname(rset.getString("rname"));
				dto.setRtype(rset.getString("rtype"));
				dto.setRdate(rset.getString("rdate"));
				dto.setRpick(rset.getString("rpick"));
				dto.setFk_rno(rset.getInt("fk_rno"));
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
	public int write(ReviewDTO dto) {
		Connection conn=null;PreparedStatement pstmt=null;
		int result=0;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			System.out.println("확인:"+dto);
			pstmt = conn.prepareStatement("insert into review (rtitle,rdetail,rstar,rname,rtype,rdate,fk_rno) values (?,?,?,?,?,?,?)");
			System.out.println("성공");
			
			pstmt.setString(1, dto.getRtitle());
			pstmt.setString(2, dto.getRdetail());
			pstmt.setString(3, dto.getRstar());
			pstmt.setString(4, dto.getRname());
			pstmt.setString(5, dto.getRtype());
			pstmt.setString(6, dto.getRdate());
			pstmt.setInt(7, dto.getFk_rno());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return result;
	}
	public float avgStra(int fk_rno) {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset=null;	float avg = 0;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("select round(avg(rstar),1) from review where fk_rno=?");
			pstmt.setInt(1, fk_rno);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				avg = rset.getFloat(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return avg;
	}
	public JsonObject chart(int rtype,int fk_rno) {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset=null;
		String[] type = {"전체","가족(아이동반)","가족","친구/커플","혼자(싱글)","단체/기타"};
		System.out.println(type[0]);
		JsonArray avglist = new JsonArray();
		JsonArray list = new JsonArray();
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			if(rtype==0) {
				pstmt = conn.prepareStatement("select rtype,round(avg(rstar),1) star, count(*) count from review where fk_rno=?");
				pstmt.setInt(1, fk_rno);
			}else {
				pstmt = conn.prepareStatement("select rtype,round(avg(rstar),1) star, count(*) count from review where rtype=? and fk_rno=?");
				pstmt.setString(1, type[rtype]);
				pstmt.setInt(2, fk_rno);
			}
			rset = pstmt.executeQuery();
			while(rset.next()) {
				JsonObject jObject = new JsonObject();
				jObject.addProperty("rtype", rset.getString("rtype"));
				jObject.addProperty("star", rset.getString("star"));
				jObject.addProperty("count", rset.getString("count"));
				avglist.add(jObject);
			}
			rset.close();pstmt.close();conn.close();
			conn = db.getConnection();
			if(rtype==0) {
				pstmt = conn.prepareStatement("select a.rstar,ifnull(b.per,0) per,ifnull(b.count,0) count from review a left join (select rstar,round(count(rstar)/(select count(*) from review where fk_rno=?)*100,2) per,count(rstar) count from review where fk_rno=? group by rstar) b on a.rstar = b.rstar group by a.rstar order by rstar desc");
				pstmt.setInt(1, fk_rno);
				pstmt.setInt(2, fk_rno);
			}else{
				pstmt = conn.prepareStatement("select a.rstar,ifnull(b.per,0) per,ifnull(b.count,0) count from review a left join (select rstar,round(count(rstar)/(select count(*) from review where rtype=? and fk_rno=?)*100,2) per,count(rstar) count from review where rtype=? and fk_rno=? group by rstar) b on a.rstar = b.rstar group by a.rstar order by rstar desc");
				pstmt.setString(1, type[rtype]);
				pstmt.setInt(2, fk_rno);
				pstmt.setString(3, type[rtype]);
				pstmt.setInt(4, fk_rno);
			}
			rset = pstmt.executeQuery();
			while(rset.next()) {
				JsonObject jObject = new JsonObject();
				jObject.addProperty("rstar", rset.getString("rstar"));
				jObject.addProperty("per", rset.getString("per"));		
				jObject.addProperty("count", rset.getString("count"));	
				list.add(jObject);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		JsonObject object = new JsonObject();
		object.add("avglist", avglist);
		object.add("list", list);

		return object;
	}
	public JsonArray viewReview(int fk_rno,String rtype,String order,int pstartno) {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset=null;
		JsonArray list = new JsonArray();
		System.out.println(pstartno);
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			if(rtype.equals("전체")) {
				pstmt = conn.prepareStatement("select * from review where fk_rno=? order by "+order+" desc limit ?, 5");
				pstmt.setInt(1, fk_rno);
				pstmt.setInt(2, pstartno);
			}else {
				pstmt = conn.prepareStatement("select * from review where fk_rno=? and rtype=? order by "+order+" desc limit ?, 5");
				pstmt.setInt(1, fk_rno);
				pstmt.setString(2, rtype);
				pstmt.setInt(3, pstartno);
			}
			rset = pstmt.executeQuery();
			while(rset.next()) {
				JsonObject jObject = new JsonObject();
				jObject.addProperty("rno", rset.getString("rno"));
				jObject.addProperty("rtitle", rset.getString("rtitle"));
				jObject.addProperty("rdetail", rset.getString("rdetail"));
				jObject.addProperty("rstar", rset.getString("rstar"));
				jObject.addProperty("rname", rset.getString("rname"));
				jObject.addProperty("rtype", rset.getString("rtype"));
				jObject.addProperty("rdate", rset.getString("rdate"));
				jObject.addProperty("rpick", rset.getString("rpick"));
				jObject.addProperty("fk_rno", rset.getString("fk_rno"));			
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
	public int listSum(int fk_rno,String rtype) {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset=null; int pageTotal=0;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
	
			if(rtype.equals("전체")) {
				pstmt = conn.prepareStatement("select count(*) from review where fk_rno=?");
				pstmt.setInt(1, fk_rno);
			}else {
				pstmt = conn.prepareStatement("select count(*) from review where fk_rno=? and rtype=?");
				pstmt.setInt(1, fk_rno);
				pstmt.setString(2, rtype);
			}
			rset = pstmt.executeQuery();
			while(rset.next()) {
				pageTotal=rset.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return pageTotal;
	}
	public JsonObject rpickDo(int rno, int rpick) {
		Connection conn=null;PreparedStatement pstmt=null;ResultSet rset=null;
		int result=0;
		JsonObject jObject = new JsonObject();
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("update review set rpick = rpick + ? where rno=?");
			pstmt.setInt(1, rpick);
			pstmt.setInt(2, rno);
			result = pstmt.executeUpdate();
			pstmt.close();
			pstmt = conn.prepareStatement("select rpick from review where rno=?");
			pstmt.setInt(1, rno);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				jObject.addProperty("rpick", rset.getInt("rpick"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return jObject;
	}
}
