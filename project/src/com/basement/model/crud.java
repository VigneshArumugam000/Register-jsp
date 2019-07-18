package com.basement.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class crud {
	 public boolean sub(customer c) throws SQLException, ClassNotFoundException
	 {
	Class.forName("org.h2.Driver");
		 Connection con=DriverManager.getConnection("jdbc:h2:~/myproject11","sa","sa");
		 PreparedStatement p=con.prepareStatement("insert into customer values(?,?,?,?)");
		 p.setString(1,c.getFname());
		 p.setString(2,c.getLname());
		 p.setString(3,c.getEmail());
		 p.setString(4,c.getUser_password1());
		 if(p.executeUpdate()!=0)
		 return true;
		 else
		return false ;
	 }
		  public ArrayList<customer> SelectAllcustomer() throws SQLException,ClassNotFoundException
		  { 
		  Class.forName("org.h2.Driver");
				 Connection con=DriverManager.getConnection("jdbc:h2:~/myproject11","sa","sa");
		  Statement s=con.createStatement();
		  ResultSet rs=s.executeQuery("select * from customer");
		ArrayList<customer> cuslist=new ArrayList<>();
		while(rs.next())
		{
			customer c=new customer();
			c.setFname(rs.getString(1));
			c.setLname(rs.getString(2));
			c.setEmail(rs.getString(3));
			c.setUser_password1(rs.getString(4));
			cuslist.add(c);
		}
		return cuslist;
}

}

