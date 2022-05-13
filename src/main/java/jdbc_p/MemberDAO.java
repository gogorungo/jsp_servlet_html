package jdbc_p;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import bas.MemberDTO;

public class MemberDAO {
	
	Connection con;
	Statement stmt;
	ResultSet rs;
	String sql;
	
	public MemberDAO() {
		// 커넥터에서 사용하는 주소
		String url = "jdbc:mariadb://localhost:3306/comstudy21";
		String username = "user21";
		String password = "1234";
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			
			con = DriverManager.getConnection(url, username, password);
			
			stmt = con.createStatement();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}
	
	public ArrayList<MemberDTO> list(int marriage){
		ArrayList<MemberDTO> res = new ArrayList<MemberDTO>();
		
		sql = "SELECT * FROM member WHERE marriage = " + marriage;
		
		try {
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setPid(rs.getString("pid"));
				dto.setPname(rs.getString("pname"));
				dto.setAge(rs.getInt("age"));
				dto.setMarriage(rs.getInt("marriage"));
				// date로 가져오면 데이터가 사라진다
				dto.setReg_date(rs.getTimestamp("reg_date"));
				
				
				res.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	
	public void close() {
		if(rs!=null) {try {rs.close();} catch (SQLException e) {}	}
		if(stmt!=null) {try {stmt.close();} catch (SQLException e) {}	}
		if(con!=null) {try {con.close();} catch (SQLException e) {}}
	}
}
