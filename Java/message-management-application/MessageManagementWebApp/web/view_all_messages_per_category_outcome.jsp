<%-- 
    Document   : view_all_messages_per_category_outcome
    Created on : Jun 14, 2026, 8:57:22 PM
    Author     : Gadifele Parsons Radingoanis
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Messages Per Category Outcome Page</title>
    </head>
    <body>
        <%
            String comp_name = pageContext.getServletContext().getInitParameter("computer_name");
            String user_name = (String)session.getAttribute("userName");
            
            List<String> lowPriority = (List<String>)request.getAttribute("lowPriority");
            List<String> highPriority = (List<String>)request.getAttribute("highPriority");
            List<String> criticalPriority = (List<String>)request.getAttribute("criticalPriority");
            
        %>
        <p>
            Hi <b><%=user_name%></b>, it's <b><%=comp_name%></b> again. Below is the details of messages sent.
        </p>
        <p>
            <b>Critical-Priority Messages</b>
        </p>
        <table>
            <%
                for(int i = 0; i < criticalPriority.size(); i++){
                    String msg = criticalPriority.get(i);
            %>
            
            <tr>
                <td><%=(i + 1)%>. <%=msg%></td>
            </tr>
            <%}%>
        </table>
        <br>
        <p>
            <b>High-Priority Messages</b>
        </p>
        <table>
            <%
                for(int i = 0; i < highPriority.size(); i++){
                    String msg = highPriority.get(i);
            %>
            
            <tr>
                <td><%=(i + 1)%>. <%=msg%></td>
            </tr>
            <%}%>
        </table>
        <br>
        <p>
            <b>Low-Priority Messages</b>
        </p>
        <table>
            <%
                for(int i = 0; i < lowPriority.size(); i++){
                    String msg = lowPriority.get(i);
            %>
            
            <tr>
                <td><%=(i + 1)%>. <%=msg%></td>
            </tr>
            <%}%>
        </table>
        <br>
        <form action="manager_menu.jsp">
            <table>
                <tr>
                    <td colspan="4"><input type="submit" value="Menu"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
