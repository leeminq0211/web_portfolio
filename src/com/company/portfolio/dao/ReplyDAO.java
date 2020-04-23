package com.company.portfolio.dao;

import java.net.InetAddress;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.company.portfolio.dbmanager.DBManager;
import com.company.portfolio.dto.ReplyDTO;

public class ReplyDAO {
	public int bstep_max(String table) {
		Connection conn = null; ResultSet rset = null; PreparedStatement pstmt = null;
		int bstep=0; 
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("select max(bstep) from "+table);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				bstep = rset.getInt(1);
			}
		} catch (Exception e) {		 e.printStackTrace();
		} finally {
			if(rset!=null) {try { rset.close(); } catch (SQLException e) {  e.printStackTrace(); }}
			if(pstmt!=null) {try { pstmt.close(); } catch (SQLException e) {  e.printStackTrace(); }}
			if(conn!=null) {try { conn.close(); } catch (SQLException e) {  e.printStackTrace(); }}
		}
		return bstep;
	}
	public int write(ReplyDTO dto,String table) {
		Connection conn=null;PreparedStatement pstmt=null;
		int result=0;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			//pstmt = conn.prepareStatement("insert into "+table+"(bno,bname,bpass,btitle,bcontent,bip,bcategory,bgroup,bstep,bfile) values (seq_"+table+".nextval,?,?,?,?,?,?,?,?,?)");
			System.out.println("실패");
			pstmt = conn.prepareStatement("insert into "+table+" (bname,bpass,btitle,bcontent,bip,bcategory,bgroup,bstep,bfile) values (?,?,?,?,?,?,?,?,?)");
			System.out.println("성공");
			pstmt.setString(1, dto.getBname());
			pstmt.setString(2, dto.getBpass());
			pstmt.setString(3, dto.getBtitle());
			pstmt.setString(4, dto.getBcontent());
			pstmt.setString(5,""+InetAddress.getLocalHost().getHostName());
			pstmt.setString(6, dto.getBcategory());
			pstmt.setInt(7,dto.getBgroup());
			pstmt.setInt(8,dto.getBstep());
			System.out.println("시작:"+dto);
			pstmt.setString(9,dto.getBfile());
			result = pstmt.executeUpdate();
			System.out.println("성공");
		} catch (Exception e) {
		} finally {
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return result;
	}
	public int listSum(String table){
		Connection conn=null;PreparedStatement pstmt=null;ResultSet rset=null;
		int result = -1;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("select count(*) from "+table);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				result = rset.getInt(1);
			}
		} catch (Exception e) {
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return result;
	}
	public ArrayList<ReplyDTO> listpage(int pstartno,String table){
		ArrayList<ReplyDTO> list = new ArrayList<ReplyDTO>();
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset = null;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			System.out.println(0);
			/*pstmt = conn.prepareStatement("select * from ( select rownum as rnum , A.* from (select * from "+table+" order by bstep desc , bindent asc ) A where rownum <= ? ) B where B.rnum > ?");
			if(pstartno==0) { pstmt.setInt(1,10); }
			else { pstmt.setInt(1,pstartno*10); }
			pstmt.setInt(2,pstartno);*/
			pstmt = conn.prepareStatement("select * from "+table+" where bgroup in(select bgroup from "+table+" where (bgroup)*1000 = bstep) order by bstep desc , bindent asc limit ?, ?");
			pstmt.setInt(1,pstartno);
			if(pstartno==0) { pstmt.setInt(2,10); }
			else { pstmt.setInt(2,pstartno*10); }
			
			rset = pstmt.executeQuery();
			System.out.println(1);
			while(rset.next()) {
				ReplyDTO dto = new ReplyDTO();
				dto.setBno(rset.getInt("bno"));
				dto.setBname(rset.getString("bname"));
				dto.setBpass(rset.getString("bpass"));
				dto.setBtitle(rset.getString("btitle"));
				dto.setBcontent(rset.getString("bcontent"));
				dto.setBdate(rset.getString("bdate"));
				dto.setBhit(rset.getInt("bhit"));
				dto.setBip(rset.getString("bip"));
				dto.setBgroup(rset.getInt("bgroup"));
				dto.setBstep(rset.getInt("bstep"));
				dto.setBfile(rset.getString("bfile"));
				System.out.println(2);
				System.out.println(dto);
				list.add(dto);
			}
		} catch (Exception e) {e.printStackTrace();
		} finally {
			if(rset!=null) {try { rset.close(); } catch (SQLException e) {  e.printStackTrace(); }}
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return list;
	}
	public ReplyDTO detail(ReplyDTO dto,String table) {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset = null;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("select * from "+table+" where bno=?");
			pstmt.setInt(1,dto.getBno());
			rset = pstmt.executeQuery();
			while(rset.next()) {
				dto.setBno(rset.getInt("bno"));
				dto.setBname(rset.getString("bname"));
				dto.setBpass(rset.getString("bpass"));
				dto.setBtitle(rset.getString("btitle"));
				dto.setBcontent(rset.getString("bcontent"));
				dto.setBdate(rset.getString("bdate"));
				dto.setBhit(rset.getInt("bhit"));
				dto.setBip(rset.getString("bip"));
				dto.setBcategory(rset.getString("bcategory"));
				dto.setBgroup(rset.getInt("bgroup"));
				dto.setBstep(rset.getInt("bstep"));
				dto.setBindent(rset.getInt("bindent"));
				dto.setBfile(rset.getString("bfile"));
			}
		} catch (Exception e) { e.printStackTrace();
		} finally {
			if(rset!=null) {try { rset.close(); } catch (SQLException e) {  e.printStackTrace(); }}
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return dto;
	}
	public int addHit(ReplyDTO dto,String table) {
		Connection conn=null;PreparedStatement pstmt=null;
		
		int result=0;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("update "+table+" set bhit=bhit+1 where bno = ?");
			pstmt.setInt(1,dto.getBno());
			result = pstmt.executeUpdate();
			System.out.println(result);
		} catch (Exception e) { e.printStackTrace();
		} finally {
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return result;
	}
	public int checkPass(ReplyDTO dto,String table) {
		Connection conn=null;PreparedStatement pstmt=null;ResultSet rset=null;
		int result = -1;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("select count(*) from "+table+" where bno = ? and bpass= ?");
			pstmt.setInt(1,dto.getBno());
			pstmt.setString(2,dto.getBpass());
			rset = pstmt.executeQuery();
			while(rset.next()) {
				result = rset.getInt(1);
			}
		} catch (Exception e) { e.printStackTrace();
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return result;
	}
	public int edit(ReplyDTO dto,String table) {
		Connection conn = null; PreparedStatement pstmt = null; int result=0;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("update "+table+" SET btitle=? , bcontent=? , bfile=? where bno=?");
			pstmt.setString(1, dto.getBtitle());
			pstmt.setString(2, dto.getBcontent());
			pstmt.setString(3, dto.getBfile());
			pstmt.setInt(4, dto.getBno());
			result =  pstmt.executeUpdate();
		} catch (Exception e) { e.printStackTrace();
			e.printStackTrace();
		} finally {
			try { if(pstmt!=null) {pstmt.close();} } catch (Exception e2) { e2.printStackTrace(); }
			try { if(conn!=null) {conn.close();} } catch (Exception e2) { e2.printStackTrace(); }
		}
		return result;
	}
	public int delete(ReplyDTO dto,String table) {
		Connection conn = null; PreparedStatement pstmt = null; int result=0;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("delete from "+table+" where bno=?");
			pstmt.setInt(1, dto.getBno());
			result =  pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { if(pstmt!=null) {pstmt.close();} } catch (Exception e2) { e2.printStackTrace(); }
			try { if(conn!=null) {conn.close();} } catch (Exception e2) { e2.printStackTrace(); }
		}
		return result;
	}
	public int reply1(ReplyDTO dto,String table) {
		Connection conn = null; PreparedStatement pstmt = null; int result=0;ResultSet rset=null;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("update "+table+" SET bstep=bstep-1 where bstep > ? and bstep < ?");
			pstmt.setInt(1, ((int)(Math.ceil(dto.getBstep()/(float)1000))-1 )* 1000);
			pstmt.setInt(2, dto.getBstep());
			result =  pstmt.executeUpdate();
		} catch (Exception e) { e.printStackTrace();
			e.printStackTrace();
		} finally {
			try { if(rset!=null) {rset.close();} } catch (Exception e2) { e2.printStackTrace(); }
			try { if(pstmt!=null) {pstmt.close();} } catch (Exception e2) { e2.printStackTrace(); }
			try { if(conn!=null) {conn.close();} } catch (Exception e2) { e2.printStackTrace(); }
		}
		return result;
	}
	public int reply2(ReplyDTO dto,String table) {
		Connection conn = null; PreparedStatement pstmt = null; int result=0;ResultSet rset=null;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			//pstmt = conn.prepareStatement("insert into "+table+"(bno,bname,bpass,btitle,bcontent,bip,bcategory,bgroup,bstep,bindent,bfile) values (seq_"+table+".nextval,?,?,?,?,?,?,?,?,?,?)");
			pstmt = conn.prepareStatement("insert into "+table+"(bname,bpass,btitle,bcontent,bip,bcategory,bgroup,bstep,bindent,bfile) values (?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1, dto.getBname());
			pstmt.setString(2, dto.getBpass());
			pstmt.setString(3, dto.getBtitle());
			pstmt.setString(4, dto.getBcontent());
			pstmt.setString(5,""+InetAddress.getLocalHost().getAddress());
			pstmt.setString(6, dto.getBcategory());
			pstmt.setInt(7,dto.getBgroup());
			pstmt.setInt(8,dto.getBstep()-1);
			pstmt.setInt(9, dto.getBindent()+1);
			pstmt.setString(10, dto.getBfile());
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {	
			e.printStackTrace();
		} finally {
			try { if(rset!=null) {rset.close();} } catch (Exception e2) { e2.printStackTrace(); }
			try { if(pstmt!=null) {pstmt.close();} } catch (Exception e2) { e2.printStackTrace(); }
			try { if(conn!=null) {conn.close();} } catch (Exception e2) { e2.printStackTrace(); }
		}
		return result;
	}
}
