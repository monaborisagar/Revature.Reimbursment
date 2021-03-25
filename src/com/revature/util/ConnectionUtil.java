package com.revature.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionUtil {
	private static Connection connection = null;
	
	
	private ConnectionUtil() {
		super();
	}
	
	public static Connection getConnection() throws IOException, SQLException {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace();
		}
		File file = new File("C:\\Nikunj_eclipse\\reimbursment _system\\property.properties");
		Properties prop = new Properties();
		 FileInputStream fi=new FileInputStream(file);//inputstram means file read from properties.properties
	        prop.load(fi);
	        
	        
	        
		//ClassLoader loader = Thread.currentThread().getContextClassLoader();
		//prop.load(loader.getResourceAsStream("connection.properties"));
		String url = prop.getProperty("url");
		String username = prop.getProperty("username");
		String password = prop.getProperty("password");
		if(connection == null || connection.isClosed()) {
			connection = DriverManager.getConnection(url, username, password);
		}
		fi.close();
		return connection;
	}

}
