<%
    String no = request.getParameter("no");
    String name = request.getParameter("name");
    String date = request.getParameter("date");

    Class.forName("oracle.jdbc.OracleDriver");
    java.sql.Connection cn = null;
    java.sql.PreparedStatement ps = null;
    java.sql.ResultSet rs = null;

    String cmd = request.getParameter("cmd");
    String message = "";
    if (cmd == null) {
        cmd = "";
        no = "";
        name = "";
        date = "";
    }

    if (cmd.equals("Add")) {
        cn = java.sql.DriverManager.getConnection("jdbc:oracle:thin:@localhost", "scott", "tiger");
        String sql = "insert into emp values (?,?,?)";
        ps = cn.prepareStatement(sql);
        ps.setInt(1, Integer.parseInt(no));
        ps.setString(2, name);
        ps.setDate(3, java.sql.Date.valueOf(date));

        ps.executeUpdate();

        message = "Employee added successfully";
    } else if (cmd.equals("Del")) {
        message = "Del button is pressed ( " + no + " " + name + " " + date + ")";
    } else if (cmd.equals("Update")) {
        message = "Uupdate button is pressed ( " + no + " " + name + " " + date + ")";
    }
%>    

<form method="post" action="emp-same.jsp">

    <br/>No : <input type="text"  value="<%=no%>"   name="no"/>
    <input type="submit" name="cmd" value="Search"/>
    <br/>Name : <input type="text" value="<%=name%>"  name="name"/>
    <br/>Date : <input type="text" value="<%=date%>"  name="date"/>

    <br/><input type="submit" name="cmd" value="Add"/>
    <input type="submit" name="cmd" value="Del"/>
    <input type="submit" name="cmd" value="Update"/>
</form>
<p>
    <%=message%>
</p>

<table>
    <thead>
        <tr>
            <th>No</th>
            <th>Name</th>
            <th>Date</th>
        </tr>
    </thead>
    <tbody>
        <%
            cn = java.sql.DriverManager.getConnection("jdbc:oracle:thin:@localhost", "scott", "tiger");
            String sql = "select * from emp";
            ps = cn.prepareStatement(sql);
            rs= ps.executeQuery();
            
            while(rs.next()){
                %>
                <tr>
                    <td><%=rs.getInt(1) %></td>
                    <td><%=rs.getString(2) %></td>
                    <td><%=rs.getDate(3) %></td>
                </tr>
                <%
            }
        %>
    </tbody>
</table>