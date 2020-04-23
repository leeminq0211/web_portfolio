package com.company.portfolio.dbmanager;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBManager {
	private static Connection conn;
	public DBManager() { conn = null; }
	public static Connection getConn() { return conn;}
	public Connection getConnection() throws Exception{
		try {
			Context  initContext = new InitialContext();
			Context  envContext =  (Context) initContext.lookup("java:/comp/env");   
			//DataSource  db = (DataSource)envContext.lookup("jdbc/orcl");
			DataSource  db = (DataSource)envContext.lookup("jdbc/leeminq0211");
			//DataSource  db = (DataSource)envContext.lookup("jdbc/backend3");
			conn  = db.getConnection();
			if(conn!=null) {System.out.println("DB연동성공");}
			else { System.out.println("DB연동실패"); }
		} catch (Exception e) {
			// TODO: handle exception
		}
		return conn;
	}
}
