
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	 
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		
		Connection conn=null;
		PreparedStatement psmt = null;
		
		try{
			 
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbid = "hr";
		String dbpw= "hr";

		  
		conn = DriverManager.getConnection(url, dbid,dbpw);
		

		String sql="insert into member values(?,?,?)";
		
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1,id);
		psmt.setString(2,pw);
		psmt.setString(3,name);


			int cnt = psmt.executeUpdate();
			if(cnt>0){
				response.sendRedirect("main.html");
			}
			
		}catch(Exception e){
			e.printStackTrace();
			response.sendRedirect("SignUp.html");
		}finally{
			 try{

			psmt.close();
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
			}
		}
		

	%>	
</body>
</html>