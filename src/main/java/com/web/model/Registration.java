package com.web.model;

import com.web.controller.ServletController1;
import jakarta.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Registration {
		
			public int RowsEffected(HttpSession session) {
			 
				int rowCount=0;
				String sql="INSERT INTO Registry(emailId,password) VALUES(?,?)";
				String url="jdbc:mysql://localhost:3306/Javadatabase";
				String user="XXXXXXX";
				String password="XXXXXXXX";
				
				try {
			  Class.forName("com.mysql.cj.jdbc.Driver");
			  Connection connect=DriverManager.getConnection(url,user,password);
			  PreparedStatement statement = connect.prepareStatement(sql);

			  statement.setString(1,(String)session.getAttribute("email"));
			  statement.setString(2,(String)session.getAttribute("password"));

			  rowCount=statement.executeUpdate();

			  statement.close();
			  connect.close();
			  
				}catch(SQLException e) {
					e.printStackTrace();
			
				}catch(Exception a) {
					System.out.println("Main Exception Occured");
				}
				
				
				return rowCount;
				
			}

}
