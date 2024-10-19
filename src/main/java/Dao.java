package com.tadigital.ecommerce.dao;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Dao {
	private static final String DRIVER_CLASS = "com.mysql.cj.jdbc.Driver";
	private static final String CONNECTOIN_URL = "jdbc:mysql://localhost:3306/april_2021_interns_db";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "1234";
		
	protected Connection getConnection() {
		Connection con = null;
		
		try {
			
			Class.forName( DRIVER_CLASS );
			con = DriverManager.getConnection( CONNECTOIN_URL, USERNAME, PASSWORD );
		} catch ( ClassNotFoundException cnfex ) {
			cnfex.printStackTrace();
		} catch ( SQLException sqlex ) {
			sqlex.printStackTrace();
		}
		
		return con;
	}
	
	protected Statement getStatement( Connection con ) {
		Statement stmt = null;
		try {
			
			stmt = con.createStatement();
		} catch ( SQLException sqlex ) {
			sqlex.printStackTrace();
		} 	
		
		return stmt;
	}

	protected ResultSet getResultSet ( Statement stmt , String str ) {
		ResultSet rs = null;
		try {
		
			rs = stmt.executeQuery( str );
			
		} catch ( SQLException sqlex ) {
			sqlex.printStackTrace();
		} 
		
        return rs;		
	}
	
	protected void closeConnection( Connection con ) {
		try {
			if ( con != null ) {
				con.close();
			}
		} catch ( SQLException sqlex ) {
			sqlex.printStackTrace();
		}
	}

	protected void closeStatement( Statement stmt ) {
		try {
			if ( stmt != null ) {
				stmt.close();
			}
		} catch ( SQLException sqlex ) {
			sqlex.printStackTrace();
		}
	}
	
	protected void closeResultSet( ResultSet rs ) {
		try {
			if ( rs != null ) {
				rs.close();
			}
		} catch ( SQLException sqlex ) {
			sqlex.printStackTrace();
		}
	}
	
}