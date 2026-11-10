<%-- 
    Document   : remove
    Created on : May 26, 2026, 5:05:58 PM
    Author     : Gadifele Parsons Radingoanis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Page</title>
    </head>
    <body>
        <%
            String comp_name = pageContext.getServletContext().getInitParameter("computer_name");
            String user_name = (String)session.getAttribute("userName");
        %>
        <p>
            Hi <b><%=user_name%></b>, it's <b><%=comp_name%></b> again. Please enter message ID to remove.
        </p>
        <form action="RemoveServlet.do" method="POST">
            <table>
                <tr>
                    <td>Message ID: </td>
                    <td><input type="text" name="msg_id" required=""/></td>
                </tr>
                <tr>
                    <td colspan="4"><input type="submit" value="REMOVE"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
