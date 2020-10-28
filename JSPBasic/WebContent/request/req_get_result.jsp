<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//강제로 보내진 값을 받기
	String path = request.getContextPath();
	StringBuffer url = request.getRequestURL();
	String uri = request.getRequestURI();
	
	String name = request.getParameter("name");
	String number = request.getParameter("number");
	String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>전송받은 파라미터들</h2>
	<table style="border: 1">
		<tr>
			<td>이름: <%=name%></td>
			<td>이곳은 다음칸</td>
		</tr>
		<tr>
			<td>번호: <%=number%></td>
		</tr>
		<tr>
			<td>아이디: <%=id%><br></td>
		</tr>
		<tr>
			<td>path: <%=path%><br></td>
		</tr>
		<tr>
			<td>url: <%=url%></td>
		</tr>
		<tr>
			<td>uri: <%=uri %></td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>
	</table>
</body>
</html>
















































