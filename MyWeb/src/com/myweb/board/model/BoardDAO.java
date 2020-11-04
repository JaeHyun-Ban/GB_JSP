package com.myweb.board.model;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.myweb.util.JdbcUtil;

public class BoardDAO {
	
	//DAO + VO = Model
	
	//싱글톤 형식
	//UserDAO는 불필요하게 여러개 만들어질 필요가 없기 때문에 
	//한개의 객체만 만들어 지도록  Singleton형식으로 설계한다.
	
	//1. 나 자신의 객체를 생성햇 1개로 제한단다.
	private static BoardDAO instance = new BoardDAO();
	//>static = '1개'
	
	//2. 직접 객체를 생성할 수 없도록 생성자에도 private
	private BoardDAO() {
		//생성자를 생성시 마다 드라이버 로드
		//드라이버 로드
		try {	
//			Class.forName("oracle.jdbc.driver.OracleDriver"); //커넥션 풀
			//커넥션 풀을 얻는 작업
			InitialContext ctx = new InitialContext(); //초기설정 정보가 저장되는 객체
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle"); 
			//java:comp/env/ > 필수 경로
			//DataSource - javax.sql
			
		} catch (Exception e) {
			System.out.println("드라이버 호출 에러 발생");
			e.printStackTrace();
		}
	}
	
	//3. 외부에서 객체생성을 요구할 때 getter메서드를 통해 1번의 객체를 반환
	public static BoardDAO getInstance()	{
		return instance;
	}
	
	private DataSource ds;
	
	//멤버변수 선언
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	//등록하고 끝낼꺼니  void
	public void regist(String writer, String title, String content) {
		
		String sql = "insert into board(bno, writer, title, content) "
						+ "values(board_seq.nextval, ?, ?, ?)";
		
		try {
			//연결객체 생성
			conn = ds.getConnection();
			
			//pstmt생성
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, writer);
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			pstmt.executeUpdate();//등록 실패시 에러페이지 실행
			
		} catch (Exception e) {
			System.out.println("regist()메서드 에러 발생");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
	}

	public ArrayList<BoardVO> getList() {
		
		ArrayList<BoardVO> list = new ArrayList<>();
		//★가장 마지막에 들어간 데이터 = "최신글"
		//따라서 번호를 내림차순으로 리스트에 담아야 한다
		
		String sql = "SELECT * FROM board ORDER BY bno DESC";//내림차순으로 조회
		
		try {
			conn = ds.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardVO vo = new BoardVO();
				vo.setBno(rs.getInt("bno"));
				vo.setWriter(rs.getString("writer"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setRegdate(rs.getTimestamp("regdate"));
				vo.setHit(rs.getInt("hit"));
//				int bno = rs.getInt("bno");
//				String writer = rs.getString("writer");
//				String title = rs.getString("title");
//				String content = rs.getString("content");
//				Timestamp regdate = rs.getTimestamp("regdate");//java.sql
//				int hit = rs.getInt("hit");
//				
//				BoardVO vo = new BoardVO(bno, writer, title, content, regdate, hit);
				list.add(vo);
			}
			
			
		} catch (Exception e) {
			System.out.println("getList()에서 에러 발생");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return list;
	}

	public BoardVO getContent(String bno) {
		
		BoardVO vo = new BoardVO();
		
		/*
		 * 번호 기준으로 select구문으로 조회해서 BoardVO에 저장하고,
		 * vo이름으로 화면에 데이터를 전달
		 */
		
		String sql = "SELECT * FROM board WHERE bno = ?";
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareCall(sql);
			pstmt.setString(1, bno);
			rs = pstmt.executeQuery();
			
			//글을 한개만 볼꺼라 if로 충분하다
			if(rs.next()) {
				vo.setBno(rs.getInt("bno"));
				vo.setWriter(rs.getString("writer"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setRegdate(rs.getTimestamp("regdate"));
				vo.setHit(rs.getInt("hit"));
			}
			
			
		} catch (Exception e) {
			System.out.println("getContent()에서 에러 발생");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return vo;
	}
	
	
	
	
	
	
}


















































