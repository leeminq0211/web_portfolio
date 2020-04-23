package com.company.portfolio.dao;

import java.net.InetAddress;
import java.sql.*;

import com.company.portfolio.dbmanager.DBManager;
import com.company.portfolio.dto.MemberDTO;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;


public class MemberDAO {
	public int delete(MemberDTO dto) {
		Connection conn = null; PreparedStatement pstmt=null;
		int result = 0;
		try{ 
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("delete from mvcmember where mid=?");
			pstmt.setString(1, dto.getMid());
			result =  pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { if(pstmt!=null) {pstmt.close();} } catch (Exception e2) { e2.printStackTrace(); }
			try { if(conn!=null) {conn.close();} } catch (Exception e2) { e2.printStackTrace(); }
		}
		return result;
	}
	public MemberDTO detail(MemberDTO dto) {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset = null;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("select * from mvcmember where mid=?");
			pstmt.setString(1, dto.getMid());
			rset = pstmt.executeQuery();
			while(rset.next()){
				dto.setMname(rset.getString("mname"));
				dto.setMemail(rset.getString("memail"));
				dto.setMdate(rset.getString("mdate"));
				System.out.println(dto);
			}
		} catch (Exception e) { e.printStackTrace();
		} finally {
			if(rset!=null) {try { rset.close(); } catch (SQLException e) {  e.printStackTrace(); }}
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return dto;
	}
	public int idCheck(MemberDTO dto) {
		Connection conn = null; PreparedStatement pstmt=null;ResultSet rset= null;
		int result = 0;
		try{ 
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("select count(*) from mvcmember where mid=?");
			pstmt.setString(1, dto.getMid());
			rset = pstmt.executeQuery();
			while(rset.next()) {
				result = rset.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { if(rset!=null) {rset.close();} } catch (Exception e2) { e2.printStackTrace(); }
			try { if(pstmt!=null) {pstmt.close();} } catch (Exception e2) { e2.printStackTrace(); }
			try { if(conn!=null) {conn.close();} } catch (Exception e2) { e2.printStackTrace(); }
		}
		return result;
	}
	public int logIn(MemberDTO dto) {
		Connection conn = null; PreparedStatement pstmt=null; ResultSet rset=null;
		int result = -1;
		try{ 
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("select count(*) from mvcmember where mid = ? and mpass= ?");
			pstmt.setString(1, dto.getMid());
			pstmt.setString(2, dto.getMpass());
			rset =  pstmt.executeQuery();
			if(rset.next()) {
				result = rset.getInt(1);
			}
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { if(pstmt!=null) {pstmt.close();} } catch (Exception e2) { e2.printStackTrace(); }
			try { if(conn!=null) {conn.close();} } catch (Exception e2) { e2.printStackTrace(); }
		}
		return result;
	}
	public int join(MemberDTO dto) {
		Connection conn=null;PreparedStatement pstmt=null;
		int result=0;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("insert into mvcmember (mid,mname,mpass,memail,mip) values (?,?,?,?,?);");
			//pstmt = conn.prepareStatement("insert into mvcmember (mid,mname,mpass,memail,mip) values (?,?,?,?,?);");
			pstmt.setString(1, dto.getMid());
			pstmt.setString(2, dto.getMname());
			pstmt.setString(3, dto.getMpass());
			pstmt.setString(4, dto.getMemail());
			pstmt.setString(5,""+InetAddress.getLocalHost().getHostAddress());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
		} finally {
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return result;
	}
	public int edit(MemberDTO dto) {
		Connection conn = null; PreparedStatement pstmt = null; int result=0;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("update mvcmember SET mname=? , mpass=? , memail=? where mid=?");
			pstmt.setString(1, dto.getMname());
			pstmt.setString(2, dto.getMpass());
			pstmt.setString(3, dto.getMemail());
			pstmt.setString(4, dto.getMid());
			result =  pstmt.executeUpdate();
		} catch (Exception e) { e.printStackTrace();
			e.printStackTrace();
		} finally {
			try { if(pstmt!=null) {pstmt.close();} } catch (Exception e2) { e2.printStackTrace(); }
			try { if(conn!=null) {conn.close();} } catch (Exception e2) { e2.printStackTrace(); }
		}
		return result;
	}
	public int rpickDo(int rno, int num, String attribute) {
		Connection conn=null;PreparedStatement pstmt=null;ResultSet rset=null;
		int result=0;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			if(num==1) {
				String number = "."+Integer.toString(rno);
				System.out.println();
				pstmt = conn.prepareStatement("update mvcmember set  rpick=concat(rpick,?) where mid=?");
				pstmt.setString(1,  number);
				pstmt.setString(2, attribute);
				result = pstmt.executeUpdate();
				System.out.println("update="+result);
			}else {
				String rpick="";
				pstmt = conn.prepareStatement("select rpick from mvcmember where mid=?");
				pstmt.setString(1, attribute);
				rset = pstmt.executeQuery();
				while(rset.next()) {
					rpick=rset.getString("rpick");
				}
				System.out.println(rpick);
				String[] rpickArr = rpick.split("\\."); rpick="";
				System.out.println(rpickArr[0]);
				rpick+=(rpickArr[0]);
				for(int i=1;i<rpickArr.length;i++) {
					if(!rpickArr[i].equals(Integer.toString(rno))) {
						rpick+=("."+rpickArr[i]);
					}
				}
				System.out.println(rpick);
				rset.close(); pstmt.close();
				pstmt = conn.prepareStatement("update mvcmember set  rpick=? where mid=?");
				pstmt.setString(1, rpick);
				pstmt.setString(2, attribute);
				result = pstmt.executeUpdate();
			}
		} catch (Exception e) {e.printStackTrace();
		} finally {
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return result;
	}
	public JsonArray rpickList(String mid) {
		Connection conn = null; PreparedStatement pstmt=null;ResultSet rset= null;
		String rpick="";
		JsonArray list = new JsonArray();
		try{ 
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("select rpick from mvcmember where mid=?");
			pstmt.setString(1, mid);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				rpick = rset.getString(1);
			}
			String[] rpickArr = rpick.split("\\.");
			for(int i=0;i<rpickArr.length;i++) {
				JsonObject jObject = new JsonObject();
				jObject.addProperty("rpick", rpickArr[i]);
				list.add(jObject);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { if(rset!=null) {rset.close();} } catch (Exception e2) { e2.printStackTrace(); }
			try { if(pstmt!=null) {pstmt.close();} } catch (Exception e2) { e2.printStackTrace(); }
			try { if(conn!=null) {conn.close();} } catch (Exception e2) { e2.printStackTrace(); }
		}
		return list;
	}
}