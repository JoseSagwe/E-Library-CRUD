<%@page import="smartProject.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<html>
<head>
<link rel="stylesheet" href="css/messageUs.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Reply</title>
</head>
<body>
<div style="color: blue; text-align: center; font-size: 30px;">Reply <i class='fas fa-comment-alt'></i></div>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h3 style="text-align:center; color:blue;">Reply successfully sent.</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 style="text-align:center; ">Some thing Went Wrong! Try Again!</h3>
<%} %>
<form action="replyAction.jsp" method="post">
<input class="input-style" name="subject" type="text" placeholder="subject" required >
<hr>
<textarea class="input-style" name="body"  type="text" placeholder="Enter Your Message" required ></textarea>
<hr>
<button class="button" type="submit">Send <i class="far fa-arrow-alt-circle-right"></i> </button>
</form>

<br> 
<br>
<br>
</body>
</html>