<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Online Task Allocation</title>
</head>
<%@ include file="connect.jsp" %>
<body>

<%
String username=request.getParameter("uname");
String password=request.getParameter("password");
try{
	PreparedStatement ps=con.prepareStatement("select * from admindata where username=? and password=?");
	ps.setString(1,username);
	ps.setString(2,password);
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
		session.setAttribute("uname",username);
		%>
		<jsp:forward page="adminhome.jsp"/>
		<% 
	}
	else{
		out.println("invalid password");
		%>
		<jsp:include page="admin.jsp"/>
		<% 
		
	}
con.close();
	
}catch(Exception e){
	e.printStackTrace();
}

%>



</body>
</html>