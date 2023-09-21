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
String email=request.getParameter("email");
String password=request.getParameter("password");
try{
	PreparedStatement ps=con.prepareStatement("select * from employeedata where email=? and password=? and role='employee'");
	ps.setString(1,email);
	ps.setString(2,password);
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
		session.setAttribute("email",email);
		session.setAttribute("id",rs.getString(1));
		session.setAttribute("email",rs.getString(5));
		
		%>
		
		<jsp:forward page="employeehome.jsp"/>
		<% 
	}
	else{
		out.println("invalid password");
		%>
		<jsp:include page="employee.jsp"/>
		<% 
		
	}
con.close();
	
}catch(Exception e){
	e.printStackTrace();
}

%>

</body>
</html>