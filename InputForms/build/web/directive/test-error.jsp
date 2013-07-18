<%-- 
    Document   : test-error
    Created on : Jul 16, 2013, 12:17:47 PM
    Author     : admin
--%>

<%@page    errorPage="error.jsp"  contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String name = null;
            
            out.println(name.length());
            %>
    </body>
</html>
