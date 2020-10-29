<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 아이디, 비밀번호, nick을 받습니다.
	2. 아이디와 비밀번호가 동일하다면 아이디정보, 이름정보를 저장하는 세션을 생성.
		session_welcome페이지로 이동해서 `id(이름) 님 환영합니다 `출력
	3. 틀린경우는 로그인페이지로 이동
		
	*/
	request.setCharacterEncoding("utf-8");//꼭해주기

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	
	if(id.equals(pw)){
		session.setAttribute("id", id);
		session.setAttribute("nick", nick);
		
		response.sendRedirect("session_welcome.jsp");
	} else {
%>		
		<script type="text/javascript">
			//alert - 경고창을 띄워줌
			alert("아이디와 비밀번호를 확인하세요");
			location.href = "session_login.jsp"; //redirect와 같은 기능
		</script>
<%
		session.setAttribute("re", "다시 로그인하세요");
		response.sendRedirect("session_login.jsp");
		
	}
%>






















