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
	

String empid=request.getParameter("empid");
String empname=request.getParameter("empname");
String jobrole=request.getParameter("jobrole");
String email=request.getParameter("email");
String doj=request.getParameter("doj");
String salary=request.getParameter("salary");
String gender=request.getParameter("gender");
try{
	PreparedStatement ps=con.prepareStatement("update employeedata set empid=?,empname=?,jobrole=?,dateofjoining=?,salary=?,gender=? where email=?");
	ps.setString(1,empid);
	ps.setString(2,empname);
	ps.setString(3,jobrole);
	ps.setString(4,doj);
	ps.setString(5,salary);
	ps.setString(6,gender);
	ps.setString(7,email);
	
	
	int n=ps.executeUpdate();
	if(n>0){
		%>
		<script>alert("updated sucessfully");</script>
		<jsp:include page="employeehome.jsp"/>
		<% 
	}
	else{

		%>
				<script>alert("updated unsucessfully");</script>
		
				<jsp:include page="employeedetailsupdate.jsp"/>
		
		<% 
	}
	con.close();
}catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>