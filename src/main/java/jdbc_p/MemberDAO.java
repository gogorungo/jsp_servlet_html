package jdbc_p;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

public class MemberDAO {

	Connection con;
	// Statement stmt; // 보안상 문제가 있다
	PreparedStatement stmt; // 보안적용
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

			// stmt = con.createStatement();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public ArrayList<MemberDTO> list(int marriage) {
		ArrayList<MemberDTO> res = new ArrayList<MemberDTO>();

		sql = "SELECT * FROM member WHERE marriage = " + marriage;

		try {
			stmt = con.prepareStatement(sql);

			rs = stmt.executeQuery();

			while (rs.next()) {
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
		} finally {
			close();
		}

		return res;
	}

	// 보안상 문제가 있다. 중간에 txt 로 명령어만 투입해도 간섭가능
	public int insert(MemberDTO dto) {
		int res = 0;

		/*
		 * sql = "INSERT INTO member" +"(pid, pname, pw, age, marriage,reg_date) VALUES"
		 * +"('"+dto.pid +"','"+dto.pname +"','"+dto.pw +"',"+dto.age
		 * +","+dto.getMarriageInt() +",SYSDATE())";
		 */
		
//		sql = "INSERT INTO member (pid, pname, pw, age, marriage, reg_date) VALUES " 
//				+ "(?,?,?,?,?,SYSDATE())";

		sql = "INSERT INTO member (pid, pname, pw, age, marriage, reg_date) VALUES " 
		+ "(?,?,?,?,?,?)";

		System.out.println(sql);
		try {

			stmt = con.prepareStatement(sql);

			stmt.setString(1, dto.pid);
			stmt.setString(2, dto.pname);
			stmt.setString(3, dto.pw);
			stmt.setInt(4, dto.age);
			stmt.setInt(5, dto.getMarriageInt());
			
			Date date = new Date();
			Object oDate = new Timestamp(date.getTime());
			stmt.setObject(6, oDate);

			res = stmt.executeUpdate();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}

		return res;
	}
	
	public int insert2(MemberDTO dto) {
		int res = 0;

		sql = "INSERT INTO member (pid, pname, pw, age, marriage, reg_date, pic, myff) VALUES " 
		+ "(?,?,?,?,?,?,?,?)";

		System.out.println(sql);
		try {

			stmt = con.prepareStatement(sql);

			stmt.setString(1, dto.pid);
			stmt.setString(2, dto.pname);
			stmt.setString(3, dto.pw);
			stmt.setInt(4, dto.age);
			stmt.setInt(5, dto.getMarriageInt());
			stmt.setString(7, dto.pic);
			stmt.setString(8, dto.myff);
			
			Date date = new Date();
			Object oDate = new Timestamp(date.getTime());
			stmt.setObject(6, oDate);

			res = stmt.executeUpdate();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}

		return res;
	}

	public MemberDTO detail(MemberDTO dto) {
		MemberDTO res = null;
		// 보안상 문제가 있다
		// sql = "SELECT * FROM member WHERE pid = '"+dto.pid+"' and pw = '"+dto.pw+"'";

		sql = "SELECT * FROM member WHERE pid = ? and pw = ? ";

		try {
			stmt = con.prepareStatement(sql);

			// value 만 된다. 구조는 넣을 수 없다 (테이블명, 필드명 등으로 대체 불가)
			// 시큐어 코딩 (보안코딩)
			stmt.setString(1, dto.pid);
			stmt.setString(2, dto.pw);

			rs = stmt.executeQuery();

			if (rs.next()) {
				res = new MemberDTO();
				res.setPid(rs.getString("pid"));
				res.setPname(rs.getString("pname"));
				res.setAge(rs.getInt("age"));
				res.setMarriage(rs.getInt("marriage"));
				// date로 가져오면 데이터가 사라진다
				res.setReg_date(rs.getTimestamp("reg_date"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}

		return res;
	}

	public void close() {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
			}
		}
		if (stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
			}
		}
	}
}
