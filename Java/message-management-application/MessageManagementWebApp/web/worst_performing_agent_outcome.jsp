<%-- 
    Document   : worst_performing_agent_outcome
    Created on : Jun 14, 2026, 9:29:45 PM
    Author     : Gadifele Parsons Radingoanis
--%>

<%@page import="za.ac.tut.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Messages Outcome Page</title>
    </head>
    <body>
        <%
            String comp_name = pageContext.getServletContext().getInitParameter("computer_name");
            String user_name = (String)session.getAttribute("userName");
            
            String agent = (String)request.getAttribute("agent");
            Long cnt = (Long)request.getAttribute("messagesCnt");
        %>
        <p>
            Hi <b><%=user_name%></b>, it's <b><%=comp_name%></b> again.<br>
            <b><%=agent%></b> is the worst performing agent, managed to sent <%=cnt%> messages.
        </p>
        
        <form action="manager_menu.jsp">
            <table>
                <tr>
                    <td colspan="4"><input type="submit" value="Menu"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
