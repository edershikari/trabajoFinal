package model;

import java.sql.*;

//--- To connect to a database Download the https://dev.mysql.com/downloads/connector/j/5.1.html library
//and copy the jar archive in  web-inf/lib folder

public class Connect {
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/tiendaonline";
	String userBbdd = "root";
	String passBbdd = "";
	protected Connection con;

	public Connect() {
      	super();
      	this.con= null;
	}
	// ---------------------------------------------
	public Connection CreateConnection()
	{
		
		
		
        	try {
              	// ----- connecting procedure ----//
              	Class.forName(driver);
              	this.con = DriverManager.getConnection(url, userBbdd, passBbdd);

        	} catch (Exception ex) {
              	con = null;
        	}
        	return this.con;
  	
	}
	
	public Connection getConnection() {
		return this.con;
	}
	public void disconnect() {
		this.con=null;
	}
}
