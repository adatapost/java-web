<%@page  buffer="12kb" autoFlush="true" contentType="text/html" pageEncoding="UTF-8" %>

<%
    for(int i=1;i<=100000;i++){
        out.println(i);
    }
    %>
