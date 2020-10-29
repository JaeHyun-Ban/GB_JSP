<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. Date클래스를 이용해서 xxxx년xx월xx일
	쿠키이름은 show쿠키로 생성해주세요
	*/
	
	Date date = new Date();//날짜 생성객체
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일");//만들고 싶은 날짜 패턴
	
	String format = sdf.format(date);//날짜형태 포맷
	
	Cookie cookie = new Cookie("show", format);//쿠키 포장
	cookie.setMaxAge(20);//쿠키 유통기한
	response.addCookie(cookie);//가져갈 때 쿠키 포장
	
	
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<a href="cookie02.jsp">cookie02.jsp로 이동!</a>
	
</body>
</html>








































