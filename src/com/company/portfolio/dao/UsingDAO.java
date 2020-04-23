package com.company.portfolio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.company.portfolio.dbmanager.DBManager;
import com.company.portfolio.dto.ReplyDTO;
import com.company.portfolio.dto.UsingDTO;

public class UsingDAO {
	public ArrayList<UsingDTO> listAll(int pstartno,String table){
		ArrayList<UsingDTO> listAll = new ArrayList<UsingDTO>();
		Connection conn=null;PreparedStatement pstmt=null;ResultSet rset=null;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("select * from "+table+" order by no desc limit ?, 10");
			pstmt.setInt(1,pstartno);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				UsingDTO dto = new UsingDTO();
				dto.setNo(rset.getInt("no"));
				dto.setCategory(rset.getString("category"));
				dto.setTitle(rset.getString("title"));
				dto.setContent(rset.getString("content"));
				dto.setDate(rset.getString("date"));
				dto.setFile(rset.getString("file"));
				listAll.add(dto);
				System.out.println(dto);
			}
			
		} catch (Exception e) {
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return listAll;
	}
	public int listTotal(String table) {
		Connection conn=null;PreparedStatement pstmt=null;ResultSet rset=null;
		int count=0;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("select count(*) as total from "+table+"");
			rset = pstmt.executeQuery();
			while(rset.next()) {
				count = rset.getInt(1);
			}
		} catch (Exception e) {
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return count;
	}
	public int write(UsingDTO dto,String table) {
		Connection conn=null;PreparedStatement pstmt=null;ResultSet rset=null;
		int result=0;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("insert into "+table+" (category,title,content,file) values (?,?,?,?)");
			
			pstmt.setString(1,dto.getCategory());
			pstmt.setString(2,dto.getTitle());
			pstmt.setString(3,dto.getContent());
			pstmt.setString(4,dto.getFile());
			System.out.println(dto);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return result;
	}
	public UsingDTO detail(UsingDTO dto,String table) {
		Connection conn=null;PreparedStatement pstmt=null;ResultSet rset=null;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("select * from "+table+" where no = ?");
			pstmt.setInt(1,dto.getNo());
			rset = pstmt.executeQuery();
			while(rset.next()) {
				dto.setNo(rset.getInt("no"));
				dto.setCategory(rset.getString("category"));
				dto.setTitle(rset.getString("title"));
				dto.setContent(rset.getString("content"));
				dto.setDate(rset.getString("date"));
				dto.setFile(rset.getString("file"));
			}
		} catch (Exception e) {
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return dto;
	}
	public int delete(UsingDTO dto,String table) {
		Connection conn = null; PreparedStatement pstmt = null; int result=0;
		try {
			DBManager db = new DBManager();
			
			conn = db.getConnection();
			pstmt = conn.prepareStatement("delete from "+table+" where no=?");
			pstmt.setInt(1, dto.getNo());
			result =  pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { if(pstmt!=null) {pstmt.close();} } catch (Exception e2) { e2.printStackTrace(); }
			try { if(conn!=null) {conn.close();} } catch (Exception e2) { e2.printStackTrace(); }
		}
		return result;
	}
	public int edit(UsingDTO dto,String table) {
		Connection conn = null; PreparedStatement pstmt = null; int result=0;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("update "+table+" SET category=? , title=? , content=? , file=? where no=?");
			pstmt.setString(1, dto.getCategory());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getContent());
			pstmt.setString(4, dto.getFile());
			pstmt.setInt(5, dto.getNo());
			result =  pstmt.executeUpdate();
		} catch (Exception e) { e.printStackTrace();
			e.printStackTrace();
		} finally {
			try { if(pstmt!=null) {pstmt.close();} } catch (Exception e2) { e2.printStackTrace(); }
			try { if(conn!=null) {conn.close();} } catch (Exception e2) { e2.printStackTrace(); }
		}
		return result;
	}
}
