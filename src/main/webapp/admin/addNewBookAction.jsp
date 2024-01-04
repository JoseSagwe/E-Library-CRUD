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
	PreparedStatement ps=con.prepareStatement("insert into book values(?,?,?,?,?,?,?,?,?)");
	ps.setString(1, id);
	ps.setString(2, entry_number);
	ps.setString(3, name);
	ps.setString(4, author);
	ps.setString(5, publisher);
	ps.setString(6, ISBN_no);
	ps.setString(7, latest_version);
	ps.setString(8, shelf);
	ps.setString(9, available);
	ps.executeUpdate();
	response.sendRedirect("addNewBook.jsp?msg=done");
	}
catch(Exception e)
{
	//System.out.print(e);
	response.sendRedirect("addNewBook.jsp?msg=wrong");
	}

%>