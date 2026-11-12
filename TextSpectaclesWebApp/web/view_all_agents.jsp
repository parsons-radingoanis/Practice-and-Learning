<%-- 
    Document   : view_all_agents
    Created on : 14 May 2026, 2:58:52 PM
    Author     : Gadifele Parsons Radingoanis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Agents Page</title>
    </head>
    <body>
        <h1>View agents</h1>
        <p>
            Please click the button below to view agents.
        </p>
        <form action="ViewAgentsServlet.do" method="GET">
            <table>
                <tr>
                    <td></td>
                    <td><input type="submit" value="VIEW ALL AGENTS"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
