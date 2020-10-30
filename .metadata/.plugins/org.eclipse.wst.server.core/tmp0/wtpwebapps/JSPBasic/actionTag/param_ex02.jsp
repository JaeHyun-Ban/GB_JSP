<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!--param - forward로 넘어갈 때 값을 실어서 보내준다  
	param태그는 request.setAttribute()와 기능이 같다.--> 
<jsp:forward page="param_ex03.jsp">
	<jsp:param value="홍길자" name="name"/>
	<!-- 이정도만 알면 되고 외울필요와 더 나아갈 필요는 없다 
		실제로는 사용중이지 않는다.
	-->
</jsp:forward>
