<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Task Allocation</title>
</head>
<%@ include file="connect.jsp" %>
<%
	
String id=request.getParameter("id");
String empid=request.getParameter("empid");
String empname=request.getParameter("empname");
String jobrole=request.getParameter("jobrole");
String email=request.getParameter("email");
String doj=request.getParameter("doj");
String salary=request.getParameter("salary");
String gender=request.getParameter("gender");
try{
	PreparedStatement ps=con.prepareStatement("update employeedata set empid=?,empname=?,jobrole=?,email=?,dateofjoining=?,salary=?,gender=? where id=?");
	ps.setString(1,empid);
	ps.setString(2,empname);
	ps.setString(3,jobrole);
	ps.setString(4,email);
	ps.setString(5,doj);
	ps.setString(6,salary);
	ps.setString(7,gender);
	ps.setString(8,id);
	int n=ps.executeUpdate();
	if(n==1){
		%>
		<script>alert("updated sucessfully");</script>
		<jsp:include page="viewdetails.jsp"/>
		<% 
	}
	else{
		out.println("update unsuccessfull");

		%>
				<jsp:include page="updatedata.jsp"/>
		
		<% 
	}
	con.close();
}catch(Exception e){
	e.printStackTrace();
}
%>
