<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//로그아웃 처리를 해주는 페이지
	//인증 정보 삭제
	//session.invalidate();//모든 세션정보 삭제
	response.sendRedirect("session_login.jsp");//다시 로그인페이지로 이동

%>