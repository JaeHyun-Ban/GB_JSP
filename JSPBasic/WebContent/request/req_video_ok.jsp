<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- iframe으로 화면을 채울꺼다 -->
	
	<!-- 앞에서 어떤 동영상을 클릭하냐에 따라, 각각 알맞은 동영상이 보여지도록 처리 -->
	
	<div align="center">
		<h2>강의영상</h2>
		<hr>
		<%if(name == null) { %>
			<p>잘못된 접근...^^;</p>
		<%} else if(name.equals("java")){ %>
			<p>자바 수업 소개</p>
			<iframe width="560" height="315" src="https://www.youtube.com/embed/SXX2cnmL0Ng" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		<%} else if(name.equals("js")){ %>
			<p>자바스크립트 수업 소개</p>
			<iframe width="560" height="315" src="https://www.youtube.com/embed/h8JHXJI919k" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		<%} else if(name.equals("oracle")) {%>
			<p>오라클 설치과정</p>
			<iframe width="560" height="315" src="https://www.youtube.com/embed/DEVR_R2Hva0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		<%} %>
	</div>
	
	
	
	
	
</body>
</html>