<%
 String no = request.getParameter("no");
 String name = request.getParameter("name");
 String date = request.getParameter("date");

 String cmd = request.getParameter("cmd");
  int mno  =0;
  if(no != null)
  {
      try
      {
         mno = Integer.parseInt(no);
      }catch(Exception ex){}
  }
  
  java.sql.Date joinDate = null;
  if(date!=null){
      try{
          joinDate = java.sql.Date.valueOf(date);
      }catch(Exception ex){}
  }
 out.println("<br/>" + mno + " " + name + " " + joinDate + " " + cmd);
%>
