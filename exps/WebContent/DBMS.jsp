<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Database Management Systems</title>
</head>
<body>
<p>Welcome, <%=session.getAttribute("name")%></p>
<p>Here are some sub topics you can practice!</p>
<p><a href="ERM.jsp">Entity Relationship Model</a>
<p><a href="DBNstudy.jsp">Database Normalization notes</a>
<p><a href="logout.jsp">Logout</a>
</body>
</html>