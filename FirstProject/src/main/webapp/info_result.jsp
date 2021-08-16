<%@page import="VO.PickVO"%>
<%@page import="DAO.MemberDAO"%>
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
    <title>성분별 제품비교</title>

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
        .liver{
            text-align: center;
        }
        .col-lg-11{
            text-align: center;
        }
        .recommend{
            margin-top: 30px;
        }
        #banner {
            text-align: center;
            width:250px;
            height:10px;
            background:rgb(94, 103, 226); 
        }
        #banner.on {
            position: absolute;
            bottom: 800px;
        }
        a:link { color: black; text-decoration: none;}
        a:visited { color: black; text-decoration: none;}
        a:hover { color: black; text-decoration: underline;}
        .dropdown{
    position: relative;
    display: inline-block;
}
.button{
   
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
<script type="text/javascript">
    var stmnLEFT = 1600; // 오른쪽 여백 
    var stmnGAP1 = 0; // 위쪽 여백 
    var stmnGAP2 = 150; // 스크롤시 브라우저 위쪽과 떨어지는 거리 
    var stmnBASE = 0; // 스크롤 시작위치 
    var stmnActivateSpeed = 1; //스크롤을 인식하는 딜레이 (숫자가 클수록 느리게 인식)
    var stmnScrollSpeed = 1000; //스크롤 속도 (클수록 느림)
    var stmnTimer; 
    
    function RefreshStaticMenu() { 
     var stmnStartPoint, stmnEndPoint; 
     stmnStartPoint = parseInt(document.getElementById('STATICMENU').style.top, 10); 
     stmnEndPoint = Math.max(document.documentElement.scrollTop, document.body.scrollTop) + stmnGAP2; 
     if (stmnEndPoint < stmnGAP1) stmnEndPoint = stmnGAP1; 
     if (stmnStartPoint != stmnEndPoint) { 
      stmnScrollAmount = Math.ceil( Math.abs( stmnEndPoint - stmnStartPoint ) / 15 ); 
      document.getElementById('STATICMENU').style.top = parseInt(document.getElementById('STATICMENU').style.top, 10) + ( ( stmnEndPoint<stmnStartPoint ) ? -stmnScrollAmount : stmnScrollAmount ) + 'px'; 
      stmnRefreshTimer = stmnScrollSpeed; 
      }
     stmnTimer = setTimeout("RefreshStaticMenu();", stmnActivateSpeed); 
     } 
    function InitializeStaticMenu() {
     document.getElementById('STATICMENU').style.right = stmnLEFT + 'px';  //처음에 오른쪽에 위치. left로 바꿔도.
     document.getElementById('STATICMENU').style.top = document.body.scrollTop + stmnBASE + 'px'; 
     RefreshStaticMenu();
     }
    
   </script>
   <script src="js/jquery-3.3.1.min.js"></script>
   
   <style type="text/css">
   #STATICMENU {
        margin: 0pt;
        padding: 0pt;
        position: absolute;
        right: 0px;
        top: 100px;
        }
   </style>
</head>

