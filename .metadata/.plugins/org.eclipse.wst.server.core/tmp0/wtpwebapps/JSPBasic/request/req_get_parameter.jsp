<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//get방식은 서버에서 자동으로 utf-8 인코딩 해주도록 한다
	//server.xml의 Connector에 URIEncoding="utf-8"로  설정해주면 된다.
	//하지만 tomcat8버전 부터는 utf-8을 자동으로 바꿔준다
	
	//form으로 전송된 데이터를 받음.
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String email = request.getParameter("email");
	String major = request.getParameter("major");
	
	//여러 값을 받는법 - getParameterValues
	String[] inter = request.getParameterValues("inter");
	
	String phone1 = request.getParameter("phone1");
	String txt = request.getParameter("txt");
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>req_get_form에서 넘어온 파라미터값</h2><br>
	아이디: <%=id %><br>
	비밀번호: <%=pw %><br>
	이메일: <%=email %><br>
	전공: <%=major %><br>
	관심분야: <%=Arrays.toString(inter) %><br>
	통신사: <%=phone1 %><br>
	글: <%=txt %><br>
	
	
	
	
	
</body>
</html>





































































