<%
    String countries[] = {"India", "Nepal", "Uk", "USA"};
    String country = request.getParameter("country");
    if(country ==null){
        country = "";
    }

%>

<form method="post">
    <select size="5"  name="country">
        <%
            for (String c : countries) {
                if(country.equals(c))
                    out.println("<option selected='selected'>" + c + "</option>");
                else
                    out.println("<option>" + c + "</option>");
            }
        %>
    </select>

    <input type="submit" 
           name="cmd"
           value="Select"/>

</form>

    <p><%=country%></p>