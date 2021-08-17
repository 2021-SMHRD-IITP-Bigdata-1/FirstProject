<%@page import="VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="zxx">

<head>

    <meta charset="euc-kr">
    <meta name="description" content="TopGym Te
    
    mplate">
    <meta name="keywords" content="TopGym, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>로그인/회원가입 페이지입니다.</title>

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
    .row2{
        display:-ms-flexbox;display:flex;
        -ms-flex-wrap:wrap;flex-wrap:wrap;
        margin-right:-15px;margin-left:-15px; 
        justify-content: center}
    .login-btn2{
        text-align: center;
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
                                <a href="./index.html">
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
    <section class="breadcrumb-area set-bg" data-setbg="img/contact/contact-bg.jpg">
        <div class="container">
            <div class="row2">
                <div class="col-lg-12">
                    <div class="breadcrumb-content">
                        <h2  class="information-text">로그인 / 회원가입</h2>
                        <div class="information-text1">
                            <a>로그인 / 회원가입 페이지입니다.</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    <!-- Contact Section Begin -->
    <section class="contact-section">
        <div class="container">
            <div class="row2">
                <div class="col-lg-6">
                    <div class="contact-info">
                        <div class="contact-details">
                            <h2>로그인</h2>
                        </div>
                        <div class="contact-form">
                            <form action="LoginCon">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <h5 class="logf">아이디</h5>
                                        <input type="text" placeholder="아이디를 입력하세요." name="id">
                                    </div>
                                    <div class="col-lg-6">
                                        <h5 class="logf">비밀번호</h5>
                                        <input type="password" placeholder="비밀번호를 입력하세요." name="pw">
                                    </div>
                                    <div class="col-lg-12">
                                        <button type="submit" class="site-btn">로그인</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <hr>
                    <div class="contact-info">
                        <div class="contact-details">
                            <h2>회원가입</h2>
                        </div>
                        <div class="contact-form">
                            <form action="JoinCon">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <h5 class="logf">아이디</h5>
                                        <input type="text" placeholder="아이디를 입력하세요." name="id">
                                    </div>
                                    <div class="col-lg-6">
                                        <h5 class="logf">비밀번호</h5>
                                        <input type="password" id="pw" placeholder="비밀번호를 입력하세요." name="pw" onchange ="isSame()">
                                    </div>
                                    <div class="col-lg-6">
                                        <h5 class="logf">비밀번호 확인</h5>
                                        <input type="password" id="pwcheck" placeholder="비밀번호를 입력하세요." name="pwcheck" onchange="isSame()">
                                        <span id="pwMsg"></span>
                                    </div>
                                    <div class="col-lg-6">
                                        <h5 class="logf">성별</h5>
                                        <select class="sel" name="gender">
                                            <option>남</option>
                                            <option>여</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-6">
                                        <h5 class="logf">생년월일</h5>
                                        <input type="date" name="birth">
                                    </div>

                                    <div class="col-lg-12">
                                        <button type="submit" id="joinSubmit" class="site-btn">회원가입</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer-section set-bg" data-setbg="img/footer-bg.jpg">
        <div class="container">
            <div class="row2">
                <div class="col-lg-12">
                    <div class="footer-content">
                        <div class="footer-logo">
                            <a href="#"><img src="img/logo.png" alt=""></a>
                        </div>
                        <div class="footer-menu">
                            <ul>
                                <li><a href="./information1.html">효능/부위별 정보</a></li>
                                <li><a href="#">성분별 영양제품비교</a></li>
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
    <script type="text/javascript">
		$(function() {
			$('#pw').keyup(function() {
				$('#pwMsg').html('');
			});
			
			$('#pwcheck').keyup(function(){
				
				if($('#pw').val() != $('#pwcheck').val()) {
					$('#pwMsg').html('비밀번호 일치하지 않음');
					$('#pwMsg').attr('color', '#FF0000');
				} else {
					$('#pwMsg').html('비밀번호 일치함');
					$('#pwMsg').attr('color', '#0000FF');
				}
				
			});
			
		});
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