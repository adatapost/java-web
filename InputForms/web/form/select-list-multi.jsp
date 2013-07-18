<%
    String countries[] = {"India", "Nepal", "Uk", "USA"};
    String[] country = request.getParameterValues("country");

    if (country != null) {
        for (String c : country) {
            out.println(c);
        }
    } else {
        country = new String[]{""};
    }

%>

<form method="post">
    <select multiple="multiple" size="5"  name="country">
        <%
            for (String c : countries) {
                boolean isFound = false;
                for (String t : country) {
                    if (c.equals(t)) {
                        isFound = true;
                    }
                }
                if (isFound) {
                    out.println("<option selected='selected'>" + c + "</option>");
                } else {
                    out.println("<option>" + c + "</option>");
                }
            }
        %>
    </select>

    <input type="submit" 
           name="cmd"
           value="Select"/>

</form>

