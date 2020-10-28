<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 처리하는 곳 -->
<%
	/*
	1. id, pw를 받아서 처리.
	2. id가 abc1234, 비밀번호가 xxx123 라면 로그인 성공이라고 간주
	>res_ex02_welcome.jsp로 리다이렉트
	3. id가 틀린경우
	> res_ex02_id_fail.jsp로 리다이렉트
	4. pw가 틀린경우
	> res_ex02_pw_fail.jsp로 리다이렉트. 각각 결과문구들을 출력.
	*/
	
	request.setCharacterEncoding("utf-8");//utf-8
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id.equals("abc1234") && pw.equals("xxx123")){
		
		response.sendRedirect("res_ex02_welcome.jsp"); //로그인 성공
		
	} else if(!id.equals("abc1234")){
		
		response.sendRedirect("res_ex02_id_fail.jsp"); //아이디 틀림
		
	} else if(!pw.equals("xxx123")){
		
		response.sendRedirect("res_ex02_pw_fail.jsp"); //pw틀림
	}



%>


























































