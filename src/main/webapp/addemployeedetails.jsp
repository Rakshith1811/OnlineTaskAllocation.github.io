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
String projectid=request.getParameter("projectid");
String email=request.getParameter("email");
String jobrole=request.getParameter("jobrole");
String validupto=request.getParameter("validupto");

try{
PreparedStatement ps=con.prepareStatement("insert into addemployee(projectid,email,jobrole,validupto) values(?,?,?,?)");

ps.setString(1,projectid);
ps.setString(2,email);
ps.setString(3,jobrole);
ps.setString(4,validupto);
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
	<jsp:include page="addemployee.jsp"/>
	<%
	}
con.close();

}catch(Exception e){
	e.printStackTrace();
}

%>

</body>
</html>