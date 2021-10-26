

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <body>
        <h1>Hi welcome user</h1>
        <%= request.getParameter("uname")%>
    </body>
</html>
