<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public int total = 0; //누적
%>

<%	
	Random ran = new Random();
	int num = ran.nextInt(8)+2; // 2~9
	total++;
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<p>
		<%=total %>번째 방문자 입니다.<br>
		<% if(total % 10 == 0) { %>
			당첨 되었습니다.
		<% } %>
	</p>
	
	<h2>랜덤 구구단 <%=num %>단</h2>
	<p>
		<% for(int i = 1; i < 10; i++){ %>
			<%=num %> x <%=i %> = <%=i*num %><br>
		
		<% } %>
	</p>
	<!-- 구구단 4단 출력 -->




</body>
</html>