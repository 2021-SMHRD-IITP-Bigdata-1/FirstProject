<%@page import="VO.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="VO.ProductVO"%>
<%@page import="DAO.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="TopGym Template">
    <meta name="keywords" content="TopGym, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>About Us | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,300i,400,500,700,900" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/style1.css">

    <style>
        img{ 
            width: auto;
            height: 100px;
            padding: auto;
            box-sizing: border-box;
            object-fit: contain;
            }    
        td { 
        	text-align: center;
        	width: 200px;
        
         }   
       .vertical {
        display: -ms-grid !important;
        -ms-grid-rows: auto auto !important;
        -ms-grid-columns: auto auto !important;
      }
      .vertical thead {
        -ms-grid-row: 3 !important;
        -ms-grid-column: 1 !important;
      }
      .vertical tbody {
        -ms-grid-row: 3 !important;
        -ms-grid-column: 2 !important;
      }
      .vertical caption {
        -ms-grid-row: 3 !important;
        -ms-grid-column: 1 !important;
        -ms-grid-column-span: 2 !important;
      }
        
      /* Everyone Else's Grid */
      @supports (display: grid) {
         .vertical {
           display: grid !important;
           grid-template-columns: min-content min-content !important;
           grid-template-rows: auto auto !important;
           grid-template-areas:
             "caption caption"
             "head body";
         }
         .vertical thead {
           grid-area: head !important;
         }
         .vertical tbody {
           grid-area: body !important;
         }
         .vertical caption {
           grid-area: caption !important; 
         }
      }
      /* Flex - Cross Browser CSS */
         .vertical thead {
           flex-direction: column
           display: flex;
           flex-shrink: 0;
           min-width: min-content;
         }
         .vertical tbody {
             display: flex;
         }
         .vertical tr {
           display: flex;
           flex-direction: column;
           min-width: min-content;
           flex-shrink: 0;
         }
         .vertical td, .vertical th {
           display: block;
         }
         .vertical caption {
           display: block;
         }
            .table {
  min-width: 1000px !important;
  width: 100%;
  border-collapse: separate;
  border-spacing: 0 10px; }
  .table thead th {
    border: none;
    padding: 30.8px;
    font-size: 14px;
    color: #fff; }
  .table tbody tr {
    margin-bottom: 10px;
    -webkit-box-shadow: 0px 5px 12px -12px rgba(0, 0, 0, 0.29);
    -moz-box-shadow: 0px 5px 12px -12px rgba(0, 0, 0, 0.29);
    box-shadow: 0px 5px 12px -12px rgba(0, 0, 0, 0.29); }
  .table tbody th, .table tbody td {
    border: none;
    padding: 31px;
    font-size: 14px;
    background: #fff; }
  .table tbody td .close span {
    font-size: 12px;
    color: #dc3545; }
         
    </style>
</head>

<body>
	<%
		MemberVO vo = (MemberVO)session.getAttribute("vo_session");
	%>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="main-menu">
                        <div class="logo">
                            <a href="./index.jsp">
                                <img src="img/logo.png" alt="">
                            </a>
                        </div>
                        <nav class="mobile-menu">
                            <ul>
	                            <li><a href="./information1.jsp">효능/부위별 정보</a></li>
	                            <li><a href="./information2.jsp">성분별 영양제품비교 </a></li>
	                            <li><a></a></li>
	                            <li><div class="dropdown">
	                                <i onclick="dp_menu()" class="search-btn2 fa">마이페이지</i>
	                                 <div style="display: none;" id="drop-content">
	                                     <a href='member_update.jsp'>회원정보수정</a>
	                                     <a href='wishlist.jsp'>즐겨찾기</a>
	                                     <a href='member_ withdraw.jsp'>회원탈퇴</a>
	                                 </div>
	                                </div>
	                                </li>
	                            <% if(vo == null) { %>
	                         		<li><a href="LoginJoin.jsp">로그인/회원가입</a></li>
	                         	<% } else { %>
	                         		<li><a href="LogoutCon">로그아웃</a></li>
	                         	<% } %>
	                            <li class="search-btn search-trigger"><i class="fa fa-search"></i></li>
                           	</ul>
                        </nav>
                        <div id="mobile-menu-wrap"></div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header End -->
    <!-- Search Bar Begin -->
    <section class="search-bar-wrap">
        <span class="search-close"><i class="fa fa-close"></i></span>
        <div class="search-bar-table">
            <div class="search-bar-tablecell">
                <div class="search-bar-inner">
                    <h2>Search</h2>
                    <form action="#">
                        <input type="search" placeholder="Type Keywords">
                        <button type="submit">Search</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- Search Bar End -->
    
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-area set-bg" data-setbg="img/breadcrumb-bg.jpg">
        <div class="container">
            <div>
                <div class="information-text">
                    <div class="breadcrumb-content">
                        <h2>국내/국외 영양제 비교분석</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    <!-- About Us Begin -->
    <section class="about-us-area spad-2">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <section class="ftco-section">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div>
                                    <h2 class="heading-section"><strong>영양제 비교분석</strong></h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-wrap">
                                        <table class="table vertical">
                                          <thead class="thead-dark">
                                            <tr>
                                              <th></th>
                                              <th></th>
                                              <th>Name</th>
                                              <th>Brand</th>
                                              <th>Country</th>
                                              <th>Price</th>
                                              <th>Sale</th>
                                              <th>Type</th>
                                              <th>Daily Intake</th>
                                              <th>One Intake</th>
                                              <th>Quantity</th>
                                              <th>Allergen</th>
                                              <th>Content</th>
                                              <th>Review</th>
                                              <th>Favorite</th>
                                              
                                            </tr>
                                          </thead>
                                          <tbody>
                     <%
                     MemberDAO dao = new MemberDAO();
                     ArrayList<ProductVO> arr = dao.selectAll();
               
                     for(int i= 102;  i<108; i++){
		             	out.println("<tr>");
	                  	out.println("<td>");
		                %>
		                  <img src=<%=arr.get(i).getPdtImg()%>>
		                  <%
		                  out.println("</td>");
		                  out.println("<td>"+arr.get(i).getPdtName()+"</td>");
		                  out.println("<td>"+arr.get(i).getPdtBrand()+"</td>");
		                  out.println("<td>"+arr.get(i).getPdtCountry()+"</td>");
		                  out.println("<td>"+arr.get(i).getPdtPrice()+"</td>");
		                  out.println("<td>"+arr.get(i).getPdtDiscPrice()+"</td>");
		                  out.println("<td>"+arr.get(i).getPdtType()+"</td>");
		                  out.println("<td>"+arr.get(i).getPdtDailyIntake()+"</td>");
		                  out.println("<td>"+arr.get(i).getPdtOneIntake()+"</td>");
		                  out.println("<td>"+arr.get(i).getPdtJung()+"</td>");
		                  out.println("<td>"+arr.get(i).getPdtFree()+"</td>");
		                  out.println("<td>"+arr.get(i).getPdtContent()+"</td>");
                  

                        %>
                        
                        <td>
                            <input type="button" value="Review"> 
                        </td>
                      	<td>
                            <input type="button"  value="Add"> 
                        </td>
                        
                  		<%
                        out.println("</td>");
                    }
                        %>
                     </tbody>
                                      </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                
                    <script src="js/jquery.min.js"></script>
                  <script src="js/popper.js"></script>
                  <script src="js/bootstrap.min.js"></script>
                  <script src="js/main.js"></script>
                     </div>
            </div>
            
        </div>
    </section>
    <!-- About Us End -->
    

  
    <!-- Footer Section Begin -->
    <footer class="footer-section set-bg" data-setbg="img/footer-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer-content">
                        <div class="footer-logo">
                            <a href="#"><img src="img/logo.png" alt=""></a>
                        </div>
                        <div class="footer-menu">
                            <ul>
                                <li><a href="./information1.jsp">효능/부위별 정보</a></li>
                                <li><a href="#">성분별 정보</a></li>
                                <li><a href="#">제품비교</a></li>
                                <li><a href="./login.jsp">로그인/회원가입</a></li>
                            </ul>
                        </div>
                        <div class="subscribe-form">
                            <form action="#">
                                <input type="text" placeholder="영양제 성분을 입력하세요.">
                                <button type="submit">Search</button>
                            </form>
                        </div>

                        <div class="footer-icon-img">
                            <img src="img/footer-icon.png" alt="">
                        </div>
                        <div class="copyright">
                           <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/circle-progress.min.js"></script>
    <script src="js/jquery.barfiller.js"></script>
    <script src="js/main.js"></script>
</body>

</html>