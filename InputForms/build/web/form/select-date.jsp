<%
   String strDay  = request.getParameter("day");
   String strMonth  = request.getParameter("month");
   String strYear  = request.getParameter("year");
   
   int intDay =0 , intYear=0;
   String dateStr = "";
   if(strDay!=null){
       intDay = Integer.parseInt(strDay);
       intYear = Integer.parseInt(strYear);
       dateStr = strDay + "-" + strMonth + "-" + strYear;
       out.println(dateStr);
   }
   
   
%>
 
<form method="post">
    <p>
        Select date        
    </p>  
    <select name="day">
        <%
            for(int i=1;i<=31;i++)
            {
                if( i == intDay)
                   out.println("<option  selected='selected' >" + i + "</option>");
                else
                    out.println("<option>" + i + "</option>");
            }
            %>
    </select>
    <select name="month">
        <%
            for(String name : new String[]{"Jan","Feb","Mar","Apr","May"})
            {
                if( name.equals(strMonth))
                    out.println("<option selected='selected'>" + name + "</option>");
                else
                    out.println("<option>" + name + "</option>");
            }
            %>
    </select>
    <select name="year">
          <%
            for(int i=2001;i<=2031;i++)
            {
                 if( i == intYear)
                   out.println("<option  selected='selected' >" + i + "</option>");
                else
                    out.println("<option>" + i + "</option>");
            }
            %>
    </select>
  <input type="submit" 
         name="cmd"
         value="Select"/>
 
</form>
