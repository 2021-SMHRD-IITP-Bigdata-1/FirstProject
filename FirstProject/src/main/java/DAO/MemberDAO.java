package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import VO.MemberVO;
import VO.NutritionVO;
import VO.PickVO;
import VO.ProductVO;

public class MemberDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	MemberVO vo = null;
	PickVO vo2 = null;
	ProductVO vo3 = null;
	NutritionVO vo4 = null;
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
				System.out.println("insert ����!");
			}else {
				System.out.println("insert ���Ф̤�");
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

			// sql�� �ۼ�
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
			
			int symLength = symptoms.length;

			String sql = "";

			if(symLength == 3) {
				sql = "insert into member_pick values(pick_seq.nextval, ?, ?, ?, ?)";
				
			} else if(symLength == 2) {
				sql = "insert into member_pick values(pick_seq.nextval, ?, ?, ?, null)";
				
			} else {
				sql = "insert into member_pick values(pick_seq.nextval, ?, ?, null, null)";
			}

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, memCode);
			
			for(int i = 0; i < symLength; i++) {
				psmt.setString(i+2, symptoms[i]);
			}
			
			cnt = psmt.executeUpdate();
			
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

			// sql�� �ۼ�
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
	

	public ArrayList<ProductVO> selectAll() {
		
	    ArrayList<ProductVO> arr = new ArrayList<ProductVO>();
	    
	      try{
	    	 getConn();
	         
	         String sql = "select * from Product ORDER BY PDT_NUM";
	         
	         psmt = conn.prepareStatement(sql);
	         
	         rs = psmt.executeQuery();
	         
	         while(rs.next()) {
					
					String getpdtCode = rs.getString(1);
					String getpdtName = rs.getString(2);
					String getpdtBrand= rs.getString(3);
					String getpdtCountry = rs.getString(4);
					String getpdtPrice = rs.getString(5);
					String getpdtDiscPrice = rs.getString(6);
					String getpdtType = rs.getString(7);
					String getpdtDailyIntake = rs.getString(8);
					String getpdtOneIntake = rs.getString(9);
					String getpdtJung = rs.getString(10);
					String getpdtFree = rs.getString(11);
					String getpdtContent= rs.getString(12);
					String getpdtImg= rs.getString(14);
					
					
					vo3 = new ProductVO(getpdtCode,getpdtName, getpdtBrand, getpdtCountry, getpdtPrice, getpdtDiscPrice,getpdtType, getpdtDailyIntake, getpdtOneIntake, getpdtJung, getpdtFree, getpdtContent, getpdtImg);
					
	        
	        	 arr.add(vo3);
	        	 
	         }
	      }catch(Exception e){
	         e.printStackTrace();
	      }finally{
	    	 close();
	      }
	      return arr;
		
	}

	public String selectNutCode(String nutName) {
		
		String getNutCode = null;
		
		try {
			getConn();

			String sql = "select nut_code from nutrition where nut_name = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, nutName);

			rs = psmt.executeQuery();
			
			
			while(rs.next()) {
				
				getNutCode = rs.getString(1);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			close();
		}
		
		return getNutCode;
		
	}

	public ArrayList<ProductVO> selectProduct(String nutCode) {
		
		ArrayList<ProductVO> array = new ArrayList<ProductVO>();
		
		try {
			getConn();

			String sql = "select * from product where nut_code = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, nutCode);

			rs = psmt.executeQuery();
			
			while(rs.next()) {
				
				String getpdtCode = rs.getString(1);
				String getpdtName = rs.getString(2);
				String getpdtBrand= rs.getString(3);
				String getpdtCountry = rs.getString(4);
				String getpdtPrice = rs.getString(5);
				String getpdtDiscPrice = rs.getString(6);
				String getpdtType = rs.getString(7);
				String getpdtDailyIntake = rs.getString(8);
				String getpdtOneIntake = rs.getString(9);
				String getpdtJung = rs.getString(10);
				String getpdtFree = rs.getString(11);
				String getpdtContent= rs.getString(12);
				String getpdtImg= rs.getString(14);
				
				vo3 = new ProductVO(getpdtCode,getpdtName, getpdtBrand, getpdtCountry, getpdtPrice, getpdtDiscPrice,getpdtType, getpdtDailyIntake, getpdtOneIntake, getpdtJung, getpdtFree, getpdtContent, getpdtImg);

				
				array.add(vo3);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			close();
		}
		
		return array;
		
	}
	
	
	
	
	
}
