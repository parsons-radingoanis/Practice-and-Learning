<%-- 
    Document   : outcome
    Created on : May 25, 2026, 5:32:30 PM
    Author     : Gadifele Parsons Radingoanis
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Outcome Page</title>
    </head>
    <body>
        <h1>Analyze outcome</h1>
        <%
            String sentence = (String)request.getAttribute("sentence");
            List<String> uniqueList = (List<String>)request.getAttribute("uniqueList");
            List<String> nonUniqueList = (List<String>)request.getAttribute("nonUniqueList");
        %>
        <p>List of unique words</p>
        <table>
            <%
                for(int i = 0; i < uniqueList.size(); i++){
            %>
            <tr>
                <td><%=uniqueList.get(i)%></td>
            </tr>
            <%}%>
        </table>
        <p>List of non-unique words</p>
        <table>
            <%
                for(int i = 0; i < nonUniqueList.size(); i++){
            %>
            <tr>
                <td><%=nonUniqueList.get(i)%></td>
            </tr>
            <%}%>
        </table>
        <form action="PersistServlet.do" method="GET">
            <table>
                <tr>
                    <td><input type="submit" value="PERSIST MESSAGE ANALYSIS"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
