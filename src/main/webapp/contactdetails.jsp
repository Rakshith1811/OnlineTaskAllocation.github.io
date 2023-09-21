<%@ include file="adminheader.jsp" %>
<%@ include file="connect.jsp" %>
    <!-- end header -->
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>Contact Details<br> </h2>
            </div>
          </div>
        </div>
      </div> </section><br><br>
      
<%

try{
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from contactform");
	out.println("<script src='hi.js'></script>");
	out.println("<table border='1' cellpadding='15'><thead><tr><th>id</th><th>name</th><th>email</th><th>subject</th><th>message</th><th>Edit</th></tr></thead><tbody>");
	while(rs.next()){
		out.println("<tr>");
		out.println("<td>"+rs.getString(1)+"</td>");
		out.println("<td>"+rs.getString(2)+"</td>");
		out.println("<td>"+rs.getString(3)+"</td>");
		out.println("<td>"+rs.getString(4)+"</td>");
		out.println("<td>"+rs.getString(5)+"</td>");
		out.println("<td><a onclick='return valid();'href='deletecontact.jsp?id="+rs.getString(1)+"'>Delete</a></td>");
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