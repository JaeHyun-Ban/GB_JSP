<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	

	
	request.setCharacterEncoding("utf-8");
	String auth = (String)session.getAttribute("authYN");
	
	//인증 안된사람은 페이지에 못들어오게 막기
	if(session.getAttribute("authYN") == null){
		response.sendRedirect("auth.jsp");
		
	}
	
	//application객체의 예약 정보를 얻어온다 -- 예약된 공간 막는방법
	List<String> list = new ArrayList<>();
	if(application.getAttribute("list") != null){
		list = (List<String>) application.getAttribute("list");
	}
	
	
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application</title>
<!-- 스타일은 헤드에서 설정 -->

<style type="text/css">
	.mystyle{
	 text-align: center;
	}
	
</style>

</head>
<body>
	
	<!-- 
	태그를 선택하지 못하도록 처리하는 옵션 - disabled
	checkbox, radio를 꼭 선택하게 하는 옵션 - checked
	select태그에서 미리 선택하게 하는 옵션 - selected
	input태그에 반드시 값을 입력하세요 - required
	input태그를 읽기속성으로 변경 - readonly
	
	 -->
	
	<!-- 반복문을 이용한 박스 여러개 생성 -->
	<div class="mystyle">
		<h2>영화 좌석 예약</h2>
		<h4>예약할 좌석을 체크하세요</h4>
	
		
		<form action="reserve_ok.jsp" method="post">
			&nbsp;&nbsp;&nbsp;&nbsp;
			<% for(char c = 'A'; c <= 'Z'; c++) { %>
				<!-- html 마크업을 이용 -->
				<small><%=c %></small>&nbsp;&nbsp;
			<% } %>
			<br/>
			
			<% for(int i = 1; i <= 6; i++) { %>
				<%=i %>
				<%for(char c = 'A'; c <= 'Z'; c++) { %>
					<!-- 체크박스가 값을 가지고 있음 -->
					<!-- 체크박스에 체크를 못하게 하는 disabled -->
					<input type="checkbox" name="seat" value="<%=c %>-<%=i %>" 
						<%=list.contains(c+"-"+i) ? "disabled" : "" %>>
						<!-- 
						삼항 연산식이 굉장히 많이 사용되네  
						신박한데???? list.contains = boolean타입으로 반환
						-->
				<%} %>
				
				<!-- 3항 연산식 사용 >> 많이 사용한다고 함 -->
				<%= i == 3 ? "<br/>" : "" %>
				
				<br/>
			<% } %>
			
			<!-- botton에는 아무 의미도 없지만 자바스크립트를 함께 이용해서 사용하면 유용하다 -->
			<input type="submit" value="예약" >
			<!-- onclick에는 자바스크립트로 기능을 넣어주고 홀따움표로 작성해준다 -->
			<input type="button" value="처음으로" onclick="location.href = 'auth.jsp'"><br/>
			
			
		</form>
		
	</div>
	
	
</body>
</html>
















































