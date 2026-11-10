<%-- 
    Document   : send_outcome
    Created on : May 26, 2026, 5:03:58 PM
    Author     : Gadifele Parsons Radingoanis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Send Outcome Page</title>
    </head>
    <body>
        <%
            String comp_name = pageContext.getServletContext().getInitParameter("computer_name");
            String user_name = (String)session.getAttribute("userName");
        %>
        <p>
            Hi <b><%=user_name%></b>, it's <b><%=comp_name%></b> again. Your message was sent successfully.
        </p>
        <form action="agent_menu.jsp">
            <table>
                <tr>
                    <td colspan="4"><input type="submit" value="Menu"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
