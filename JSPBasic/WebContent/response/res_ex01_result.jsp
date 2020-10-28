<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	//이곳은 값(파라미터)을 처리하는 공간인데
	//이곳은 servlet으로 대체해서 사용 가능하다.
	request.setCharacterEncoding("utf-8");//한글 인코딩처리
	
	String name = request.getParameter("name");
	String age = request.getParameter("age");
  
	//age에 다른 결과페이지를 보여주고 싶다면??
	int a = Integer.parseInt(age);
	
	if(a >= 20){
		response.sendRedirect("res_ex01_ok.jsp");//URL주소 입력
	} else {
		response.sendRedirect("res_ex01_no.jsp");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 경로 이름은 복사를 이용하기 > 오류를 줄임-->
	
	
	
	
	
</body>
</html>