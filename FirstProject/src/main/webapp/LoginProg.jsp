<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>LoginProgram</title>
</head>
<body>
   <%
      request.setCharacterEncoding("euc-kr");
   
      String id = request.getParameter("id");
      String pw = request.getParameter("pw");
      
      Connection conn = null;
      PreparedStatement psmt = null;
      ResultSet rs = null;
      try{
         
         Class.forName("oracle.jdbc.driver.OracleDriver");
         
        
         String url = "jdbc:oracle:thin:@localhost:1521:xe";
         String dbid = "";
         String dbpw = "";
         
        
         conn = DriverManager.getConnection(url, dbid, dbpw);
         
         
         String sql = "select name from member where id=? and pw=?";
         
         psmt = conn.prepareStatement(sql);
         
         psmt.setString(1, id);
         psmt.setString(2, pw);
         
         rs = psmt.executeQuery();
         
         
         if(rs.next()){
            String get_name = rs.getString("name");
            
            response.sendRedirect("loginSuccess.jsp");
         }else{
            response.sendRedirect("loginFail.jsp");
         }
      }catch(Exception e){
         e.printStackTrace();
      }finally{
         try{
           
            rs.close();
            psmt.close();
            conn.close();
         }catch(Exception e){
            e.printStackTrace();
         }
      }
      
   %>
</body>
</html>


