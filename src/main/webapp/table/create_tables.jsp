<%@page import="smartProject.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="create table users(name varchar(100),email varchar(100)primary key,mobileNumber bigint,securityQuestion varchar(200),answer varchar(200),password varchar(100),address varchar(500),city varchar(100),state varchar(100),country varchar(100))";
	String q2="create table  book(id int,entry_number int, name varchar(500),author varchar(200),publisher varchar(200), ISBN_no int,latest_version varchar(100), shelf varchar (100),available VARCHAR(10))";
	String q3="create table message(id int AUTO_INCREMENT,email varchar(100),subject varchar(200),body varchar(1000),PRIMARY KEY(id))";
	String q4="create table reply(id int AUTO_INCREMENT,email varchar(100),subject varchar(200),body varchar(1000),PRIMARY KEY(id))";
	System.out.println(q1); 
	System.out.println(q2);
	System.out.println(q3); 
	System.out.println(q4);
	
	
	st.execute(q1);
	st.execute(q2);
	st.execute(q3);
	st.execute(q4);


	System.out.println("Table created");
	con.close();
}

catch(Exception e)
{
	System.out.print(e);
}



%>