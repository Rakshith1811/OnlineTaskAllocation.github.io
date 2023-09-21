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
String name=session.getAttribute("name").toString();
String projectname=request.getParameter("projectname");
String email=request.getParameter("email");
String task=request.getParameter("task");
String date=request.getParameter("fromdate");
String date1=request.getParameter("todate");

try{
PreparedStatement ps=con.prepareStatement("insert into addtask(projectname,email,task,fromdate,todate,status,managername) values(?,?,?,?,?,'pending',?)");

ps.setString(1,projectname);
ps.setString(2,email);
ps.setString(3,task);
ps.setString(4,date);

ps.setString(5,date1);
ps.setString(6,name);

int n=ps.executeUpdate();

if(n==1)
{
	
	%>
	<script>alert("Project details added sucessfully");</script>
	<jsp:include page="managerhome.jsp"/>
   <% 
}
else
{
	%>
	<script>alert("not sucessfully");</script>
	<jsp:include page="addtask.jsp"/>
	<%
	}
con.close();

}catch(Exception e){
	e.printStackTrace();
}

%>
</body>
</html>