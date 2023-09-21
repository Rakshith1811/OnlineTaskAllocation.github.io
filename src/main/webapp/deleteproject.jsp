<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	int id=Integer.parseInt(request.getParameter("id"));
	
	PreparedStatement ps=con.prepareStatement("delete from addproject where id=?");
	ps.setInt(1,id);
	int n=ps.executeUpdate();
	if(n==1)
	{
		%>
		<jsp:forward page="viewproject.jsp"/>
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