<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page  import="java.util.*,java.sql.*" %>
<%@page  import="java.io.*" %>


<%
   List<String> cities = new ArrayList<String>();
   cities.add("Mehsana");
   cities.add("Patan");
%>    
<select>
    <%
    for(String city: cities){
        out.println("<option>" + city + "</option>");
    }
   %>
</select>
