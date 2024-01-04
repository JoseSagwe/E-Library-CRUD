<%@page import="smartProject.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Book</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Book Successfully Added!</h3>
<%} %>

<% 
if("wrong".equals(msg))
{
%>
<h3 class="alert">Try Again!</h3>
<%} %>

<%
int id=1;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select max(id)from book");
	while(rs.next())
	{
		id=rs.getInt(1);
		id=id+1;
	}
	}
catch(Exception e)
{
	System.out.print(e);
	}
%>
<form action="addNewBookAction.jsp" method="post">
<h3 style="color: yellow;">Book ID:<%out.println(id); %> </h3>
<input type="hidden" name="id" value="<%out.println(id); %>">

<div class="left-div">
 <h3>Enter Entry Number</h3>
 <input class="input-style" type="number" name="entry_number" placeholder="Enter Entry Number" required>
<hr>
</div>
<div class="right-div">
 <h3>Enter Name</h3>
 <input class="input-style" type="text" name="name" placeholder="Enter Name" required>
<hr>
</div>

<div class="left-div">
<h3>Enter Author</h3>
 <input class="input-style" type="text" name="author" placeholder="Enter Author" required>
<hr>
</div>

<div class="right-div">
<h3>Enter Publisher</h3>
 <input class="input-style" type="text" name="publisher" placeholder="Enter Publisher" required>
<hr>
</div>

<div class="left-div">
<h3>Enter ISBN No</h3>
 <input class="input-style" type="number" name="ISBN_no" placeholder="Enter ISBN Number" required>
<hr>
</div>

<div class="right-div">
<h3>Enter Latest Version</h3>
 <input class="input-style" type="text" name="latest_version" placeholder="Enter Latest Version" required>
<hr>
</div>

<div class="left-div">
<h3>Enter Shelf</h3>
 <input class="input-style" type="text" name="shelf" placeholder="Enter Shelf" required>
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
<button class="button">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</body>
</html>