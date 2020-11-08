package com.testweb.user.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class UserDAO {
	
	private DataSource ds;//server.xml에 설정한 값 얻어오기
	
	//멤버변수
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	
	//1.싱글톤 - 중요(static)
	private static UserDAO instance = new UserDAO();
	
	//2.기본생성자 생성할 수 없도록 막기
	private UserDAO() {
		
		//생성자 생성시마다 드라이버 로드
		try {
			InitialContext ctx = new InitialContext();//초기설정정보
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
			
		} catch (Exception e) {
			System.out.println("드라이버 호출 에러 발생");
			e.printStackTrace();
		}
	}
	
	
	//3.외부에서 객체 생성을 요구할 때 getter메서드를 통해 1번 객체를 반환
	public static UserDAO getInstance() {
		return instance;
	}
	
	
	
	
	
	
}














































