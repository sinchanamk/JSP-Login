package com.login;

import java.sql.*;
import controller.UserServlet;
import Dao.UserDao;


public class LoginDao 
{
	public boolean check(String Email,String Password)
	{
		
		String sql="select * from register.employee1 where Email=? and password=?";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3309?user=root&password=1234");
			PreparedStatement pstmt=con.prepareStatement(sql);
		 pstmt.setString(1, Email);
		 pstmt.setString(2, Password);
		 ResultSet rs=pstmt.executeQuery();
		 if(rs.next())
		 {
			 
			// String first_name=rs.getString(1);
			 //System.out.println("welcome"+first_name);
			 return true;
		 }
		}
		
		catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}     
		
		return false;
	}

}