<%@page import="VO.MemberVO"%>
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
    <title>성분별 영양소</title>

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
        img{ 
            width: 100px;
            height:auto;
            padding: auto;
            box-sizing: border-box;
            object-fit: contain;
            }    
        span.box{
            border: 3px solid rgb(60, 60, 238);
            border-radius: 50%;
            padding: 20px;
            margin: 20px;
        }                                                                
        p{
            text-align: center;
            font-weight: bold;
            color: black
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
	<%
		MemberVO vo = (MemberVO)session.getAttribute("vo_session");
	%>

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
        <header class="header-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-11">
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
		                                     <a href='wishlist.jsp'  type="submit" onclick="LoginCheck()">즐겨찾기</a>
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
                    <h2 class="heading-section"><stong>성분별</strong></h2>
                    <div class="section-title">
                       
                        <table>
                            <tr>
                                <td>     
                                    <span class="box">
                                        <img alt="" src="img/Info2/1.png" id="가르시니아" class="submit" />
                                    </span>
                                    <p>가르시니아</p>
                                </td>
                                <td>
                                    <span class="box">
                                        <img alt="" src="img/Info2/2.png" id="감마리놀렌산" class="submit" />
                                    </span>
                                    <p>감마리놀렌산</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/3.png" id="글루코사민" class="submit" />
                                    </span>
                                    <p>글루코사민</p> 
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/4.png" id="루테인" class="submit" />
                                    </span>
                                    <p>루테인</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/5.png" id="밀크씨슬" class="submit"/>
                                    </span>
                                    <p>밀크씨슬</p> 
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/6.png"/ id="보스웰리아" class="submit">
                                    </span>
                                    <p>보스웰리아</p>
                                </td>
                            </tr>
                            <br>
                            <tr>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/7.png" id="비타민 A" class="submit">
                                    </span>
                                    <p>비타민 A</p>
                                   
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/8.png" id="비타민 C" class="submit"/>
                                    </span>
                                    <p>비타민 C</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/9.png" id="비타민 D" class="submit">
                                    </span>
                                    <p>비타민 D</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/10.png" id="스피루리나" class="submit"/> 
                                    </span>
                                    <p>스피루리나</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/11.png" id="알로에겔" class="submit"/>
                                    </span>
                                    <p>알로에겔</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/12.png" id="엠에스엠" class="submit" />
                                    </span>
                                    <p>엠에스엠</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="box">
                                        <img alt="" src="img/Info2/13.png"  id="오메가3" class="submit">
                                    </span>
                                    <p>오메가3</p>
                                
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/14.png" id="은행잎" class="submit" />
                                    </span>
                                    <p>은행잎</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/15.png" id="차전자피" class="submit" />
                                    </span>
                                    <p>차전자피</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/16.png" id="카테킨" class="submit" />
                                    </span>
                                    <p>카테킨</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/17.png" id="칼슘" class="submit"/>
                                    </span>
                                    <p>칼슘</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/18.png" id="코큐텐" class="submit"/>
                                    </span>
                                    <p>코큐텐</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/19.png" id="콜라겐" class="submit"/>
                                    </span>
                                    <p>콜라겐</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/20.png" id="클로렐라" class="submit" />
                                    </span>
                                    <p>클로렐라</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/21.png" id="키토산" class="submit"/>
                                    </span>
                                    <p>키토산</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/22.png" id="프로바이오틱스" class="submit" />
                                    </span>
                                    <p>프로바이오틱스</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/23.png"  id="프로폴리스" class="submit"/>
                                    </span>
                                    <p>프로폴리스</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/24.png" id="홍삼" class="submit"/>
                                    </span>
                                    <p>홍삼</p>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-7">
                    <div class="about-text">
                        <p class="t-text"></p>
                        <div class="about-features">
                            <div class="about-features-item">
                                <div class="about-feature-img">
                                </div>
                                <div class="about-feature-text">
                                    <h4></h4>
                                    <p></p>
                                </div>
                            </div>
                            <div class="about-features-item">
                                <div class="about-feature-img">
                                </div>
                                <div class="about-feature-text">
                                    <h4></h4>
                                    <p> </p>
                                </div>
                            </div>
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
                            <li><a href="./information1.jsp">효능/부위별 정보</a></li>
                            <li><a href="#">성분별 영양제품비교</a></li>
                            <li><a href="./login.jsp">로그인/회원가입</a></li>
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
    
    <script type="text/javascript"> 
    document.getElementById("칼슘").onclick = function () { location.href = "product_comparison1.jsp";};
    document.getElementById("오메가3").onclick = function () { location.href = "product_comparison2.jsp";};
    document.getElementById("비타민 A").onclick = function () { location.href = "product_comparison3.jsp";};
    document.getElementById("글루코사민").onclick = function () { location.href = "product_comparison4.jsp";};
    document.getElementById("비타민 C").onclick = function () { location.href = "product_comparison5.jsp";};
    document.getElementById("비타민 D").onclick = function () { location.href = "product_comparison6.jsp";};
    document.getElementById("루테인").onclick = function () { location.href = "product_comparison7.jsp";};
    document.getElementById("프로바이오틱스").onclick = function () { location.href = "product_comparison8.jsp";};
    document.getElementById("알로에겔").onclick = function () { location.href = "product_comparison9.jsp";};
    document.getElementById("차전자피").onclick = function () { location.href = "product_comparison10.jsp";};
    document.getElementById("엠에스엠").onclick = function () { location.href = "product_comparison11.jsp";};
    document.getElementById("보스웰리아").onclick = function () { location.href = "product_comparison12.jsp";};
    document.getElementById("감마리놀렌산").onclick = function () { location.href = "product_comparison13.jsp";};
    document.getElementById("은행잎").onclick = function () { location.href = "product_comparison14.jsp";};
    document.getElementById("홍삼").onclick = function () { location.href = "product_comparison15.jsp";};
    document.getElementById("스피루리나").onclick = function () { location.href = "product_comparison16.jsp";};
    document.getElementById("클로렐라").onclick = function () { location.href = "product_comparison17.jsp";};
    document.getElementById("키토산").onclick = function () { location.href = "product_comparison18.jsp";};
    document.getElementById("카테킨").onclick = function () { location.href = "product_comparison19.jsp";};
    document.getElementById("가르시니아").onclick = function () { location.href = "product_comparison20.jsp";};
    document.getElementById("프로폴리스").onclick = function () { location.href = "product_comparison21.jsp";};
    document.getElementById("코큐텐").onclick = function () { location.href = "product_comparison22.jsp";};
    document.getElementById("콜라겐").onclick = function () { location.href = "product_comparison23.jsp";};
    document.getElementById("밀크씨슬").onclick = function () { location.href = "product_comparison24.jsp";};
    
    
    </script>
    <script>
     function LoginCheck() {
     	
     	var checkBoxArr = [];
					
					$.ajax({
						// 데이터 전송방식(get/post)
						type : "get",
						// 데이터를 전송할 서버페이지
						url : "LoginCheckCon",
						// 응답데이터 타입
						dataType : "text",
						success : function(check) {
							
							// 로그인 되어있지 않다면,
							if(check == "true") {
								
								alert("로그인 후 이용가능합니다.");
								location.href='LoginJoin.jsp';
								
							} else {
								
								
							}
						},
						error : function() {
							alert("실패!");
						}
						
					})
				}

     </script>
</body>

</html>