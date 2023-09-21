<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="connect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Task Allocation</title>
</head>
<body>
<%
try{
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String subject=request.getParameter("subject");
	String message=request.getParameter("message");
	PreparedStatement ps=con.prepareStatement("insert into contactform(name,email,subject,message) values(?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(3,subject);
	ps.setString(4,message);
	int n=ps.executeUpdate();
	if(n==1){
		
		%>
		<script>alert("message submitted sucessfully");</script>
		<jsp:include page="contact.jsp"/>
	   <% 
	}
	
	con.close();
}catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>