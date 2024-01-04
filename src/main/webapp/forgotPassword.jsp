<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="forgotPasswordAction.jsp" method="post">
  <input type="email" name="email" placeholder="Enter Email" required>
  <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
   <select name="securityQuestion" required>
    <option value="What is your nickname?">What is your nickname?</option>
     <option value="What was your first phone?">What was your first phone?</option>
      <option value="What is the name of your pet?">What is the name of your pet?</option>
       <option value="What is the name of your hometown you were born?">What is the name of your home town you were born?</option>
    </select>
    <input type="text" name="answer" placeholder="Enter answer" required>
    <input type="password" name="newPassword" placeholder="Enter new Password" required>
    <input type="submit" value="Save">
  </form>
     
      <h2><a href="signup2.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
   <%
  String msg=request.getParameter("msg");
   if("done".equals(msg))
   {
   %>
<h1>Password Changed Successfully!</h1>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h1>Try Again !</h1>
<%} %>
    <h2>Smart Online E Library</h2>
    <p>Reset Your Password!<p>
  </div>
</div>
</body>
</html>