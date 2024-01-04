<%@page import="smartProject.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String id=request.getParameter("id");

try {
    Connection con=ConnectionProvider.getCon();
    Statement st=con.createStatement();
    st.executeUpdate("delete from book where id='" + id + "'");
    response.sendRedirect("allBooksEditBook.jsp?msg=done");
} catch(Exception e) {
    System.out.println(e);
    response.sendRedirect("allBooksEditBook.jsp?msg=wrong");
}
%>
