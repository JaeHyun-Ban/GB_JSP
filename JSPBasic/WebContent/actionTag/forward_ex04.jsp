<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String name = (String)request.getAttribute("name");
	//>get파라미터와, get어트리뷰트는 다르니까 주의하도록
	
	//새로고침을 해도 주소를 통해 다시 받은 값이 실행될 뿐이다

%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	포워드로 넘어온 ID:<%=id %><br/>
	서블릿에서 추가한 리퀘스트 name:<%=name %>
	
</body>
</html>