<%@page import="javax.websocket.SendResult"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//서버측 - 인증문자 값이 맞는지 확인 처리
	/*
	올바른 인증값을 적은 경우는 reverse.jsp로 이동
	
	올바른 인증값을 적은 경우 authYN이름으로 인증성공세션을 생성
	
	올바르지 않은경우는 다시 인증페이질 이동
	*/

	request.setCharacterEncoding("utf-8");
	String auth = (String)session.getAttribute("auth");
	String code = request.getParameter("code");

	if(auth.equals(code)){//올바른 인증값
		
		session.setAttribute("authYN", "y");//인증성공세션
		response.sendRedirect("reserve.jsp");
		
	} else{//틀린 인증값
		//다시 인증페이지
%>
		<script type="text/javascript">
			alert("인증값이 틀렸습니다");
			location.href = "auth.jsp";
		</script>
<%
	}

%>
































































