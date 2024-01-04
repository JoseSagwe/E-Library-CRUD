<%@page import="smartProject.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>
<table>
        <thead>
         <tr>
            <th scope="col">ID</th>
            <th scope="col">Entry Number</th>
            <th scope="col">Name</th>
            <th scope="col">Author</th>
            <th scope="col">Publisher</th>
            <th scope="col">ISBN Number</th>
            <th scope="col">Latest Version</th>
            <th scope="col">Shelf</th>
            <th>Available</th>
          </tr>
        </thead>
        <tbody>
<%
 int z=0;
try
{
	String search=request.getParameter("search");
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from book where name like '%"+search+"%' or author like '%"+search+"%' or publisher like '%"+search+"%' and available='Yes'");
	while(rs.next())
	{
		z=1;
		
%>
           <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
            <td><%=rs.getString(5) %></td>
            <td><%=rs.getString(6) %></td>
            <td><%=rs.getString(7) %></td>
            <td><%=rs.getString(8) %></td>
            <td><%=rs.getString(9) %></td>
          </tr>
         <%
	}
}
catch(Exception e)
{
	System.out.println(e);
	}%>
        </tbody>
      </table>
      	<%if(z==0){ %>
	<h1 style="color:white; text-align: center;">No Book Found</h1>
	<%} %>
      <br>
      <br>
      <br>
      <div class="footer">
          <p>All right reserved E Library</p>
      </div>

</body>
</html>