<%@ include file="adminheader.jsp" %>
<%@ include file="connect.jsp" %>

    <!-- end header -->
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>View Employee Details<br> </h2>
            </div>
          </div>
        </div>
      </div> </section><br><br>
      
      <%
try{
	
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from employeedata");
	out.println("<script src='hi.js'></script>");
	out.println("<table border='1' cellpadding='15'><thead><tr><th>id</th><th>empid</th><th>empname</th><th>jobrole</th><th>email</th><th>password</th><th>date of joining</th><th>salary</th><th>gender</th><th>role</th><th>Delete</th><th>Edit</th></tr></thead><tbody>");
	while(rs.next()){
		out.println("<tr>");
		out.println("<td>"+rs.getString(1)+"</td>");
		out.println("<td>"+rs.getString(2)+"</td>");
		out.println("<td>"+rs.getString(3)+"</td>");
		out.println("<td>"+rs.getString(4)+"</td>");
		out.println("<td>"+rs.getString(5)+"</td>");
		out.println("<td>"+rs.getString(6)+"</td>");
		out.println("<td>"+rs.getString(7)+"</td>");
		out.println("<td>"+rs.getString(8)+"</td>");
		out.println("<td>"+rs.getString(9)+"</td>");
		out.println("<td>"+rs.getString(10)+"</td>");
		
		out.println("<td><a onclick='return valid();'href='delete.jsp?id="+rs.getString(1)+"'>Delete</a></td>");
		out.println("<td><a href='update.jsp?id="+rs.getString(1)+"'>Edit</a></td>");
		out.println("</tr>");
	}
	out.println("</tbody></table>");
	con.close();
}catch(Exception e){
	e.printStackTrace();
}
%>     
   <br><br>
   <%@ include file="adminfooter.jsp" %>