<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	show쿠키가 있다면 쿠키가 가지고 있는 날짜를 화면에 출력
	만약 쿠키가 없다면 "쿠키가 없네용~"을 출력
	*/
	
	//쿠키꺼내주기
	Cookie[] cookies =  request.getCookies();
	
	String date = null;
	if(cookies != null){
		for(Cookie c : cookies) {
			if(c.getName().equals("show")){
				date = c.getValue();
			}
		}
		/* for(int i = 0; i < cookies.length; i++){
			name = cookies[i].getName(); 
		} */
	}
	
	
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>cookie02.jsp에 어서오세요!</h2>
	
	<% if(date == null) { %>
		
		쿠키가 없네용!
	
	<% } else { %>
		
		<%=date %>
		
	<% } %>
</body>
</html>
































