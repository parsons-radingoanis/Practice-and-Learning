<%-- 
    Document   : agent_menu
    Created on : May 26, 2026, 4:46:33 PM
    Author     : Gadifele Parsons Radingoanis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agent Menu Page</title>
    </head>
    <body>
        <h1>Menu</h1>
        <%
            String comp_name = pageContext.getServletContext().getInitParameter("computer_name");
            String user_name = (String)session.getAttribute("userName");
        %>
        <p>
            Hi <b><%=user_name%></b>, it's <b><%=comp_name%></b> again.
        </p>
        <form action="enter_message.jsp">
            <table>
                <tr>
                    <td colspan="4"><input type="submit" value="Send Message"/></td>
                </tr>
            </table>
        </form>
        <form action="remove.jsp">
            <table>
                <tr>
                    <td colspan="4"><input type="submit" value="Remove Message"/></td>
                </tr>
            </table>
        </form>
        <form action="index.html">
            <table>
                <tr>
                    <td colspan="4"><input type="submit" value="Logout"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
