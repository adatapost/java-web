package in.anita;

import java.util.List;
import java.util.Properties;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Db {
	private static  String DRIVER;
	private static  String USERNAME;
	private static  String PASSWORD;
	private static  String URL;

	static {
		try {
			/* Read db.properties */
			Properties ps = new Properties();
			ps.load(new FileInputStream("db.properties"));
			DRIVER = ps.getProperty("driver");
			URL =  ps.getProperty("url");
			USERNAME = ps.getProperty("username");
			PASSWORD = ps.getProperty("password");
			
			Class.forName(DRIVER);
			
			/*  
			 *  Create db.properties file
			 * 
			Properties ps= new Properties();
			ps.setProperty("username", "anita");
			ps.setProperty("password", "anita");
			ps.setProperty("driver", "oracle.jdbc.OracleDriver");
			ps.setProperty("url", "jdbc:oracle:thin:@localhost");
			
			File file = new File("db.properties");
			ps.store(new FileOutputStream(file), "Added by Anita");
			*/
			
		} catch (Exception e) {
			System.out.println("Error while loading " + DRIVER);
		}
	}

	/* Instance Fields */

	Connection cn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	/* Constructs the JDBC objects */
	public Db(String sql) throws SQLException {
		cn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
		ps = cn.prepareStatement(sql);
	}

	public PreparedStatement getPs() {
		return ps;
	}
	
	/* executeUpdate() */
	
	public int execute() throws SQLException
	{
		 return ps.executeUpdate();
	}
	
	/* To return an array of object[] */
	
	public Object[] row() throws SQLException
	{
		rs = ps.executeQuery();
		Object []ar = null;
		int columns = rs.getMetaData().getColumnCount();
		if(rs.next()){
			ar = new Object[columns];
			for(int i=0;i<ar.length;i++){
				ar[i] = rs.getObject(i+1);
			}
		}
		return ar;
	}
	
	/* To return rows */
	public List<Object[]> rows() throws SQLException
	{
		List<Object[]> list = new ArrayList<Object[]>();
		rs = ps.executeQuery();
		int columns = rs.getMetaData().getColumnCount();
		
		while(rs.next()){
		    Object []ar = null;
      	    ar = new Object[columns];
			for(int i=0;i<ar.length;i++){
				ar[i] = rs.getObject(i+1);
			}
			list.add(ar);
		}
		return list;
	}

	public void dispose() {
		if (cn != null) {
			try {
				cn.close();
			} catch (Exception e) {
			}
		}

		if (rs != null) {
			try {
				rs.close();
			} catch (Exception e) {

			}
		}
		if (ps != null) {
			try {
				ps.close();
			} catch (Exception e) {

			}
		}
	}

	/* Date helper methods */

	public static java.util.Date parseDate(String dateStr, String pattern) {
		java.util.Date date = null;
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat(pattern);
		try {
			date = sdf.parse(dateStr);
			return date;
		} catch (Exception e) {
		}
		return null;
	}

	public static java.util.Date toDate(String dateStr)
	{
		java.util.Date date = parseDate(dateStr,"dd-MM-yyyy");
		if(date!=null) return date;
		date = parseDate(dateStr,"dd/MM/yyyy");
		if(date!=null) return date;
		date = parseDate(dateStr,"d-M-yy");
		if(date!=null) return date;
		date = parseDate(dateStr,"d-M-yyyy");
		if(date!=null) return date;
		return null;
	}
	
	public static java.sql.Date toSqlDate(java.util.Date date){
		  java.sql.Date sDate = new java.sql.Date(date.getTime());
		  return sDate;
	}
	public static java.sql.Date toSqlDate(String strDate){
		
		  java.util.Date date = toDate(strDate);
		  java.sql.Date sDate = new java.sql.Date(date.getTime());
		  return sDate;
	}
}
