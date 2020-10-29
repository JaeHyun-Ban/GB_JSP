<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//쿠키 = servlet에서 제공함
	//쿠키의 사용법
	
	//쿠키생성
	Cookie cookie = new Cookie("choco", "초코칩쿠키이이");
	Cookie cookie2 = new Cookie("mint", "민트초코쿠키");
	
	//쿠키 유통기한 생성
	cookie.setMaxAge(20); //20초
	cookie2.setMaxAge(30);
	
	//응답객체에 쿠키 담기
	response.addCookie(cookie);
	response.addCookie(cookie2);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<a href="rcookie_basic_get.jsp">쿠키 사용(get)</a>
	
</body>
</html>





















































