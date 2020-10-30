<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	/* String avg = request.getParameter("avg"); */
	double avg = (double)request.getAttribute("avg");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>합격했습니다!</h2>
	
	이름:<%=name %><br/>
	평균:<%=avg %>
	
	
</body>
</html>