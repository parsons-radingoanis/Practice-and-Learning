<%-- 
    Document   : add_agent
    Created on : 14 May 2026, 2:41:06 PM
    Author     : Gadifele Parsons Radingoanis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Agent Page</title>
    </head>
    <body>
        <h1>Add agent</h1>
        <p>
            Please add details of an agent below.
        </p>
        <form action="AddServlet.do" method="POST">
            <table>
                <tr>
                    <td>ID: </td>
                    <td><input type="text" name="id"/></td>
                </tr>
                <tr>
                    <td>Full Name: </td>
                    <td><input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td>Gender: </td>
                    <td>
                        <select name="gender">
                            <option value="M">M</option>
                            <option value="F">F</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="ADD"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
