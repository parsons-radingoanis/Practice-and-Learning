<%-- 
    Document   : manager_menu
    Created on : Jun 14, 2026, 8:23:48 PM
    Author     : Gadifele Parsons Radingoanis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager Menu Page</title>
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
        <form action="ViewAllMessagesServlet.do" method="GET">
            <table>
                <tr>
                    <td colspan="4"><input type="submit" value="View All Messages"/></td>
                </tr>
            </table>
        </form>
        <form action="ViewPerCategoryServlet.do" method="GET">
            <table>
                <tr>
                    <td colspan="4"><input type="submit" value="View All Messages Per Category"/></td>
                </tr>
            </table>
        </form>
        <form action="WorstPerformingAgentServlet.do" method="GET">
            <table>
                <tr>
                    <td colspan="4"><input type="submit" value="View worst performing agent"/></td>
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
