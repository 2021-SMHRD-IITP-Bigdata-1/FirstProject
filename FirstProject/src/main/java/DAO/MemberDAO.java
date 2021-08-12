package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import VO.MemberVO;
import VO.PickVO;

public class MemberDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	MemberVO vo = null;
	PickVO vo2 = null;
	int cnt = 0;
	
	public void getConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String dbid = "cgi_4_6";
			String dbpw = "smhrd6";
			
			conn = DriverManager.getConnection(url, dbid, dbpw);
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	
	public void close() {
		try {
			if(rs != null) {
				rs.close();
			}
			if(psmt != null) {
				psmt.close();
			}
			if(conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int join(String id, String pw, String pwcheck, String gender, String birth) {
		
		try {
			getConn();

			String sql = "insert into member values(mem_seq.nextval, ?, ?, ?, ?)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, id);
			psmt.setString(2, pw);
			psmt.setString(3, gender);
			psmt.setString(4, birth);

			cnt = psmt.executeUpdate();
			
			if(cnt > 0) {
				System.out.println("insert 성공!");
			}else {
				System.out.println("insert 실패ㅜㅜ");
			}

		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			close();
		}
		
		return cnt;
	}

	public MemberVO login(String id, String pw) {
		
		try {
			getConn();

			// sql문 작성
			String sql = "select * from member where mem_id=? and mem_pw=?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, id);
			psmt.setString(2, pw);

			rs = psmt.executeQuery();

			while(rs.next()) {
				
				String getCode = rs.getString(1);
				String getId = rs.getString(2);
				String getGender = rs.getString(4);
				String getBirth = rs.getString(5);
				
				vo = new MemberVO(getCode, getId, getGender, getBirth);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			close();
		}
		
		return vo;
	}

	public int selectSymptom(String[] symptoms, String memCode) {
		
		try {
			getConn();

			String sql = "insert into member_pick values(pick_seq.nextval, ?, ?, ?, ?)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, memCode);
			
			psmt.setString(2, symptoms[0]);
			psmt.setString(3, symptoms[1]);
			psmt.setString(4, symptoms[2]);

			cnt = psmt.executeUpdate();
			
			if(cnt > 0) {
				System.out.println("insert 성공!");
			}else {
				System.out.println("insert 실패ㅜㅜ");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			close();
		}
		
		return cnt;
	}

	
	
	public PickVO selectPickNo(MemberVO vo) {
		
		try {
			getConn();

			// sql문 작성
			String sql = "select * from member_pick where mem_code = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, vo.getMemCode());

			rs = psmt.executeQuery();
			
			String getSymA = null;
			String getSymB = null;
			String getSymC = null;

			while(rs.next()) {
				
				getSymA = rs.getString(3);
				getSymB = rs.getString(4);
				getSymC = rs.getString(5);
				
				vo2 = new PickVO(getSymA, getSymB, getSymC);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			close();
		}
		
		return vo2;
	}
	
	
	
	
	
	
	
}
