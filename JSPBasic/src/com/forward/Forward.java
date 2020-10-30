package com.forward;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Forward")
public class Forward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Forward() {
        super();
     
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		System.out.println(id);
		
		//request에다가 강제로 값을 저장
		request.setAttribute("name", "홍길동");
		
		
		
		//자바에서 forward를 사용할 때는
		RequestDispatcher dp = request.getRequestDispatcher("actionTag/forward_ex04.jsp");
		dp.forward(request, response);//지정된 페이지로 넘어간다. 
		
		
//		response.sendRedirect("actionTag/forward_ex04.jsp");
		//>sendRedirect는 새로운 요청으로 새롭게 보낸다
		
		
		
	}

}




















































