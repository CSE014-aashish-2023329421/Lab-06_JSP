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
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "SACHIN9838a");
	Statement statement=connection.createStatement(); 
	ResultSet set=statement.executeQuery("SELECT * FROM mydb.user");
	while(set.next()) // true - next data 
		{
			out.println(set.getInt("id")+"  "+set.getString(2));
		}
} catch (Exception e) {
	
	System.out.println(e);
}

%>
</body>
</html>