<%
  String cmd = request.getParameter("cmd");

  if(cmd == null)
     cmd = "";    //erase the null

  if(cmd.equals("Add")){
     out.println("Add is pressed.");
  }
  else
  if(cmd.equals("Update")){
     out.println("Update is pressed.");
  }
%>
 
<form method="post">
  <input type="submit" 
         name="cmd"
         value="Add"/>
 <input type="submit" 
         name="cmd"
         value="Update"/>
 <input type="submit" 
         name="cmd"
         value="Search"/>
</form>
