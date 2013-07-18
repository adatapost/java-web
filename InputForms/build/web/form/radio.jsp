<%
  String gender = request.getParameter("gender");
  out.println(gender);
%>
 
<form method="post">
    <p>Gender</p>
    <p>
        Male : <input type="radio" name="gender" value="Male"/>
        Female : <input type="radio" name="gender" value="Female"/>
    </p>
    
  <input type="submit" 
         name="cmd"
         value="Select"/>
 
</form>
