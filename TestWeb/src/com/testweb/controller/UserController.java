package com.testweb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.testweb.bbs.service.BbsService;
import com.testweb.user.model.UserVO;
import com.testweb.user.service.GetMyPageServiceImpl;
import com.testweb.user.service.UserDeleteServiceImpl;
import com.testweb.user.service.UserJoinServiceImpl;
import com.testweb.user.service.UserLoginServiceImpl;
import com.testweb.user.service.UserService;
import com.testweb.user.service.UserUpdateServiceImpl;

@WebServlet("*.user")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		dispatcherServlet(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		dispatcherServlet(request, response);
	}

	protected void dispatcherServlet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 인코딩(맨처음)
		request.setCharacterEncoding("utf-8");

		// 요청 분기 구하기
		String uri = request.getRequestURI();// uri
		String conPath = request.getContextPath();// path값
		String command = uri.substring(conPath.length());// 중간주소

		// 분기 출력 확인
		System.out.println("command:" + command);

		// User의 서비스 기능 처리
		UserService service;
		BbsService service2;
		
		// MVC2- forward이동이 기본
		// 로그인 화면 처리
		if (command.equals("/user/login.user")) {
			request.getRequestDispatcher("user_login.jsp").forward(request, response);

			// 회원가입 화면 처리
		} else if (command.equals("/user/join.user")) {
			request.getRequestDispatcher("user_join.jsp").forward(request, response);
			
			// 마이페이지 화면 처리
		} else if (command.equals("/user/mypage.user")) {
			//작성한 게시글 가져오기
			service2 = new GetMyPageServiceImpl();
			service2.execute(request, response);
			
			request.getRequestDispatcher("user_mypage.jsp").forward(request, response);
			
			//마이페이지 상세정보 화면 처리
		} else if (command.equals("/user/mypageinfo.user")) {
			request.getRequestDispatcher("user_mypageinfo.jsp").forward(request, response);
			
			//정보수정 처리
		} else if(command.equals("/user/update.user")) {
			service = new UserUpdateServiceImpl();
			int result = service.execute(request, response);
			
			if(result == 1) {//성공
				response.sendRedirect("mypage.user");
			} else {//실패
				
			}
		
			// 회원가입 처리
		} else if (command.equals("/user/joinForm.user")) {

			service = new UserJoinServiceImpl();
			int result = service.execute(request, response);

			if (result == 1) {//중복o=1
				request.setAttribute("msg", "이미 가입된 회원입니다");
				request.getRequestDispatcher("user_join.jsp").forward(request, response);

			} else {//중복x=0
				response.sendRedirect("login.user");
			}
			
			//로그인 처리
		}else if(command.equals("/user/loginForm.user")) {
			service = new UserLoginServiceImpl();
			int result = service.execute(request, response);
			
			if(result == 1) {//성공
				response.sendRedirect("mypage.user");
			
			} else {//실패
				request.setAttribute("msg", "※아이디, 비밀번호를 다시 확인해주세요");
				request.getRequestDispatcher("login.user").forward(request, response);
			}
			
			//로그아웃 처리
		} else if(command.equals("/user/logout.user")) {
			HttpSession session = request.getSession();
			session.invalidate();//로그아웃
			response.sendRedirect(request.getContextPath());
			
		} else if(command.equals("/user/delete.user")) {
			service = new UserDeleteServiceImpl();
			int result = service.execute(request, response);
			
			if(result == 1) {
				//다시 로그인 화면으로
				response.sendRedirect("login.user");
			} else {
				request.setAttribute("msg", "다시 확인해주세요");
			}
			
			
		}
	}

}








































