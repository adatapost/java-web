<%
  String gender = request.getParameter("gender");
  
  if(gender == null)
      gender = "";
  out.println(gender);
%>
 
<form method="post">
    <p>Gender</p>
    <p>
        Male : <input type="radio" 
                      name="gender" 
                      <%=gender.equals("Male") ? "checked='checked'" : "" %>
                      value="Male"/>
        Female : <input type="radio" 
                        name="gender" 
                        <%=gender.equals("Female") ? "checked='checked'" : "" %>
                        value="Female"/>
    </p>
    
  <input type="submit" 
         name="cmd"
         value="Select"/>
 
</form>
