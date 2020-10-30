<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//예약된 좌석값을 받기
	//예약정보 = list로 저장
	//>중복된 예약정보가 있는지 확인
	//>>새로운 list에 추가
	//예약 <ㅡ> 담기
	//>length or size로 비교
	//>list.addAll사용
	
	request.setCharacterEncoding("utf-8");
	//1.좌석 정보를 받는다
	String[] seats = request.getParameterValues("seat"); 
	
	//2.좌석정보를 저장할 List생성
	List<String> list = new ArrayList<>(); //최종 저장용
	
	
	//3.application에서 좌석정보가 존재하면 2번 리스트에 저장>>??????
	if(application.getAttribute("list") != null){
		list = (List<String>)application.getAttribute("list");
		Collections.sort(list);
		//>노란줄은 어쩔 수 없이 생기는 구나.....
	}
	
	//4.좌석정보를 비교해서, 중복이 없다면 하나씩 저장할 사본리스트를 생성
	//>좌석정보와 2번 리스트를 비교해 중복된 좌석이 아니라면, 2번 리스트에 좌석전부를 추가
	List<String> temp = new ArrayList<>(); //잠깐 담을용
	for(String s : seats){
		if(list.contains(s)) { //포함된 경우
			break;//>?
		} else {
			temp.add(s);//>'!'
		}
	}
	
	//5.사본리스트와 좌석정보의 길이가 같다면 중복이 없으므로
	//>2번 리스트에  사본리스트를 추가(addAll)
	if(temp.size() == seats.length){
		list.addAll(temp);
	} 
	
	//6.application에 같은 이름으로 저장
	application.setAttribute("list", list);
	//7.화면에 예약 성공실패의 결과를 출력해주세요.
	if(temp.size() == seats.length) {
%>
		<script type="text/javascript">
			alert("좌석이 예약되었습니다");
		</script>
<%
	} else {//예약실패
%>
		<script type="text/javascript">
			alert("이미 예약된 자리 입니다.");
			location.href="reserve.jsp";
		</script>	
<%
	}
	

	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<%-- <h3><b><%=temp.size() == seats.length ? "예약성공" : "예약실패" %></b></h3> --%>
		
		예약된 좌석 번호:
		[<% for(String s : seats){ %>
			<%=s %>
		<% } %>]<br/>
		
		
		
		<!-- input button과 동일한 용도 -->
		<button type="button" onclick="location.href = 'reserve.jsp'">다시 예약하기</button><br/>
		
	</div>
	
</body>
</html>













































