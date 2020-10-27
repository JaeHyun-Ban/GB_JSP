<!-- 이것은 디렉티브 선언문, html의 내용물이 어떤 형식으로 지정되는가 가 작성되어 있다. -->
<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//Date
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	String now = sdf.format(date);
	
	
	//ArrayList
	ArrayList<String> list = new ArrayList<>();
	list.add("홍길자");
	list.add("홍길동");
	
	//HashMap
	HashMap<Integer, String> map = new HashMap<>();
	map.put(1, "홍길자");
	map.put(2, "홍길동");



%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 표현식과 스트립트릿을 이용해서 map데이터, list데이터를 '순서대로' 출력 -->
	날짜: <%=now %><br>
	리스트: <%=list.toString() %><br>
	<!-- key와 value값이 동시에 출력된다. -->
	해시맵: <%=map.toString() %><br>
	<hr/>
	<h4>리스트 순서대로 출력하기</h4>
	<% for(int i = 0; i < list.size(); i++){ %>
		<%=i + ": " + list.get(i) %><br>
	<% } %><br>
	
	
	해시맵을 순서대로 출력하기<br>
	<% for(int i = 1; i <= map.size(); i++){%>
		<%=i + ": " + map.get(i) %>
	<%} %>

	<hr/>
	
	<!-- Entry를 활용해서 HashMap출력하기  -->
	<% Set<Entry<Integer, String>> iter = map.entrySet();%>
	<!-- key와 value를 묶어서 동시에 하나씩 꺼내준다 -->
	<% for(Entry<Integer, String> e : iter){%>
		<%= e.getKey() %>
		<%= e.getValue() %><br>
	<% } %> 
			
	



</body>
</html>







































