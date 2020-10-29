<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 아이디, 비밀번호를 받는다.
	2. id = abc, pw = 1234라면 로그인 성공이라고 간주 
	(user_id, id)를 저장하는 쿠키를 생성, cookie_welcome페이지로 리다이렉트
	3. 아이디와 비밀번호가 다르다면, 다시 로그인 페이지로 리다이렉트
	4. welcome페이지 에서는 쿠키값을 꺼내서 "id님 환영합니다"를 출력
	*/
	
	//인코딩 빼먹지 말아주기
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String idCheck = request.getParameter("idCheck");//아이디 기억하기 checkbox
	
	
	Cookie cookie = null;
	
	if(id.equals("abc") && pw.equals("1234")){//로그인 성공
		cookie = new Cookie("user_id", id);
		cookie.setMaxAge(60);
		response.addCookie(cookie);
		
		//idCheck = y라면 아이디를 기억하는 쿠키를 생성
		//if(idCheck.equals("y")){ //이것보단
		if(idCheck != null) {//null이 아닐때라고 하는게 더 안전하다
			Cookie cookie2 = new Cookie("id_check", id);
			cookie2.setMaxAge(60 * 60 * 24); //하루
			response.addCookie(cookie2);
		}
		
		response.sendRedirect("cookie_welcome.jsp");
		
	} else { //로그인 실패
		cookie = new Cookie("relogin", "");
		cookie.setMaxAge(60);
		response.addCookie(cookie);
		response.sendRedirect("cookie_login.jsp");
	}
	
	
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>










</body>
</html>




















































