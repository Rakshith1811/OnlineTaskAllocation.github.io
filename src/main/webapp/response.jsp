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
String response1=request.getParameter("response");
String status1=request.getParameter("status");



     try{
    		PreparedStatement ps=con.prepareStatement("update raiseissue set response=?,status=? where id=?");
    		ps.setString(1,response1);
    		ps.setString(2,status1);
    		ps.setString(3,id);

    		int n=ps.executeUpdate();
    		if(n==1){
    			%>
    			<script>alert(" status updated sucessfully");</script>
    			<jsp:include page="issues.jsp"/>
    			<% 
    		}
    		else{
    			out.println("status update unsuccessfull");

    			%>
    					<jsp:include page="response.jsp"/>
    			
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