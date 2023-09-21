<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Task Allocation</title>
</head>
<%@ include file="connect.jsp" %>
<body>
<%
try{
	
	String old=request.getParameter("old");
	String newpassword=request.getParameter("new");
	PreparedStatement ps=con.prepareStatement("update admindata set password=? where password=?");
	ps.setString(1,newpassword);
	ps.setString(2,old);
	int n=ps.executeUpdate();
	if(n==1){
		
		%>
		<script>alert("password changed sucessfully");</script>
		<jsp:forward page="admin.jsp"/>
	<% 
	}
	else{
		out.println("password not changed");
	}
	con.close();
	
}catch(Exception e){
	e.printStackTrace();
}

%>
</body>
</html>