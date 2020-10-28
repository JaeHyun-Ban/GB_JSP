<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//post방식은 한글을 자동으로 처리해 주지않는다
	//그래서 인코딩을 직접 해준다.
	//requeset객체에서 값을 얻기 직전에 인코딩을 해주자
	request.setCharacterEncoding("utf-8");//꺼내기 직전 인코딩
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Hello World</h2>
	<h2>req_post_</h2>
	아이디: <%=id %><br/>
	비밀번호: <%=pw %>
</body>
</html>