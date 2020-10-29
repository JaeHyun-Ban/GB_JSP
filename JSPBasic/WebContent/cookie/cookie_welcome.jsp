<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies(); //쿠키 얻어오고
	
	String id = null; //null로 해줘야 조건식하기 편함
	if(cookies != null) { //쿠키가 비어있는지 꼭 확인
		for(Cookie c : cookies){
			if(c.getName().equals("user_id")){
				id = c.getValue(); //값
			}
		}	
	}
	
	if(id == null){
		out.println("쿠키가 만료되었습니다.");//??????
		response.sendRedirect("cookie_login_ok.jsp");
	}


%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2><%=id %>님 환영합니다!</h2>
	
	<a href="cookie_login.jsp">로그인 페이지로 돌아가기</a>

</body>
</html>







































