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
			height : 500px;
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
			width : 60%;
		}
		.reviewRatings {
			width : 20%;
		}
		.reviewContent {
			height : 90%;
		}
		.reviewContent {
			padding : 10px;
		}


    </style>
</head>

<body>
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
                            <a href="./index.html">
                                <img src="img/logo.png" alt="">
                            </a>
                        </div>
                        <nav class="mobile-menu">
                            <ul>
                                <li><a href="./information1.html">효능/부위별 정보</a></li>
                                <li><a href="./information2.html">성분별 정보</a></li>
                                <li><a></a></li>
                                <li><a href="./product_comparison.html">제품 비교</a></li>
                                <li><a href="./login.html">로그인/회원가입</a></li>
                                <li class="search-btn search-trigger"><i class="fa fa-search"></i></li>
                                <li class="search-btn2 search-trigger"><i class="fa fa-heart"></i></li>
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
                <h2>검색</h2>
                <form action="#">
                    <input type="search" placeholder="영양제 성분을 입력하세요.">
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
                        <h2  class="information-text">성분별 정보</h2>
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
                    <h2 class="heading-section" style="bottom-margin: 10px;"><strong>[제품명] 리뷰</strong></h2>
                    <div class="section-title">
                       
                       	<div>
	                        <table>
	                        	<tr id="reviewRow1">
	                        		<td width="10%" style="text-align : center;">제목</td>
	                        		<td class="reviewTitle"></td>
	                        		<td width="10%" style="text-align : center;">평점</td>
	                        		<td class="reviewRating"></td>
	                        	</tr>
	                        	<tr id="reviewRow2">
	                        		<td class="reviewContent" colspan="4"></td>
	                        	</tr>
	                        </table>
	                        
                       	</div>
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
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
                            <li><a href="#">효능/부위별 정보</a></li>
                            <li><a href="#">성분별 정보</a></li>
                            <li><a href="#">제품비교</a></li>
                            <li><a href="./login.html">로그인/회원가입</a></li>
                        </ul>
                    </div>
                    <div class="subscribe-form">
                        <form action="#">
                            <input type="text" placeholder="영양제 성분을 입력하세요.">
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