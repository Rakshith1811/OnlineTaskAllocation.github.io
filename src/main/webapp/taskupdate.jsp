<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Online Task Allocation</title>
</head>
<%@ include file="connect.jsp" %>
<body>
     <%
	String id=request.getParameter("id");


     try{
    		PreparedStatement ps=con.prepareStatement("update addtask set status='completed' where id=?");
    		ps.setString(1,id);
    		int n=ps.executeUpdate();
    		if(n==1){
    			%>
    			<script>alert(" status updated sucessfully");</script>
    			<jsp:include page="task.jsp"/>
    			<% 
    		}
    		else{
    			out.println("status update unsuccessfull");

    			%>
    					<jsp:include page="task.jsp"/>
    			
    			<% 
    		}
    		con.close();
     }
    		catch(Exception e){
    			e.printStackTrace();
    		}
    		%>
 
</body>
</html>