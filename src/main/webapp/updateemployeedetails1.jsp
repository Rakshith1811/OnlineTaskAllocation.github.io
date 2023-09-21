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
	
String id=request.getParameter("id");
String projectid=request.getParameter("projectid");
String email=request.getParameter("email");
String jobrole=request.getParameter("jobrole");
String validupto=request.getParameter("validupto");


try{
	PreparedStatement ps=con.prepareStatement("update addemployee set projectid=?,email=?,jobrole=?,validupto=? where id=?");
	ps.setString(1,projectid);
	ps.setString(2,email);
	ps.setString(3,jobrole);
	ps.setString(4,validupto);
	
	
	ps.setString(5,id);
	int n=ps.executeUpdate();
	if(n==1){
		%>
		<script>alert("updated sucessfully");</script>
		<jsp:include page="viewemployeedetail.jsp"/>
		<% 
	}
	else{
		out.println("update unsuccessfull");

		%>
				<jsp:include page="updateemployeedetails1.jsp"/>
		
		<% 
	}
	con.close();
}catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>