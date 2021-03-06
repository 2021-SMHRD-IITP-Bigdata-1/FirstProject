<%@page import="VO.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.MemberDAO"%>
<%@page import="VO.ReviewVO"%>
<%@page import="VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

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
    <style>
    	.heading-section {
    		margin-bottom : 10px;
    	}
    
		table {
			border : 3px solid gray;
			border-spacing : 5px;
			width : 100%;
			height : 400px;
		}
		td {
			border: 2px solid lightgray;
		}
		
		#reviewRow1 {
			font-size : 20px;
			
		}
		
		#reviewRow2 {
		
		}
		
		.reviewTitle {
			width : 55%;
		}
		.reviewRatings {
			width : 25%;
		}
		.reviewContent {
			height : 90%;
			font-size: 20px;
			padding : 25px;
		}
		#drop-content{
	        position: absolute;
	        z-index: 1;
        }
    	#drop-content a{
	        display:block;
	        font-size: 15px;
	        width: 150px;
	        background-color: #2e2929;
	        color: rgb(250, 250, 250);
	        text-decoration: none;
	        padding: 17px 12px;
	        margin: 2px 0px 0px 0px;
	        border-radius: 10%;
        }


    </style>
</head>

<body>
    <script>
        function dp_menu(){
            let click = document.getElementById("drop-content");
            if(click.style.display === "none"){
                click.style.display = "block";
    
            }else{
                click.style.display = "none";
    
            }
        }
    </script>

	<%
		MemberVO vo = (MemberVO)session.getAttribute("vo_session");
		
	
		MemberDAO dao = new MemberDAO();
		
		// ???? ?? ???????? ??????D ????
		int pdtCode = 1;
		
		ArrayList<ReviewVO> arr = dao.selectReview(pdtCode);
		
		String pdtName = dao.selectPdtName(pdtCode);
		
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
	                            <li><a href="./information1.jsp">????/?????? ????</a></li>
	                            <li><a href="./information2.jsp">?????? ???????????? </a></li>
	                            <li><a></a></li>
	                            <li><div class="dropdown">
                                    <i onclick="dp_menu()" class="search-btn2 fa">??????????</i>
	                                    <div style="display: none;" id="drop-content">
	                                        <a href='member_update.jsp'>????????????</a>
	                                        <a href='wishlist.jsp'  type="submit" onclick="LoginCheck()">????????</a>
	                                        <a href='member_ withdraw.jsp'>????????</a>
	                                    </div>
                                    </div>
                                    </li>
	                            <% if(vo == null) { %>
	                         		<li><a href="LoginJoin.jsp">??????/????????</a></li>
	                         	<% } else { %>
	                         		<li><a href="LogoutCon">????????</a></li>
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
                <h2>????</h2>
                <form action="#">
                    <input type="search" placeholder="?????? ?????? ??????????.">
                    <button type="submit">Search</button>
                </form>
            </div>
        </div>
    </div>
</section>
<!-- Search Bar End -->
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-area set-bg" data-setbg="img/nutrient.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-content">
                        <h2  class="information-text">?????? ????</h2>
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
                    <h3 class="heading-section" style="bottom-margin: 10px;"><strong>[<%= pdtName %>] ????</strong></h3>
                    <div class="section-title">
                       
                       
                       <% for(int i = 0; i < arr.size(); i++) { %>
                       			
                       			
                       			
                       	<div>
	                        <table>
	                        	<tr id="reviewRow1">
	                        		<td width="10%" style="text-align : center;">????</td>
	                        		<td class="reviewTitle"><%=arr.get(i).getTitle() %></td>
	                        		<td width="10%" style="text-align : center;">????</td>
	                        		<td class="reviewRating">
	                        		<% if(arr.get(i).getRating() > 80) { %>
	                        			<span style="width:45px; display:inline-block;"><img src="img/star.png"></span>
	                        			<span style="width:45px; display:inline-block;"><img src="img/star.png"></span>
	                        			<span style="width:45px; display:inline-block;"><img src="img/star.png"></span>
	                        			<span style="width:45px; display:inline-block;"><img src="img/star.png"></span>
	                        			<span style="width:45px; display:inline-block;"><img src="img/star.png"></span>
	                        		<% } else if(arr.get(i).getRating() > 60) { %>
	                        			<span style="width:45px; display:inline-block;"><img src="img/star.png"></span>
	                        			<span style="width:45px; display:inline-block;"><img src="img/star.png"></span>
	                        			<span style="width:45px; display:inline-block;"><img src="img/star.png"></span>
	                        			<span style="width:45px; display:inline-block;"><img src="img/star.png"></span>
	                        		
	                        		<% } else if(arr.get(i).getRating() > 40) { %>
	                        			<span style="width:45px; display:inline-block;"><img src="img/star.png"></span>
	                        			<span style="width:45px; display:inline-block;"><img src="img/star.png"></span>
	                        			<span style="width:45px; display:inline-block;"><img src="img/star.png"></span>
	                        		
	                        		<% } else if(arr.get(i).getRating() > 20) { %>
	                        			<span style="width:45px; display:inline-block;"><img src="img/star.png"></span>
	                        			<span style="width:45px; display:inline-block;"><img src="img/star.png"></span>
	                        		
	                        		<% } else if(arr.get(i).getRating() > 0) { %>
	                        			<span style="width:45px; display:inline-block;"><img src="img/star.png"></span>
	                        		<% } %>
	                        		
	                        		</td>
	                        	</tr>
	                        	<tr id="reviewRow2">
	                        		<td class="reviewContent" colspan="4" style=""><%=arr.get(i).getContent() %></td>
	                        	</tr>
	                        </table>
	                        
                       	</div>
                       	
                       <% } %>
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    </div>
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
                            <li><a href="#">????/?????? ????</a></li>
                            <li><a href="#">?????? ????</a></li>
                            <li><a href="#">????????</a></li>
                            <li><a href="./login.jsp">??????/????????</a></li>
                        </ul>
                    </div>
                    <div class="subscribe-form">
                        <form action="#">
                            <input type="text" placeholder="?????? ?????? ??????????.">
                            <button type="submit">Search</button>
                        </form>
                    </div>
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