package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class DBConnection {

	static{
		ResourceBundle rb= ResourceBundle.getBundle("dbprop");
		try {
			Class.forName(rb.getString("driver"));
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public Connection getConn() throws SQLException{
		Connection conn=null;
		ResourceBundle rb= ResourceBundle.getBundle("dbprop");
		String uname= rb.getString("uname");
		String pwd=rb.getString("pwd");
		String url = rb.getString("url");
		conn=DriverManager.getConnection(url, uname, pwd);
		return conn;
		
	}
	
	public void closeConn(Connection c){
		if(c!=null){
			try {
				c.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
