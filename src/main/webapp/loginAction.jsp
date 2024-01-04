<%@page import="smartProject.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");
if("admin@gmail.com".equals(email) && "admin".equals(password))
{
    session.setAttribute("email", email);
    response.sendRedirect("admin/adminHome.jsp");
}
else
{
    int z=0;
    try{
        Connection con=ConnectionProvider.getCon();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select *from users where email='"+email+"' and password='"+password+"'");
        while(rs.next())
        {
            z=1;
            session.setAttribute("email", email);
            response.sendRedirect("home.jsp");
        }
        if(z==0)
        {
            out.println("<script type='text/javascript'>");
            out.println("alert('Incorrect email or password. Please try again.');");
            out.println("window.location.href='signup2.jsp?msg=notexist';");
            out.println("</script>");
        }
    }
    catch(Exception e)
    {
        System.out.println(e);
        out.println("<script type='text/javascript'>");
        out.println("alert('An error occurred while logging in. Please try again later.');");
        out.println("window.location.href='signup2.jsp?msg=invalid';");
        out.println("</script>");
    }
}
%>
