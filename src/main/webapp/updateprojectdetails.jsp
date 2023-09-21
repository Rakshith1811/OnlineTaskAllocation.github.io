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
String title=request.getParameter("title");
String desc=request.getParameter("desc");
String fromdate=request.getParameter("fromdate");
String todate=request.getParameter("todate");
String tech=request.getParameter("tech");
String managername=request.getParameter("managername");

try{
	PreparedStatement ps=con.prepareStatement("update addproject set title=?,description=?,fromdate=?,todate=?,technologies=?,managername=? where id=?");
	ps.setString(1,title);
	ps.setString(2,desc);
	ps.setString(3,fromdate);
	ps.setString(4,todate);
	ps.setString(5,tech);
	ps.setString(6,managername);
	
	ps.setString(7,id);
	int n=ps.executeUpdate();
	if(n==1){
		%>
		<script>alert("updated sucessfully");</script>
		<jsp:include page="viewproject.jsp"/>
		<% 
	}
	else{
		out.println("update unsuccessfull");

		%>
				<jsp:include page="updateprojectdetails.jsp"/>
		
		<% 
	}
	con.close();
}catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>