<%@page import="com.session.User"%>
<%@page import="com.session.UserRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//접근 금지
	if(session.getAttribute("login") == null){
		response.sendRedirect("login01.jsp");
	}
	
	//★세션은 어디서든지 받아서 사용할 수 있다. >> 이게 쿠키랑 다르게 좋네
	User user = (User)session.getAttribute("login");
	
	UserRepository.deleteUser(user.getId());
	session.invalidate();//세션 삭제
	
	//다시 로그인 페이지로 이동
	response.sendRedirect("login01.jsp");


%>