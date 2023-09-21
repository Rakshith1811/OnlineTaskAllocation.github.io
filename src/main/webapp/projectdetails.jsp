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
String title=request.getParameter("title");
String desc=request.getParameter("desc");
String fromdate=request.getParameter("fromdate");
String todate=request.getParameter("todate");
String tech=request.getParameter("tech");
String managername=request.getParameter("managername");


try{
PreparedStatement ps=con.prepareStatement("insert into addproject(title,description,fromdate,todate,technologies,managername) values(?,?,?,?,?,?)");

ps.setString(1,title);
ps.setString(2,desc);
ps.setString(3,fromdate);
ps.setString(4,todate);
ps.setString(5,tech);
ps.setString(6,managername);


int n=ps.executeUpdate();

if(n==1)
{
	
	%>
	<script>alert("Project details added sucessfully");</script>
	<jsp:include page="adminhome.jsp"/>
   <% 
}
else
{
	%>
	<script>alert("not sucessfully");</script>
	<jsp:include page="addproject.jsp"/>
	<%
	}
con.close();

}catch(Exception e){
	e.printStackTrace();
}

%>
</body>
</html>