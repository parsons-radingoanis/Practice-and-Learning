<%-- 
    Document   : session_started
    Created on : May 26, 2026, 4:32:53 PM
    Author     : Gadifele Parsons Radingoanis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Session Started Page</title>
    </head>
    <body>
        <h1>Session started</h1>
        <%
            String comp_name = pageContext.getServletContext().getInitParameter("computer_name");
        %>
        <p>
            Hello I'm <b><%=comp_name%></b>, what's your name?
        </p>
        <form action="NameServlet.do" method="POST">
            <table>
                <tr>
                    <td>Name: </td>
                    <td><input type="text" name="name" required=""/></td>
                </tr>
                <tr>
                    <td colspan="4"><input type="submit" value="START"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
