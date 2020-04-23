package com.company.portfolio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.company.portfolio.dbmanager.DBManager;
import com.company.portfolio.dto.ReservationDTO;

public class ReservationDAO {
	public ArrayList<ReservationDTO> listMain(int pstartno,ReservationDTO dto) {
		Connection conn=null;PreparedStatement pstmt=null; ResultSet rset=null;
		ArrayList<ReservationDTO> list = new ArrayList<ReservationDTO>();
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			System.out.println("확인");
			pstmt = conn.prepareStatement("select a.*,b.dprice,b.dsit, c.* from reservation a join tdetail b on a.fk_dno = b.dno join tmain c on b.fk_dno = c.tno  where a.fk_mid=? order by a.rdate desc limit ?, 5");
			pstmt.setString(1, dto.getFk_mid());
			pstmt.setInt(2, pstartno);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				ReservationDTO dtotemp = new ReservationDTO();
				dtotemp.setRno(rset.getInt("rno"));
				dtotemp.setRdate(rset.getString("rdate"));
				dtotemp.setAdultCnt(rset.getInt("adultcnt"));
				dtotemp.setChdCnt(rset.getInt("chdcnt"));
				dtotemp.setInfCnt(rset.getInt("infcnt"));
				dtotemp.setFk_dno(rset.getInt("fk_dno"));
				dtotemp.setDprice(rset.getInt("dprice"));
				dtotemp.setDsit(rset.getInt("dsit"));
				dtotemp.setFk_mid(rset.getString("fk_mid"));
				dtotemp.setTno(rset.getInt("tno"));
				dtotemp.setTtitle(rset.getString("ttitle"));
				dtotemp.setTimage(rset.getString("timage"));
				list.add(dtotemp);
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
	public int listSum(){
		Connection conn=null;PreparedStatement pstmt=null;ResultSet rset=null;
		int result = -1;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("select count(*) from reservation");
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
	public ReservationDTO sitNum(ReservationDTO dto){
		Connection conn=null;PreparedStatement pstmt=null;ResultSet rset=null;
		ReservationDTO dtoTemp = new ReservationDTO();
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("select adultCnt+chdCnt+infCnt dsit,fk_dno from reservation where rno=?");
			pstmt.setInt(1, dto.getRno());
			rset = pstmt.executeQuery();
			while(rset.next()) {
				dtoTemp.setDsit(rset.getInt("dsit"));
				dtoTemp.setFk_dno(rset.getInt("fk_dno"));
			}
		} catch (Exception e) {
		} finally {
			if(rset!=null) { try { rset.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return dtoTemp;
	}
	public int reservation(ReservationDTO dto) {
		Connection conn=null;PreparedStatement pstmt=null;
		int result=0;
		try {
			System.out.println("dto 진입");
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("insert into reservation(adultcnt,chdcnt,infcnt,fk_dno,fk_mid) values (?,?,?,?,?)");
			pstmt.setInt(1, dto.getAdultCnt());
			pstmt.setInt(2, dto.getChdCnt());
			pstmt.setInt(3, dto.getInfCnt());
			pstmt.setInt(4, dto.getFk_dno());
			pstmt.setString(5, dto.getFk_mid());
			result = pstmt.executeUpdate();
			System.out.println("dto 저장완료:"+result);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return result;
	}
	public int reserveCancel(ReservationDTO dto) {
		Connection conn=null;PreparedStatement pstmt=null;
		int result=0;
		try {
			DBManager db = new DBManager();
			conn = db.getConnection();
			pstmt = conn.prepareStatement("update reservation set adultCnt=0,chdCnt=0,infCnt=0 where rno = ?");
			pstmt.setInt(1,dto.getRno());
			result = pstmt.executeUpdate();
		} catch (Exception e) { e.printStackTrace();
		} finally {
			if(pstmt!=null) { try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); } }
			if(conn!=null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); } }
		}
		return result;
	}
}
