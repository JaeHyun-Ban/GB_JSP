<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	//선언자와 스크립트릿의 차이
	//선언자 - 멤버변수(누적), 메서드를 선언할 때 사용
	public int total = 0;
	public int randomNum(){
		Random ran = new Random(); //import를 통해 사용한다
		int num = ran.nextInt(10); //0-9
		
		return num;
	}
%>
<%
	//스크립트릿 - JSP페이지 실행마다 한번씩 실행되는 코드
	int each = 0;//public은 사용할 수 없다
	total++;
	each++;
	//>새로고침마다 실행됨
	//>요즘나오는 SPA(싱글페이지 어플리케이션)에는 JSP가 잘 어울리지 않는다고 한다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	선언자값: <%= total %><br><!-- 누적됨 -->
	스크립트릿: <%= each %><br><!-- 누적 안됨 -->
	랜덤메서드: <%=randomNum() %><br>




</body>
</html>








































