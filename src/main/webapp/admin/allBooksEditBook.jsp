<%@page import="smartProject.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>All Books</title>
    <style>
        h3 {
            color: yellow;
            text-align: center;
        }
    </style>
</head>
<body>
    <div style="color: white; text-align: center; font-size: 30px;">All Books Available <i class='fab fa-elementor'></i></div>
    <% 
    String msg=request.getParameter("msg");
    if("done".equals(msg)) {
    %>
    <h3 class="alert">Books List Successfully Updated!</h3>
    <%} %>
    <% 
    if("wrong".equals(msg)) {
    %>
    <h3 class="alert">Try again!</h3>
    <%} %>
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
                <th scope="col">Update <i class='fas fa-pen-fancy'></i></th>
                <th scope="col">Delete</th>
            </tr>
        </thead>
        <tbody>
            <%
            try {
                Connection con=ConnectionProvider.getCon();
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from book");
                while(rs.next()) {
            %>
            <form action="deleteBookAction.jsp" method="post">
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
                    <td><a href="editBook.jsp?id=<%=rs.getString(1) %>">Update <i class='fas fa-pen-fancy'></i></a></td>
                    <td>
                        <input type="hidden" name="id" value="<%=rs.getString(1) %>">
                        <button type="submit" class="btn">Delete</button>
                    </td>
                </tr>
            </form>
            <%
                }
            } catch(Exception e) {
                System.out.println(e);
            }
            %>
        </tbody>
    </table>
    <br>
    <br>
    <br>
</body>
</html>
