<%@page import="smartProject.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Update Book</title>
<style>
.back
{
  color: white;
  margin-left: 2.5%
}
</style>
</head>
<body>
 <h2><a class="back" href="allBooksEditBook.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>
<%
String id=request.getParameter("id");
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from book where id='"+id+"'");
	while(rs.next())
	{
		
%>

<form action="editBookAction.jsp" method="post">
<input type="hidden" name="id" value="<%out.println(id);%>">

<div class="left-div">
 <h3>Enter Entry Number</h3>
<input class="input-style" type="number" name="entry_number" value="<%=rs.getString(2) %>" required>
<hr>
</div>

<div class="right-div">
 <h3>Enter Name</h3>
<input class="input-style" type="text" name="name" value="<%=rs.getString(3) %>" required>
<hr>
</div>

<div class="left-div">
<h3>Enter Author</h3>
 <input class="input-style" type="text" name="author" value="<%=rs.getString(4) %>" required>
<hr>
</div>

<div class="right-div">
<h3>Enter Publisher</h3>
 <input class="input-style" type="text" name="publisher" value="<%=rs.getString(5) %>" required>
<hr>
</div>

<div class="left-div">
<h3>Enter ISBN Number</h3>
 <input class="input-style" type="number" name="ISBN_no" value="<%=rs.getString(6) %>" required>
<hr>
</div>

<div class="right-div">
<h3>Enter Latest Version</h3>
 <input class="input-style" type="text" name="latest_version" value="<%=rs.getString(7) %>" required>
<hr>
</div>

<div class="left-div">
<h3>Enter Shelf</h3>
 <input class="input-style" type="text" name="shelf" value="<%=rs.getString(8) %>" required>
<hr>
</div>

<div class="right-div">
<h3>Available</h3>
 <select class="input-style" name="available">
 <option value="Yes">Yes</option>
 <option value="No">No</option>
  </select>
 <hr>
</div>
 <button class="button">Save <i class='far fa-arrow-alt-circle-right'></i></button>
<%
}
}
catch(Exception e)
{
	System.out.println(e);
	}
%>
</form>
</body>
<br><br><br>
</body>
</html>