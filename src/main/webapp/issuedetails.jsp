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
String email=session.getAttribute("email").toString();
String title=request.getParameter("title");
String desc=request.getParameter("desc");
String categiry=request.getParameter("categiry");
String priority=request.getParameter("priority");
String severity=request.getParameter("severity");

try{
PreparedStatement ps=con.prepareStatement("insert into raiseissue(title,description,categiry,priority,severity,status,email) values(?,?,?,?,?,'pending',?");

ps.setString(1,title);
ps.setString(2,desc);
ps.setString(3,categiry);
ps.setString(4,priority);
ps.setString(5,severity);
int n=ps.executeUpdate();

if(n==1)
{
	
	%>
	<script>alert("Issue details added sucessfully");</script>
	<jsp:include page="employeehome.jsp"/>
   <% 
}
else
{
	%>
	<script>alert("not sucessfully done");</script>
	<jsp:include page="issuedetails.jsp"/>
	<%
	}
con.close();

}catch(Exception e){
	e.printStackTrace();
}

%>
</body>
</html>