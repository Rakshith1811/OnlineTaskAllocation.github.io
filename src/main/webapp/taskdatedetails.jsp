<%@ page  import="java.util.*,java.text.*"  import="java.text.SimpleDateFormat" import="java.util.Date" import="java.util.Calendar"%>
<%@ include file="adminheader.jsp" %>
<%@ include file="connect.jsp" %>
    <!-- end header -->
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>Today Task Details<br> </h2>
            </div>
          </div>
        </div>
      </div> </section><br><br>
      
      <%

      Date date = Calendar.getInstance().getTime();  
      DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
      String strDate = dateFormat.format(date); 
      	System.out.println(strDate);
 
try{
	
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from addtask where fromdate='"+ strDate +"'");
	
	
	out.println("<table border='1' cellpadding='15'><thead><tr><th>id</th><th>projectname</th><th>email</th><th>task</th><th>fromdate</th><th>todate</th><th>status</th><th>managername</th></tr></thead><tbody>");
	while(rs.next()){
		String date1=rs.getString(1);

		out.println("<tr>");
		out.println("<td>"+rs.getString(1)+"</td>");
		out.println("<td>"+rs.getString(2)+"</td>");
		out.println("<td>"+rs.getString(3)+"</td>");
		out.println("<td>"+rs.getString(4)+"</td>");
		out.println("<td>"+rs.getString(5)+"</td>");
		out.println("<td>"+rs.getString(6)+"</td>");
		out.println("<td>"+rs.getString(7)+"</td>");
		out.println("<td>"+rs.getString(8)+"</td>");
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