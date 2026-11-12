<%-- 
    Document   : unauthorised_error
    Created on : 14 May 2026, 4:17:40 PM
    Author     : Gadifele Parsons Radingoanis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Unauthorized Error Page</title>
    </head>
    <body>
        <h1>Access not granted</h1>
        <p>
            You are not allowed to access requested functionality.
        </p>
        <ul>
            <li><a href="menu.jsp">Menu Page</a></li>
            <li><a href="index.html">Home Page</a></li>
            <li><a href="LogoutServlet.do">Logout</a></li>
        </ul>
    </body>
</html>
