<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//쿠키 사용하기
	//쿠키는 서버에 요청 - 쿠키 자동 전송	
	//보낸 쿠키들 받기
	Cookie[] cookies = request.getCookies();
	
	//쿠키 조건 검사
	if(cookies != null) {//받은 쿠키가 없다면
		for(Cookie c : cookies){
			out.println("쿠키이름: " + c.getName() + "<br>");
			out.println("쿠키값 : " + c.getValue() + "<br><hr/>");
		}
		
	}



%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>re</h2>
</body>
</html>