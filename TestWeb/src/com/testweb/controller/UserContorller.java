package com.testweb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.testweb.user.service.UserService;


@WebServlet("*.user")
public class UserContorller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UserContorller() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		dispacherServlcet(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		dispacherServlcet(request, response);
	}
	
	
	protected void dispacherServlcet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		//인코딩(맨처음)
		request.setCharacterEncoding("utf-8");
		
		//요청 분기 구하기
		String uri = request.getRequestURI();//uri
		String conPath = request.getContextPath();//path값
		String command = uri.substring(conPath.length());//중간주소
		
		//분기 출력 확인
		System.out.println("uri: " + uri);
		System.out.println("conPath:" + conPath);
		System.out.println("command: " + command);
		
		//User의 서비스 기능 처리
		UserService service;
		
		//MVC2- forward이동이 기본
		if(command.equals("/user/login.user")) {//로그인 화면 요청
			request.getRequestDispatcher("user_login.jsp").forward(request, response);
			
		} else if(command.equals("/user/join.user")) {//회원가입 화면 요청
			request.getRequestDispatcher("user_join.jsp").forward(request, response);
			
		} 
		
		
		
		
	}
	

}























































