<%
  String []names = request.getParameterValues("name");
  String []rates = request.getParameterValues("rate");

   if(names!=null){
       for(int i=0;i<names.length;i++){
           out.println("<br/>" + names[i] + " " + rates[i]);
       }
   }
%>

<form method="post">
    <table>
        <tr>
            <th>Name</th>
            <th>Rate</th>
        </tr>
        <%
        for(int i =1;i<=5;i++)
        {
            %>
            <tr>
                <td>
                    <input type="text" name="name"/>
                </td>
                 <td>
                    <input type="text" name="rate"/>
                </td>
            </tr>
            <%
        }
        %>
    </table>


    <input type="submit" 
           name="cmd"
           value="Select"/>

</form>

