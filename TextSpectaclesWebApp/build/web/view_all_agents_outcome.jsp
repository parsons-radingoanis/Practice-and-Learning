<%-- 
    Document   : view_all_agents_outcome
    Created on : 14 May 2026, 3:16:54 PM
    Author     : Gadifele Parsons Radingoanis
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Agent"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Agents Outcome Page</title>
    </head>
    <body>
        <h1>Agents</h1>
        <%
            List<Agent> agents = (List<Agent>)request.getAttribute("agents");
        %>
        <p>
            Below are agents in the database
        </p>
        <table border="1">
            <th>ID</th>
            <th>Full Name</th>
            <th>Gender</th>
            
            <%
                for(int i = 0; i < agents.size(); i++){
                 Agent a = agents.get(i);
                 Long id = a.getId();
                 String fullName = a.getFullName();
                 Character gender = a.getGender();
            %>
            
            <tr>
                <td><%=id%></td>
                <td><%=fullName%></td>
                <td><%=gender%></td>
            </tr>
            <%}%>
        </table>
        <ol>
            <li><a href="index.html">Home Page</a></li>
            <li><a href="menu.jsp">Menu Page</a></li>
        </ol>
    </body>
</html>
