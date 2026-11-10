<%-- 
    Document   : view_all_messages_outcome
    Created on : Jun 14, 2026, 8:34:31 PM
    Author     : Gadifele Parsons Radingoanis
--%>

<%@page import="za.ac.tut.entities.Message"%>
<%@page import="java.util.List"%>
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
            List<Message> list = (List<Message>)request.getAttribute("list");
            Long cntLow = (Long)request.getAttribute("cntLow");
        %>
        <p>
            Hi <b><%=user_name%></b>, it's <b><%=comp_name%></b> again. Below is the details of messages sent.
        </p>
        <table>
            <%
                for(int i = 0; i < list.size(); i++){
                    Message m = list.get(i);
                    Long msgId = m.getMessageId();
                    String msg = m.getText();
                    String priority = m.getPriority();
                    String agent = m.getName();
            %>
            
            <tr>
                <td>Message ID: </td>
                <td><b><%=msgId%></b></td>
            </tr>
            <tr>
                <td>Message: </td>
                <td><b><%=msg%></b></td>
            </tr>
            <tr>
                <td>Priority: </td>
                <td><b><%=priority%></b></td>
            </tr>
            <tr>
                <td>From: </td>
                <td><b><%=agent%></b></td>
            </tr>
            <%}%>
        </table>
        <form action="manager_menu.jsp">
            <table>
                <tr>
                    <td colspan="4"><input type="submit" value="Menu"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
