<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Cookie[] cookies =  request.getCookies();
	
	//재로그인 확인용
	String re = null; //재로그인 확인용 변수
	String id_ck = ""; //아이디 저장할 변수
	if(cookies != null){
		for(Cookie c : cookies){
			if(c.getName().equals("relogin")){
				re = c.getName();
			} else if(c.getName().equals("id_check")){ //아이디기억하기
				id_ck = c.getValue();
			}
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
	
	<h2>쿠키연습</h2>
	
	<% if(re != null){ %>
		<h3>!다시 로그인하세요!</h3>
	<% } %>
	
	<form action="cookie_login_ok.jsp" method="post">
		<!-- input에 value는 미리 공간을 채워 넣어준다 -->
		아이디: <input type="text" name="id" value="<%=id_ck %>" required><br>
		비밀번호: <input type="password" name="pw" required><br>
		<input type="submit" value="로그인">	
		<input type="checkbox" name="idCheck" value="y">아이디기억하기
		<!-- 현제 페이지에서 쿠키를 바로 생성하려면 자바스크립트로 만들어야한다 -->
	</form>
	
</body>
</html>






































