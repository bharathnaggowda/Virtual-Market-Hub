package edu.sjsu.cmpe275.project;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;




public class TestDB {
	public static void main(String[] args) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException
	{
		try
		{
		String url = "jdbc:mysql://localhost:3306/onlineshopping";
		String user = "root";
		String password = "";

		// Load the Connector/J driver
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		// Establish connection to MySQL
		Connection conn = DriverManager.getConnection(url, user, password);
		System.out.println("connected");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

	}
}