<body id="본래 설정" onload="InitializeStaticMenu();">
    <script>
        $(function() {
var $w = $(window),
  footerHei = $('footer').outerHeight(),
  $banner = $('#banner');
$w.on('scroll', function() {
  var sT = $w.scrollTop();
  var val = $(document).height() - $w.height() - footerHei;
  if (sT >= val)
    $banner.addClass('on')
  else
    $banner.removeClass('on')
});
});
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
    
    PickVO vo2 = dao.selectPickNo(vo);
    
	String SymA = vo2.getSymA();
	String SymB = vo2.getSymB();
    String SymC = vo2.getSymC();
    
    if(vo2.getSymB() == null && vo2.getSymC() == null) {
	   	SymB = "";
	    SymC = "";
    } else if(vo2.getSymC() == null) {
    	SymC = "";
    }
    
    %>
    
    
    
    <div id="STATICMENU">
    <div id="SCROLL">
        <div id="banner">
            <div class="accordin-elem">
                <div class="accordion" id="accordionExample">
                
                <% if(SymA.equals("간") || SymB.equals("간") || SymC.equals("간")) { %>
                    <div class="card 간">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseOne">
                                <a>간</a>
                                <img src="img/Icon2/Icon2/liver.png">
                            </div>
                        </div>
                        <div id="collapseOne" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href = "#milkseatle" id="nut1">밀크씨슬</a>
                                <input type="button" value="+" onclick="goComparison(1)">
                            </div>
                        </div>
                    </div>
                    
                <% } if (SymA.equals("관절") || SymB.equals("관절") || SymC.equals("관절")) { %>
                    
                    <div class="card 관절">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseTwo">
                                <a>관절</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/joint.png">
                            </div>
                        </div>
                        <div id="collapseTwo" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#glucosamine1" id="nut2">글루코사민</a>
                                <input type="button" value="+" onclick="goComparison(2)">
                                <br>
                                <a href="#boswelia2" id="nut3">보스웰리아</a>
                                <input type="button" value="+" onclick="goComparison(3)">
                                <br>
                                <a href="#msm2-5" id="nut4">엠에스엠(MSM)</a>
                                <input type="button" value="+" onclick="goComparison(4)">
                            </div>
                        </div>
                    </div>
                    
                    <% } if (SymA.equals("기억력") || SymB.equals("기억력") || SymC.equals("기억력")) { %>
                    
                    <div class="card 기억력">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseThree">
                                <a>기억력</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/memory.png">
                            </div>
                        </div>
                        <div id="collapseThree" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#omega-33" id="nut5">오메가3</a>
                                <input type="button" value="+" onclick="goComparison(5)">
                                <br>
                                <a href="#ginkgo4" id="nut6">은행잎(징코)
                                <input type="button" value="+" onclick="goComparison(6)">
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <% } if (SymA.equals("눈") || SymB.equals("눈") || SymC.equals("눈")) { %>
                    
                    <div class="card 눈">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseFour">
                                <a>눈</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/eye.png">
                            </div>
                        </div>
                        <div id="collapseFour" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#vitamin-a5" id="nut7">비타민A</a>
                                <input type="button" value="+" onclick="goComparison(7)">
                                <br>
                                <a href="#lutein-a5-5" id="nut8">루테인</a>
                                <input type="button" value="+" onclick="goComparison(8)">
                                <br>
                                <a href="#omega-36" id="nut9">오메가3</a>
                                <input type="button" value="+" onclick="goComparison(9)">
                            </div>
                        </div>
                    </div>
                    
                    <% } if (SymA.equals("뼈") || SymB.equals("뼈") || SymC.equals("뼈")) { %>
                    
                    <div class="card 뼈">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseFive">
                                <a>뼈</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/bone.png">
                            </div>
                        </div>
                        <div id="collapseFive" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#vitamin-d7" id="nut10">비타민D</a>
                                <input type="button" value="+"  onclick="goComparison(10)">
                                <br>
                                <a href="#calcium8" id="nut11">칼슘</a>
                                <input type="button" value="+"  onclick="goComparison(11)">
                            </div>
                        </div>
                    </div>
                    
                    <% } if (SymA.equals("장") || SymB.equals("장") || SymC.equals("장")) { %>
                    
                    <div class="card 장">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseSix">
                                <a>장</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/intestine.png">
                            </div>
                        </div>
                        <div id="collapseSix" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#aloe-gel8-5" id="nut12">알로에겔</a>
                                <input type="button" value="+"  onclick="goComparison(12)">
                                <br>
                                <a href="#probiotics9" id="nut13">프로바이오틱스</a>
                                <input type="button" value="+"  onclick="goComparison(13)">
                                <br>
                                <a href="#cha9-5" id="nut14">차전자피 식이섬유</a>
                            	<input type="button" value="+ "  onclick="goComparison(14)">
                            </div>
                        </div>
                    </div>
                    
                    <% } if (SymA.equals("체지방감소") || SymB.equals("체지방감소") || SymC.equals("체지방감소")) { %>
                    
                    <div class="card 체지방감소">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseSeven">
                                <a>체지방감소</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/diet.png">
                            </div>
                        </div>
                        <div id="collapseSeven" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#garcinia10" id="nut15">가르시니아</a>
                                <input type="button" value="+"  onclick="goComparison(15)">
                                <br>
                                <a href="#catechin11" id="nut16">카테킨</a>
                                <input type="button" value="+"  onclick="goComparison(16)">
                                <br>
                                <a href="#chitosan12" id="nut17">키토산</a>
                                <input type="button" value="+"  onclick="goComparison(17)">
                            </div>
                        </div>
                    </div>
                    
                    <% } if (SymA.equals("콜레스테롤") || SymB.equals("콜레스테롤") || SymC.equals("콜레스테롤")) { %>
                    
                    <div class="card 콜레스테롤">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseEight">
                                <a>콜레스테롤</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/cholesterol.png">
                            </div>
                        </div>
                        <div id="collapseEight" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#gamma13" id="nut18">감마리놀렌산</a>
                                <input type="button" value="+"  onclick="goComparison(18)">
                                <br>
                                <a href="#spirulina14" id="nut19">스피루리나</a>
                                <input type="button" value="+"  onclick="goComparison(19)">
                                <br>
                                <a href="#cha14-5" id="nut20">차전자피 식이섬유</a>
                                <input type="button" value="+"  onclick="goComparison(20)">
                                <br>
                                <a href="#catechin15" id="nut21">카테킨</a>
                                <input type="button" value="+"  onclick="goComparison(21)">
                                <br>
                                <a href="#chlorella16" id="nut22">클로렐라</a>
                                <input type="button" value="+"  onclick="goComparison(22)">
                                <br>
                                <a href="#chitosan17" id="nut23">키토산</a>
                                <input type="button" value="+"  onclick="goComparison(23)">
                            </div>
                        </div>
                    </div>
                    
                    <% } if (SymA.equals("피부") || SymB.equals("피부") || SymC.equals("피부")) { %>
                    
                    <div class="card 피부">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseNine">
                                <a>피부</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/skin.png">
                            </div>
                        </div>
                        <div id="collapseNine" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#gamma18" id="nut24">감마리놀렌산</a>
                                <input type="button" value="+"  onclick="goComparison(24)">
                                <br>
                                <a href="#spirulina19" id="nut25">스피루리나</a>
                                <input type="button" value="+"  onclick="goComparison(25)">
                                <br>
                                <a href="#aloe-gel19-5" id="nut26">알로에겔</a>
                                <input type="button" value="+"  onclick="goComparison(26)">
                                <br>
                                <a href="#collagen20" id="nut27">콜라겐</a>
                                <input type="button" value="+"  onclick="goComparison(27)">
                                <br>
                                <a href="#chlorella21"id="nut28">클로렐라</a>
                                <input type="button" value="+"  onclick="goComparison(28)">
                            </div>
                        </div>
                    </div>
                    
                    <% } if (SymA.equals("항산화") || SymB.equals("항산화") || SymC.equals("항산화")) { %>
                    <div class="card 항산화">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseTen">
                                <a>항산화</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/antioxidant.png">
                            </div>
                        </div>
                        <div id="collapseTen" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#vitamin-c22" id="nut29">비타민C</a>
                                <input type="button" value="+" onclick="goComparison(29)">
                                <br>
                                <a href="#spirulina23" id="nut30">스피루리나</a>
                                <input type="button" value="+" onclick="goComparison(30)">
                                <br>
                                <a href="#catechin24" id="nut31">카테킨</a>
                                <input type="button" value="+" onclick="goComparison(31)">
                                <br>
                                <a href="#co-q-1025" id="nut32">코큐텐</a>
                                <input type="button" value="+" onclick="goComparison(32)">
                                <br>
                                <a href="#chlorella26" id="nut33">클로렐라</a>
                                <input type="button" value="+" onclick="goComparison(33)">
                                <br>
                                <a href="#propolis27" id="nut34">프로폴리스</a>
                                <input type="button" value="+" onclick="goComparison(34)">
                                <br>
                                <a href="#red-ginseng28" id="nut35">홍삼</a>
                                <input type="button" value="+" onclick="goComparison(35)">
                            </div>
                        </div>
                    </div>
                    
                    
                    <% } if (SymA.equals("혈행개선") || SymB.equals("혈행개선") || SymC.equals("혈행개선")) { %>
                    <div class="card 혈행개선">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseEleven">
                                <a>혈행개선</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/blood.png">
                            </div>
                        </div>
                        <div id="collapseEleven" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#gamma29" id="nut36">감마리놀렌산</a>
                                <input type="button" value="+" onclick="goComparison(36)">
                                <br>
                                <a href="#ginkgo30" id="nut37">은행잎(징코)</a>
                                <input type="button" value="+" onclick="goComparison(37)">
                                <br>
                                <a href="#red-ginseng31" id="nut38">홍삼</a>
                                <input type="button" value="+" onclick="goComparison(38)">
                            </div>
                        </div>
                    </div>
                    
                    <% } %>
                </div>
            </div>
            
        </div>
        </div>
    </div>
        
        
    
    
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    <!-- Header Section Begin -->
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
    <section class="breadcrumb-area set-bg" data-setbg="img/blog/blog-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-content">
                        <h2  class="information-text">관심별 추천 영양제 정보</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    <!-- Blog Section Begin -->
    <section class="blog spad-2">
        <div class="container">
            <div class="row">
            
            <% if(SymA.equals("간") || SymB.equals("간") || SymC.equals("간")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
	                    <div class="간">
	                        <div id="milkseatle" class="밀크씨슬">
	                            <img class="about-img info-tag" src="img/blog/list/liver/밀크씨슬.png" alt="">
	                            <img class="about-img" src="img/blog/list/liver/main.jpg" alt="">
	                            <img class="about-img" src="img/blog/list/liver/contents_01.jpg" alt="">
	                        </div>
	                    </div>
                    </div>
                </div>
                
                <% } 
            	if (SymA.equals("관절") || SymB.equals("관절") || SymC.equals("관절")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
	                    <div class="관절">
	                        <div id="glucosamine1">
	                            <img class="about-img" src="img/blog/list/joint/joint_glucosamine/glucosamine.png" alt="">
	                            <img class="about-img" src="img/blog/list/joint/joint_glucosamine/top.jpg" alt="">
	                            <img class="about-img" src="img/blog/list/joint/joint_glucosamine/content.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="boswelia2">
	                            <img class="about-img" src="img/blog/list/joint/joint_Boswellia/boswelia.png" alt="">
	                            <img class="about-img" src="img/blog/list/joint/joint_Boswellia/main.jpg" alt="">
	                            <img class="about-img" src="img/blog/list/joint/joint_Boswellia/content_01.jpg" alt="">
	                            <img class="about-img" src="img/blog/list/joint/joint_Boswellia/content_02.jpg" alt="">
	                            <img class="about-img" src="img/blog/list/joint/joint_Boswellia/content_03.jpg" alt="">
	                            <img class="about-img" src="img/blog/list/joint/joint_Boswellia/content_04.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="msm2-5">
	                            <img class="about-img" src="img/blog/list/joint/joint_MSM/MSM.png" alt="">
	                            <img class="about-img" src="img/blog/list/joint/joint_MSM/main.jpg" alt="">
	                            <img class="about-img" src="img/blog/list/joint/joint_MSM/contents_01.jpg" alt="">
	                            <img class="about-img" src="img/blog/list/joint/joint_MSM/contents_02.jpg" alt="">
	                        </div>
	                    </div>
                    </div>
                </div>
                
                <% } if (SymA.equals("기억력") || SymB.equals("기억력") || SymC.equals("기억력")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
	                    <div class="기억력">
	                        <div id="omega-33">
	                            <img class="about-img info-tag" src="img/blog/list/memory/memory_omega3/omega3.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/memory/memory_omega3/top.jpg" alt="">
	                            <img class="about-img" src="img/blog/list/memory/memory_omega3/content.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="ginkgo4">
	                            <img class="about-img info-tag" src="img/blog/list/memory/memory_zinco/은행잎.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/memory/memory_zinco/210219_ginkgo_800_main.jpg" alt="">
	                            <img class="about-img" src="img/blog/list/memory/memory_zinco/contents_01.jpg" alt="">
	                            <img class="about-img" src="img/blog/list/memory/memory_zinco/contents_02.jpg" alt="">
	                        </div>
	                    </div>
                    </div>
                </div>
                
                <% } if (SymA.equals("눈") || SymB.equals("눈") || SymC.equals("눈")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="눈">
                            <div id="vitamin-a5">
                                <img class="about-img info-tag" src="img/blog/list/eye/eye_vitaminA/va.png" alt="">
                                <img class="about-img info-tag" src="img/blog/list/eye/eye_vitaminA/main.jpg" alt="">
                                <img class="about-img" src="img/blog/list/eye/eye_vitaminA/contents_01.jpg" alt="">
                                <img class="about-img" src="img/blog/list/eye/eye_vitaminA/contents_02.jpg" alt="">
                            </div>
                            <br>
                            <div id="lutein-a5-5">
                                <img class="about-img info-tag" src="img/blog/list/eye/eye_lutein/lutein.png" alt="">
                                <img class="about-img" src="img/blog/list/eye/eye_lutein/200317_lutein_800_main.jpg" alt="">
                                <img class="about-img" src="img/blog/list/eye/eye_lutein/contents_01.jpg" alt="">
                            </div>
                            <br>
                            <div id="omega-36">
                                <img class="about-img info-tag" src="img/blog/list/eye/eye_omega3/omega3.png" alt="">
                                <img class="about-img info-tag" src="img/blog/list/eye/eye_omega3/top.jpg" alt="">
                                <img class="about-img" src="img/blog/list/eye/eye_omega3/content.jpg" alt="">
                             </div>
                    	</div>
                    </div>
                </div>
                
                <% } if (SymA.equals("뼈") || SymB.equals("뼈") || SymC.equals("뼈")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="뼈">
	                        <div id="vitamin-d7">
	                            <img class="about-img info-tag" src="img/blog/list/bone/bone_vitaminD/vd.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/bone/bone_vitaminD/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/bone/bone_vitaminD/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/bone/bone_vitaminD/contents_02.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="calcium8">
	                            <img class="about-img info-tag" src="img/blog/list/bone/bone_calcium/calcium.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/bone/bone_calcium/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/bone/bone_calcium/content_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/bone/bone_calcium/content_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/bone/bone_calcium/content_03.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/bone/bone_calcium/content_04.jpg" alt="">
	                        </div>
                    	</div>
                    </div>
                </div>
                
                <% } if (SymA.equals("장") || SymB.equals("장") || SymC.equals("장")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="장">
	                        <div id="aloe-gel8-5">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_AloeGel/알로에겔.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_AloeGel/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_AloeGel/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_AloeGel/contents_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_AloeGel/contents_03.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="probiotics9">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_probiotics/probiotics.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_probiotics/프1.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_probiotics/프2.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_probiotics/프3.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_probiotics/프4.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="cha9-5">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_psyllium/차전자피.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_psyllium/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_psyllium/content_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_psyllium/content_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_psyllium/content_03.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_psyllium/content_04.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_psyllium/content_05.jpg" alt="">
	                        </div>
                    	</div>
                    </div>
                </div>
                
                <% } if (SymA.equals("체지방감소") || SymB.equals("체지방감소") || SymC.equals("체지방감소")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="체지방감소">
	                        <div id="garcinia10">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_Garcinia/가르시니아.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_Garcinia/200608_etc_800_main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_Garcinia/contents_01.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="catechin11">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_catechins/카테킨.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_catechins/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_catechins/content_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_catechins/content_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_catechins/content_03.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_catechins/content_04.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="chitosan12">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_chitosan/키토산.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_chitosan/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_chitosan/content_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_chitosan/content_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_chitosan/content_03.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_chitosan/content_04.jpg" alt="">
	                        </div>
                    	</div>
                    </div>
                </div>
                
                <% } if (SymA.equals("콜레스테롤") || SymB.equals("콜레스테롤") || SymC.equals("콜레스테롤")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="콜레스테롤">
	                        <div id="gamma13">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/cholesterol_gamma/감마리놀렌산.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/cholesterol_gamma/top.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/cholesterol_gamma/content.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="spirulina14">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/cholesterol_spirulina/스피루리나.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/cholesterol_spirulina/200803_etc_800_main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/cholesterol_spirulina/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/cholesterol_spirulina/contents_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/cholesterol_spirulina/contents_03.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="cha14-5">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/cholesterol_psyllium/차전자피.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/cholesterol_psyllium/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/cholesterol_psyllium/content_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/cholesterol_psyllium/content_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/cholesterol_psyllium/content_03.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/cholesterol_psyllium/content_04.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/cholesterol_psyllium/content_05.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="catechin15">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_catechins/카테킨.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_catechins/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_catechins/content_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_catechins/content_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_catechins/content_03.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_catechins/content_04.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="chlorella16">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_Chlorella/클로렐라.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_Chlorella/201013_etc_800_main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_Chlorella/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_Chlorella/contents_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_Chlorella/contents_03.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="chitosan17">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_chitosan/키토산.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_chitosan/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_chitosan/content_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_chitosan/content_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_chitosan/content_03.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_chitosan/content_04.jpg" alt="">
	                        </div>
                    	</div>
                    </div>
                </div>
                
                <% } if (SymA.equals("피부") || SymB.equals("피부") || SymC.equals("피부")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="피부">
	                        <div id="gamma18">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_gamma/감마리놀렌산.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_gamma/top.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_gamma/content.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="spirulina19">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_spirulina/스피루리나.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_spirulina/200803_etc_800_main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_spirulina/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_spirulina/contents_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_spirulina/contents_03.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="aloe-gel19-5">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/skin_AloeGel/알로에겔.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/skin_AloeGel/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/skin_AloeGel/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/skin_AloeGel/contents_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/skin_AloeGel/contents_03.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="collagen20">
	                            <img class="about-img info-tag" src="img/blog/list/skin/skin_Collagen/콜라겐.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/skin/skin_Collagen/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/skin/skin_Collagen/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/skin/skin_Collagen/contents_03.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="chlorella21">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_Chlorella/클로렐라.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_Chlorella/201013_etc_800_main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_Chlorella/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_Chlorella/contents_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_Chlorella/contents_03.jpg" alt="">
	                        </div>
                    	</div>
                    </div>
                </div>
                
                <% } if (SymA.equals("항산화") || SymB.equals("항산화") || SymC.equals("항산화")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="항산화">
                        
	                        <div id="vitamin-c22">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_vitaminC/vc.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_vitaminC/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_vitaminC/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_vitaminC/contents_02.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="spirulina23">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_spirulina/스피루리나.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_spirulina/200803_etc_800_main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_spirulina/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_spirulina/contents_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_spirulina/contents_03.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="catechin24">
	                            <img class="about-img info-tag" src="img/blog/list/diet/antioxidant_catechins/카테킨.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/antioxidant_catechins/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/antioxidant_catechins/content_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/antioxidant_catechins/content_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/antioxidant_catechins/content_03.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/antioxidant_catechins/content_04.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="co-q-1025">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_CoQ10/코큐텐.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_CoQ10/200512_etc_800_main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_CoQ10/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_CoQ10/contents_02.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="chlorella26">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_Chlorella/클로렐라.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_Chlorella/201013_etc_800_main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_Chlorella/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_Chlorella/contents_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_Chlorella/contents_03.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="propolis27">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_propolis/프로폴리스.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_propolis/top.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_propolis/content.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="red-ginseng28">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_red_ginseng/홍삼.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_red_ginseng/top.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_red_ginseng/content.jpg" alt="">
	                        </div>
                    	</div>
                    </div>
                </div>
                
                <% } if (SymA.equals("혈행개선") || SymB.equals("혈행개선") || SymC.equals("혈행개선")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="혈행개선">
	                        <div id="gamma29">
	                            <img class="about-img info-tag" src="img/blog/list/blood/blood_gamma/감마리놀렌산.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/blood/blood_gamma/top.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/blood/blood_gamma/content.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="ginkgo30">
	                            <img class="about-img info-tag" src="img/blog/list/blood/blood_zinco/은행잎.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/blood/blood_zinco/210219_ginkgo_800_main.jpg" alt="">
	                            <img class="about-img" src="img/blog/list/blood/blood_zinco/contents_01.jpg" alt="">
	                            <img class="about-img" src="img/blog/list/blood/blood_zinco/contents_02.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="red-ginseng31">
	                            <img class="about-img info-tag" src="img/blog/list/blood/blood_red_ginseng/홍삼.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/blood/blood_red_ginseng/top.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/blood/blood_red_ginseng/content.jpg" alt="">
	                        </div>
                    	</div>
                    </div>
                </div>
                <% } %>
                
            </div>
        </div>
    </section>
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
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/circle-progress.min.js"></script>
    <script src="js/jquery.barfiller.js"></script>
    <script src="js/main.js"></script>
    
    <script>
    	function goComparison(num) {
    		var nutName = document.getElementById('nut'+num).innerText;
    		
    		alert(nutName);
    		
    		$.ajax({
				// 데이터 전송방식(get/post)
				type : "get",
				// 전송할 데이터
				data : {"nut" : nutName},
				// 데이터를 전송할 서버페이지
				url : "ComparisonCon",
				
				// 응답데이터 타입
				dataType : "text",
				success : function(data) {
					 alert(data);
					 
					 if(data == "true") {
						 location.href = 'product_comparison2.jsp';
						 
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