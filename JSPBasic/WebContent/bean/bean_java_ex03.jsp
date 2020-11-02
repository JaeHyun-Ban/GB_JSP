<%@page import="com.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%
	//3번째 페이지 - forward니까 getAttribute로 꺼내줌
	User u = (User)request.getAttribute("user");
	
 

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	ID:<%=u.getId() %><br/>
	PW:<%=u.getPw() %><br/>
	NAME:<%=u.getName() %><br/>
	Email:<%=u.getEmail() %><br/>





</body>
</html>

















































