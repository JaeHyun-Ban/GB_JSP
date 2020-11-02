<%@page import="com.myweb.user.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//접근 금지 설정해주기
	if(session.getAttribute("login") == null) {
		response.sendRedirect("login.jsp");
	} 
	request.setCharacterEncoding("utf-8");
	UserVO vo = (UserVO)session.getAttribute("login");
	//꺼내놓고 사용해도 됨
%>    

<%@ include file="../include/header.jsp" %>

<section>
	<div align="center">
		<h2>환영합니다</h2>
		<table>
			<tr>
				<td>아이디: <%=vo.getId() %><br/></td>
			</tr>
			<tr>
				<td>비밀번호: <%=vo.getPw() %></td>
			</tr>
			<tr>
				<td>이름: <%=vo.getName() %></td>
			</tr>
			<tr>
				<td>이메일: <%=vo.getEmail() %></td>
			</tr>
			<tr>
				<td>주소: <%=vo.getAddress() %></td>
			</tr>
		</table>
	
	</div>
</section>


<%@ include file="../include/footer.jsp" %>