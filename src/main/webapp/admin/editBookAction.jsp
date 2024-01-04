<%@page import="smartProject.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String entry_number=request.getParameter("entry_number");
String name=request.getParameter("name");
String author=request.getParameter("author");
String publisher=request.getParameter("publisher");
String ISBN_no=request.getParameter("ISBN_no");
String latest_version=request.getParameter("latest_version");
String shelf=request.getParameter("shelf");
String available=request.getParameter("available");

try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update book set entry_number='"+entry_number+"', name='"+name+"',author='"+author+"',publisher='"+publisher+"',ISBN_no='"+ISBN_no+"',latest_version='"+latest_version+"',shelf='"+shelf+"',available='"+available+"' where id='"+id+"'");
	
	response.sendRedirect("allBooksEditBook.jsp?msg=done");
	
	}

catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("allBooksEditBook.jsp?msg=wrong");
	}

 %>