<%-- 
    Document   : enter_message
    Created on : May 25, 2026, 5:57:32 PM
    Author     : Gadifele Parsons Radingoanis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enter Sentence Page</title>
    </head>
    <body>
        <h1>Message</h1>
        <form action="AnalyzeServlet.do" method="POST">
            <table>
                <tr>
                    <td>Enter a sentence: </td>
                    <td><input type="text" name="msg" required=""/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="ANALYZE"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
