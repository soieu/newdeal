package common;

import java.sql.Statement;

import javax.servlet.ServletContext;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JDBConnect {
	public Connection con; // db와 연결 담당
	public Statement stmt; // 정적 쿼리문 실행 시 사용
	public PreparedStatement psmt; // 동적 쿼리문 실행 시 사용
	public ResultSet rs; // select 쿼리문의 결과를 저장할 때 사용
	
	public JDBConnect(ServletContext application) {
		try {
			
			String driver = application.getInitParameter("OracleDriver");
			Class.forName(driver);
			
			String url = application.getInitParameter("OracleURL");
			String id = application.getInitParameter("OracleId");
			String pwd = application.getInitParameter("OraclePwd");
			con = DriverManager.getConnection(url, id, pwd);
			
			System.out.println("DB 연결 성공(인수생성자2)");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	public void close() {
		try {
			if(rs!=null) rs.close();
			if(stmt!=null) stmt.close();
			if(psmt!=null) psmt.close();
			if(con!=null) con.close();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
