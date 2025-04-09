<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String id=request.getParameter("t1");
String name=request.getParameter("t2");
int idint=Integer.parseInt(id);
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "SACHIN9838a");
	Statement statement=connection.createStatement(); 
	String query="UPDATE `user` SET `name` = '"+name+"' WHERE (`id` = '"+idint+"')";
	int i=0;
	i=statement.executeUpdate(query);
	if(i!=0)
	{
		response.sendRedirect("displaydata.html");
	}
	else
	{
		response.sendRedirect("updatedata.html");
	}
	
} catch (Exception e) {
	
	System.out.println(e);
}
%>
</body>
</html>