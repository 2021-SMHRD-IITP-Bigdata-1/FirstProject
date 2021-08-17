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
    <title>오뇌가쓰리 페이지에 오신걸 환영합니다!</title>

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
    .row2{
        display:-ms-flexbox;display:flex;
        -ms-flex-wrap:wrap;flex-wrap:wrap;
        margin-right:-15px;margin-left:-15px; 
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
    <!-- Hero Slider Section Begin -->
    <section class="hero-slider">
        <div class="slide-items owl-carousel">
            <div class="single-slide set-bg active" data-setbg="img/bg.jpg">
                <h1>Be Fit.  Comparison</h1>
                <a href="information1.jsp" class="primary-btn">Read More</a>
            </div>
            <div class="single-slide set-bg" data-setbg="img/bg-2.jpg">
                <h1>Be Fit. Nutritional supplements</h1>
                <a href="information2.jsp" class="primary-btn">Read More</a>
            </div>
            <div class="single-slide set-bg" data-setbg="img/bg-3.jpg">
                <h1>Be Fit. information</h1>
                <a href="information1.jsp" class="primary-btn">Read More</a>
            </div>
        </div>
    </section>
    <!-- Hero Slider End -->
    <!-- Services Section Begin -->
    <section class="services-section spad">
        <div class="container">
            <div>
                <div class="information-text">
                    <div class="breadcrumb-content">
                        <div class="section-title">
                        <span>Features</span>
                        <h2>서비스 제공</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single-service">
                        <img src="img/icon-1.png" alt="">
                        <h5>효능/부위별 정보</h5>
                        <p>총<span class="m-counter" style="font-size: 45px;">11</span>가지의 효능/부위에 필요한 영양성분과 정보를 제공합니다.<br>내 몸에 영양이 필요한 부위를 선택하세요.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-service">
                        <img src="img/icon-2.png" alt="">
                        <h5>성분별 정보</h5>
                        <p>총  <span class="m-counter" style="font-size: 40px;">24</span>가지 성분의 효능, 구매&복용 TIP, 복용 시 주의사항 등 상세한 정보를 알려드립니다.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-service">
                        <img src="img/icon-3.png" alt="">
                        <h5>국내/국외 인기제품 비교</h5>
                        <p>성분마다 유명하고 인기있는 제품으로 국내, 국외 제품들을 비교해드립니다.<br>확인하고 마음에 드는 제품을 즐겨찾기 하세요.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-service">
                        <img src="img/icon-4.png" alt="">
                        <h5>제품별 리뷰 확인</h5>
                        <p>제품의 5점부터 1점까지 다양한 별점의 리뷰를 확인하고 나에게 맞는 제품인지 판단하세요.</p>
                    </div>
                </div>
                <div class="container">
                    <div class="information-text">
                        <div class="breadcrumb-content">
                            <div class="section-title">
                            </div>
                            </div>
                            </div>
                            </div>
                <div class="container">
                    <div class="information-text">
                        <div class="breadcrumb-content">
                            <div class="section-title">
                                <span>Knowledges</span>
                                <h2>알아두면 좋은 영양제 지식</h2>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="single-features">
                                        <div class="features-img">
                                            <a href="many_knowledge.jsp"><img src="img/features/feature-1.jpg" style="height: 300px;" alt=""></a>
                                        </div>
                                        <div class="feature-text">
                                            <br>
                                            <h5>정량섭취? 1일섭취량%? 영양소 기준치?</h5>
                                            <p></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="single-features">
                                        <div class="features-img">
                                            <a href="age_knowledge.jsp"><img src="img/features/feature-2.jpg" style="height: 300px;" alt=""></a>
                                        </div>
                                        <div class="feature-text">
                                            <br>
                                            <h5>나이별 먹으면 좋은 영양제 추천</h5>
                                            <p></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="single-features">
                                        <div class="features-img">
                                            <a href="best_worst_knowledge.jsp"><img src="img/features/feature-3.jpg" style="height: 300px;" alt=""></a>
                                        </div>
                                        <div class="feature-text">
                                            <br>
                                            <h5>같이 섭취하면 좋은 영양제 BEST3/ 안되는 영양제 WORST3</h5>
                                            <p></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
            </div>
            </div>
        </div>
    </section>
    <!-- Services Section End -->
    
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
								
								// 로그인이 되어있다면,
								$("input[name=symptom]:checked").each(function() {
									checkBoxArr.push($(this).val());
								});
								
								alert(checkBoxArr + '을(를) 선택하셨습니다.');
								
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