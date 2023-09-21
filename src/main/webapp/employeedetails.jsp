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
String job=request.getParameter("jobrole");
String email=request.getParameter("email");
String password=request.getParameter("password");
String doj=request.getParameter("dateofjoining");
float salary=Float.parseFloat(request.getParameter("salary"));
String gender=request.getParameter("gender");
String role=request.getParameter("role");

try{	
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from employeedata where email='"+email+"'");

if(rs.next()){
	%>
	<script>alert("email alredy exist");</script>
	<jsp:include page="employeedata.jsp"/>
	
	<% 
}

else{
PreparedStatement ps=con.prepareStatement("insert into employeedata(empid,empname,jobrole,email,password,dateofjoining,salary,gender,role) values(?,?,?,?,?,?,?,?,?)");

ps.setString(1,empid);
ps.setString(2,empname);
ps.setString(3,job);
ps.setString(4,email);
ps.setString(5,password);
ps.setString(6,doj);
ps.setFloat(7,salary);
ps.setString(8,gender);
ps.setString(9,role);

int n1=ps.executeUpdate();

if(n1==1)
{
	
	%>
	<script>alert("Employee details added sucessfully");</script>
	<jsp:include page="adminhome.jsp"/>
   <% 
}
else
{
	%>
	<script>alert("not sucessfully");</script>
	<jsp:include page="employeedata.jsp"/>
	<%
	}
con.close();
}
}catch(Exception e){
	e.printStackTrace();
}

%>

</body>
</html>