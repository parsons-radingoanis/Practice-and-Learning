<%-- 
    Document   : menu
    Created on : May 26, 2026, 4:42:22 PM
    Author     : Gadifele Parsons Radingoanis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Page</title>
    </head>
    <body>
        <h1>Menu</h1>
        <%
            String comp_name = pageContext.getServletContext().getInitParameter("computer_name");
            String user_name = (String)session.getAttribute("userName");
        %>
        <p>
            Hi <b><%=user_name%></b>, it's <b><%=comp_name%></b> again. <br>Please select one of the following options
        </p>
        <ul>
            <li><a href="agent_menu.jsp">Field Agent</a></li>
            <li><a href="manager_menu.jsp">Manager Agent</a></li>
        </ul>
    </body>
</html>
