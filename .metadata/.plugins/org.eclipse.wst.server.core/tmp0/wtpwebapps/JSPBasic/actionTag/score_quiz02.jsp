<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	앞에서 넘어온 폼값을 받아서 평균을 구한다
	평균이 60이상 - score_quiz03으로 이동, 평균과 이름을 출력
	평균이 60이하 - score_quiz04으로 이동, "~님은 불합격입니다" 출력
	
	조건: 세션을 사용하지 않는다.
	
	*/
	
	request.setCharacterEncoding("utf-8"); //인코딩
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	
	double avg = (kor+eng+math)/3.0; //평균값
	
	//다음 화면으로 넘겨줄 용도
	request.setAttribute("avg", avg);
	
	
	
	if(avg >= 60){
		//액션태그 보다는 이걸 사용하도록 하자
		request.getRequestDispatcher("score_quiz03.jsp").forward(request, response);
		
	}else {
		request.getRequestDispatcher("score_quiz04.jsp").forward(request, response);
		
	}
	
%>
<%-- 	if(avg >= 60){
%>
		<jsp:forward page="score_quiz03.jsp" />			
<%
	} else {
%>	
		<jsp:forward page="score_quiz04.jsp" />
<% }%> --%>
