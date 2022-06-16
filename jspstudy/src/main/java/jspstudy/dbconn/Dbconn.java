package jspstudy.dbconn;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dbconn {	
	
	private String url="jdbc:mysql://127.0.0.1:3306/mysql?serverTimezone=UTC&characterEncoding=UTF-8";
	private String user="root";
	private String password="1234";		

	public Connection getConnection() {
		Connection conn = null;			

	try {
		//등록한 드라이버중에 사용가능한 클래스 찾아서 생성
		Class.forName("com.mysql.cj.jdbc.Driver");
		//연결정보를 통해서 연결객체를 참조변수 conn에 담는다
		conn = DriverManager.getConnection(url, user, password);
	} catch (Exception e) {		
		e.printStackTrace();
	}	

	return conn;
	}
}
