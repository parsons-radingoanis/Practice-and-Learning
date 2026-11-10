<%-- 
    Document   : enter_message
    Created on : May 26, 2026, 5:00:54 PM
    Author     : Gadifele Parsons Radingoanis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enter Message Page</title>
    </head>
    <body>
        <%
            String comp_name = pageContext.getServletContext().getInitParameter("computer_name");
            String user_name = (String)session.getAttribute("userName");
        %>
        <p>
            Hi <b><%=user_name%></b>, it's <b><%=comp_name%></b> again. <br>Please enter message to send.
        </p>
        <form action="SendMessageServlet.do" method="POST">
            <table>
                <tr>
                    <td>Message ID: </td>
                    <td><input type="text" name="msg_id" required=""/></td>
                </tr>
                <tr>
                    <td>Message: </td>
                    <td><input type="text" name="msg" required=""/></td>
                </tr>
                <tr>
                    <td>Priority: </td>
                    <td>
                        <select name="priority">
                            <option value="Low">Low</option>
                            <option value="High">High</option>
                            <option value="Critical">Critical</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="4"><input type="submit" value="SEND"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
