<%
  String play = request.getParameter("play");
  String read = request.getParameter("read");
  String sing = request.getParameter("sing");
  
  if(play == null)
      play = "";
  if(read == null) read = "";
  if(sing == null) sing = "";
  
  out.println(play);
  out.println(read);
  out.println(sing);
%>
 
<form method="post">
    <p>Hobbies</p>
    
       <br/> Play <input type="checkbox" 
                      name="play" 
                      <%=play.equals("Play") ? "checked='checked'" : "" %>
                      value="Play"/>
        <br/> Read  <input type="checkbox" 
                      name="read" 
                      <%=read.equals("Read") ? "checked='checked'" : "" %>
                      value="Read"/>
         <br/> Sing <input type="checkbox" 
                      name="sing" 
                      <%=sing.equals("Sing") ? "checked='checked'" : "" %>
                      value="Sing"/>
    
  <input type="submit" 
         name="cmd"
         value="Select"/>
 
</form>
