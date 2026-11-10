<%-- 
    Document   : remove_outcome
    Created on : May 26, 2026, 5:11:15 PM
    Author     : Gadifele Parsons Radingoanis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Outcome Page</title>
    </head>
    <body>
        <%
            String comp_name = pageContext.getServletContext().getInitParameter("computer_name");
            String user_name = (String)session.getAttribute("userName");
            Long id = (Long)request.getAttribute("id");
        %>
        <p>
            Hi <b><%=user_name%></b>, it's <b><%=comp_name%></b> again. Message for  id <b><%=id%></b> was successfully removed.
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
