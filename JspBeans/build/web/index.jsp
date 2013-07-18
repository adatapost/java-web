<jsp:useBean id="emp" class="in.abc.Emp">
    <jsp:setProperty name="emp" property="*"/>
</jsp:useBean>


<form method="post">
    <p>ID</p>
    <p><input type="text" name="id"/></p>
    
    <p>Name</p>
    <p><input type="text" name="name"/></p>
    
     <p>Join Date</p>
    <p><input type="text" name="joinDate"/></p>
    
    <p>
        <input type="submit"/>
    </p>
</form>

<hr/>
<br/>ID : <jsp:getProperty name="emp" property="id"/>
<br/>Name : <jsp:getProperty name="emp" property="name"/>
<br/>Join Date : <jsp:getProperty name="emp" property="joinDate"/>