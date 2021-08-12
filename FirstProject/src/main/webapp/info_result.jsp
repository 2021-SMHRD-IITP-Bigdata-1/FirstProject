<%@page import="DAO.MemberDAO"%>
<%@page import="VO.MemberVO"%>
<%@page import="VO.PickVO"%>
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
    <title>Blog | Template</title>

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
		    font-size: 20px;
		    background-color: #dfdfdf;
		    color: black;
		    text-decoration: none;
		    padding: 10px 36px;
		    margin: 2px 0px 0px 0px;
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
    	
    System.out.println(vo2.getSymA());
    System.out.println(vo2.getSymB());
    System.out.println(vo2.getSymC());
    
    
    
    
    
    %>
    
    
    
    
    <div id="STATICMENU">
    <div id="SCROLL">
        <div id="banner">
            <div class="accordin-elem">
                <div class="accordion" id="accordionExample">
                    <div class="card 간">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseOne">
                                <a>간</a>
                                <img src="img/Icon2/Icon2/간.png">
                            </div>
                        </div>
                        <div id="collapseOne" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href = "#milkseatle">밀크씨슬</a>
                            </div>
                        </div>
                    </div>
                    <div class="card 관절">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseTwo">
                                <a>관절</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/관절.png">
                            </div>
                        </div>
                        <div id="collapseTwo" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#glucosamine1">글루코사민</a><br>
                                <a href="#boswelia2">보스웰리아</a><br>
                                <a href="#msm2-5">엠에스엠(MSM)</a>
                            </div>
                        </div>
                    </div>
                    <div class="card 기억력">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseThree">
                                <a>기억력</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/기억력.png">
                            </div>
                        </div>
                        <div id="collapseThree" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#omega-33">오메가3</a><br>
                                <a href="#ginkgo4">은행잎(징코)</a>
                            </div>
                        </div>
                    </div>
                    <div class="card 눈">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseFour">
                                <a>눈</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/눈.png">
                            </div>
                        </div>
                        <div id="collapseFour" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#vitamin-a5">비타민A</a><br>
                                <a href="#lutein-a5-5">루테인</a><br>
                                <a href="#omega-36">오메가3</a>
                            </div>
                        </div>
                    </div>
                    <div class="card 뼈">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseFive">
                                <a>뼈</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/뼈.png">
                            </div>
                        </div>
                        <div id="collapseFive" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#vitamin-d7">비타민D</a><br>
                                <a href="#calcium8">칼슘</a>
                            </div>
                        </div>
                    </div>
                    <div class="card 장">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseSix">
                                <a>장</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/장.png">
                            </div>
                        </div>
                        <div id="collapseSix" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#aloe-gel8-5">알로에겔</a><br>
                                <a href="#probiotics9">프로바이오틱스</a><br>
                                <a href="#cha9-5">차전자피 식이섬유</a>
                            </div>
                        </div>
                    </div>
                    <div class="card 체지방감소">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseSeven">
                                <a>체지방감소</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/체지방.png">
                            </div>
                        </div>
                        <div id="collapseSeven" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#garcinia10">가르시니아</a><br>
                                <a href="#catechin11">카테킨</a><br>
                                <a href="#chitosan12">키토산</a>
                            </div>
                        </div>
                    </div>
                    <div class="card 콜레스테롤">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseEight">
                                <a>콜레스테롤</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/콜레스테롤.png">
                            </div>
                        </div>
                        <div id="collapseEight" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#gamma13">감마리놀렌산</a><br>
                                <a href="#spirulina14">스피루리나</a><br>
                                <a href="#cha14-5">차전자피 식이섬유</a><br>
                                <a href="#catechin15">카테킨</a><br>
                                <a href="#chlorella16">클로렐라</a><br>
                                <a href="#chitosan17">키토산</a>
                            </div>
                        </div>
                    </div>
                    <div class="card 피부">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseNine">
                                <a>피부</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/피부.png">
                            </div>
                        </div>
                        <div id="collapseNine" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#gamma18">감마리놀렌산</a><br>
                                <a href="#spirulina19">스피루리나</a><br>
                                <a href="#aloe-gel19-5">알로에겔</a><br>
                                <a href="#collagen20">콜라겐</a><br>
                                <a href="#chlorella21">클로렐라</a>
                            </div>
                        </div>
                    </div>
                    <div class="card 항산화">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseTen">
                                <a>항산화</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/항산화.png">
                            </div>
                        </div>
                        <div id="collapseTen" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#vitamin-c22">비타민C</a><br>
                                <a href="#spirulina23">스피루리나</a><br>
                                <a href="#catechin24">카테킨</a><br>
                                <a href="#co-q-1025">코큐텐</a><br>
                                <a href="#chlorella26">클로렐라</a><br>
                                <a href="#propolis27">프로폴리스</a><br>
                                <a href="#red-ginseng28">홍삼</a>
                            </div>
                        </div>
                    </div><div class="card 혈행개선">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseEleven">
                                <a>혈행개선</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/혈행개선.png">
                            </div>
                        </div>
                        <div id="collapseEleven" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#gamma29">감마리놀렌산</a><br>
                                <a href="#ginkgo30">은행잎(징코)</a><br>
                                <a href="#red-ginseng31">홍삼</a>
                            </div>
                        </div>
                    </div>
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
                            <a href="./index.html">
                                <img src="img/logo.png" alt="">
                            </a>
                        </div>
                        <nav class="mobile-menu">
                            <ul>
                                <li><a href="./information1.html">효능/부위별 정보</a></li>
                                <li><a href="./about-us.html">성분별 영양제품비교 </a></li>
                                <li><a></a></li>
                                <li><a href="./elements.html">마이페이지</a></li>
                                <li><a href="./login.html">로그인/회원가입</a></li>
                                <li class="search-btn search-trigger"><i class="fa fa-search"></i></li>
                                <!-- <li ><div class="dropdown">
                                    <i onclick="dp_menu()" class="search-btn2 fa fa-heart"></i>
                                    <div style="display: none;" id="drop-content">
                                        <a hreaf='#'>UpdateMember</a>
                                        <a hreaf='#'>WishList</a>
                                        <a hreaf='#'>Logout</a>
                                    </div></li> -->
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
                <div class="col-lg-11">
                    <div class="single-blog-item">
                    <div class="joint">
                        <div id="glucosamine1">
                            <img class="about-img" src="img/blog/list/joint/관절 - 글루코사민/glucosamine.png" alt="">
                            <img class="about-img" src="img/blog/list/joint/top.jpg" alt="">
                            <img class="about-img" src="img/blog/list/joint/관절 - 글루코사민/content.jpg" alt="">
                        </div>
                        <br>
                        <div id="boswelia2">
                            <img class="about-img" src="img/blog/list/joint/관절 - 보스웰리아/boswelia.png" alt="">
                            <img class="about-img" src="img/blog/list/joint/관절 - 보스웰리아/main.jpg" alt="">
                            <img class="about-img" src="img/blog/list/joint/관절 - 보스웰리아/content_01.jpg" alt="">
                            <img class="about-img" src="img/blog/list/joint/관절 - 보스웰리아/content_02.jpg" alt="">
                            <img class="about-img" src="img/blog/list/joint/관절 - 보스웰리아/content_03.jpg" alt="">
                            <img class="about-img" src="img/blog/list/joint/관절 - 보스웰리아/content_04.jpg" alt="">
                        </div>
                        <br>
                        <div id="msm2-5">
                            <img class="about-img" src="img/blog/list/joint/관절 - 엠에스엠/MSM.png" alt="">
                            <img class="about-img" src="img/blog/list/joint/관절 - 엠에스엠/main.jpg" alt="">
                            <img class="about-img" src="img/blog/list/joint/관절 - 엠에스엠/contents_01.jpg" alt="">
                            <img class="about-img" src="img/blog/list/joint/관절 - 엠에스엠/contents_02.jpg" alt="">
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                    <div class="기억력">
                        <div id="omega-33">
                            <img class="about-img info-tag" src="img/blog/list/memory/기억력-오메가3/omega3.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/memory/기억력-오메가3/top.jpg" alt="">
                            <img class="about-img" src="img/blog/list/memory/기억력-오메가3/content.jpg" alt="">
                        </div>
                        <br>
                        <div id="ginkgo4">
                            <img class="about-img info-tag" src="img/blog/list/memory/기억력 - 은행잎/은행잎.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/memory/기억력 - 은행잎/210219_ginkgo_800_main.jpg" alt="">
                            <img class="about-img" src="img/blog/list/memory/기억력 - 은행잎/contents_01.jpg" alt="">
                            <img class="about-img" src="img/blog/list/memory/기억력 - 은행잎/contents_02.jpg" alt="">
                        </div>
                    </div>
                    </div>
                </div>
                
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="눈">
                            <div id="vitamin-a5">
                                <img class="about-img info-tag" src="img/blog/list/eye/눈 - 비타민A/va.png" alt="">
                                <img class="about-img info-tag" src="img/blog/list/eye/눈 - 비타민A/main.jpg" alt="">
                                <img class="about-img" src="img/blog/list/eye/눈 - 비타민A/contents_01.jpg" alt="">
                                <img class="about-img" src="img/blog/list/eye/눈 - 비타민A/contents_02.jpg" alt="">
                            </div>
                            <br>
                            <div id="lutein-a5-5">
                                <img class="about-img info-tag" src="img/blog/list/eye/눈 - 루테인/lutein.png" alt="">
                                <img class="about-img" src="img/blog/list/eye/눈 - 루테인/200317_lutein_800_main.jpg" alt="">
                                <img class="about-img" src="img/blog/list/eye/눈 - 루테인/contents_01.jpg" alt="">
                            </div>
                            <br>
                            <div id="omega-36">
                                <img class="about-img info-tag" src="img/blog/list/memory/기억력-오메가3/omega3.png" alt="">
                                <img class="about-img info-tag" src="img/blog/list/memory/기억력-오메가3/top.jpg" alt="">
                                <img class="about-img" src="img/blog/list/memory/기억력-오메가3/content.jpg" alt="">
                             </div>
                    </div>
                    </div>
                </div>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="뼈">
                        <div id="vitamin-d7">
                            <img class="about-img info-tag" src="img/blog/list/bone/뼈 - 비타민D/vd.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/bone/뼈 - 비타민D/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/bone/뼈 - 비타민D/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/bone/뼈 - 비타민D/contents_02.jpg" alt="">
                        </div>
                        <br>
                        <div id="calcium8">
                            <img class="about-img info-tag" src="img/blog/list/bone/뼈 - 칼슘/calcium.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/bone/뼈 - 칼슘/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/bone/뼈 - 칼슘/content_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/bone/뼈 - 칼슘/content_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/bone/뼈 - 칼슘/content_03.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/bone/뼈 - 칼슘/content_04.jpg" alt="">
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="장">
                        <div id="aloe-gel8-5">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 알로에겔/알로에겔.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 알로에겔/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 알로에겔/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 알로에겔/contents_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 알로에겔/contents_03.jpg" alt="">
                        </div>
                        <br>
                        <div id="probiotics9">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 프로바이오틱스/probiotics.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 프로바이오틱스/프1.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 프로바이오틱스/프2.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 프로바이오틱스/프3.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 프로바이오틱스/프4.jpg" alt="">
                        </div>
                        <br>
                        <div id="cha9-5">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 차전자피/차전자피.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 차전자피/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 차전자피/content_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 차전자피/content_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 차전자피/content_03.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 차전자피/content_04.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 차전자피/content_05.jpg" alt="">
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="체지방감소">
                        <div id="garcinia10">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 가르시니아/가르시니아.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 가르시니아/200608_etc_800_main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 가르시니아/contents_01.jpg" alt="">
                        </div>
                        <br>
                        <div id="catechin11">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 카테킨/카테킨.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 카테킨/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 카테킨/content_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 카테킨/content_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 카테킨/content_03.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 카테킨/content_04.jpg" alt="">
                        </div>
                        <br>
                        <div id="chitosan12">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 키토산/키토산.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 키토산/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 키토산/content_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 키토산/content_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 키토산/content_03.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 키토산/content_04.jpg" alt="">
                        </div>
                    </div>
                    </div>
                </div>
                
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="콜레스테롤">
                        <div id="gamma13">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 감마리놀렌산/감마리놀렌산.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 감마리놀렌산/top.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 감마리놀렌산/content.jpg" alt="">
                        </div>
                        <br>
                        <div id="spirulina14">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 스피루리나/스피루리나.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 스피루리나/200803_etc_800_main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 스피루리나/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 스피루리나/contents_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 스피루리나/contents_03.jpg" alt="">
                        </div>
                        <br>
                        <div id="cha14-5">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 차전자피/차전자피.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 차전자피/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 차전자피/content_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 차전자피/content_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 차전자피/content_03.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 차전자피/content_04.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 차전자피/content_05.jpg" alt="">
                        </div>
                        <br>
                        <div id="catechin15">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 카테킨/카테킨.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 카테킨/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 카테킨/content_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 카테킨/content_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 카테킨/content_03.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 카테킨/content_04.jpg" alt="">
                        </div>
                        <br>
                        <div id="chlorella16">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 클로렐라/클로렐라.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 클로렐라/201013_etc_800_main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 클로렐라/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 클로렐라/contents_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 클로렐라/contents_03.jpg" alt="">
                        </div>
                        <br>
                        <div id="chitosan17">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 키토산/키토산.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 키토산/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 키토산/content_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 키토산/content_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 키토산/content_03.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 키토산/content_04.jpg" alt="">
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="피부">
                        <div id="gamma18">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 감마리놀렌산/감마리놀렌산.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 감마리놀렌산/top.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 감마리놀렌산/content.jpg" alt="">
                        </div>
                        <br>
                        <div id="spirulina19">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 스피루리나/스피루리나.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 스피루리나/200803_etc_800_main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 스피루리나/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 스피루리나/contents_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 스피루리나/contents_03.jpg" alt="">
                        </div>
                        <br>
                        <div id="aloe-gel19-5">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 알로에겔/알로에겔.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 알로에겔/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 알로에겔/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 알로에겔/contents_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/장 - 알로에겔/contents_03.jpg" alt="">
                        </div>
                        <br>
                        <div id="collagen20">
                            <img class="about-img info-tag" src="img/blog/list/skin/피부 - 콜라겐/콜라겐.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/skin/피부 - 콜라겐/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/skin/피부 - 콜라겐/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/skin/피부 - 콜라겐/contents_03.jpg" alt="">
                        </div>
                        <br>
                        <div id="chlorella21">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 클로렐라/클로렐라.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 클로렐라/201013_etc_800_main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 클로렐라/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 클로렐라/contents_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 클로렐라/contents_03.jpg" alt="">
                        </div>
                        
                    </div>
                    </div>
                </div>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="항산화">
                        
                        <div id="vitamin-c22">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/항산화 - 비타민C/vc.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/항산화 - 비타민C/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/항산화 - 비타민C/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/항산화 - 비타민C/contents_02.jpg" alt="">
                        </div>
                        <br>
                        <div id="spirulina23">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 스피루리나/스피루리나.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 스피루리나/200803_etc_800_main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 스피루리나/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 스피루리나/contents_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 스피루리나/contents_03.jpg" alt="">
                        </div>
                        <br>
                        <div id="catechin24">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 카테킨/카테킨.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 카테킨/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 카테킨/content_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 카테킨/content_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 카테킨/content_03.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/체지방감소 - 카테킨/content_04.jpg" alt="">
                        </div>
                        <br>
                        <div id="co-q-1025">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/항산화 - 코큐텐/코큐텐.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/항산화 - 코큐텐/200512_etc_800_main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/항산화 - 코큐텐/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/항산화 - 코큐텐/contents_02.jpg" alt="">
                        </div>
                        <br>
                        <div id="chlorella26">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 클로렐라/클로렐라.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 클로렐라/201013_etc_800_main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 클로렐라/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 클로렐라/contents_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 클로렐라/contents_03.jpg" alt="">
                        </div>
                        <br>
                        <div id="propolis27">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/항산화 - 프로폴리스/프로폴리스.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/항산화 - 프로폴리스/top.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/항산화 - 프로폴리스/content.jpg" alt="">
                        </div>
                        <br>
                        <div id="red-ginseng28">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/항산화 - 홍삼/홍삼.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/항산화 - 홍삼/top.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/항산화 - 홍삼/content.jpg" alt="">
                        </div>
                        
                    </div>
                    </div>
                </div>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="혈행개선">
                        <div id="gamma29">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 감마리놀렌산/감마리놀렌산.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 감마리놀렌산/top.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/콜레스테롤 - 감마리놀렌산/content.jpg" alt="">
                        </div>
                        <br>
                        <div id="ginkgo30">
                            <img class="about-img info-tag" src="img/blog/list/memory/기억력 - 은행잎/은행잎.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/memory/기억력 - 은행잎/210219_ginkgo_800_main.jpg" alt="">
                            <img class="about-img" src="img/blog/list/memory/기억력 - 은행잎/contents_01.jpg" alt="">
                            <img class="about-img" src="img/blog/list/memory/기억력 - 은행잎/contents_02.jpg" alt="">
                        </div>
                        <br>
                        <div id="red-ginseng31">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/항산화 - 홍삼/홍삼.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/항산화 - 홍삼/top.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/항산화 - 홍삼/content.jpg" alt="">
                        </div>
                    </div>
                    </div>
                </div>
                
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
                                <li><a href="./information1.html">효능/부위별 정보</a></li>
                                <li><a href="#">성분별 영양제품비교</a></li>
                                <li><a href="#">마이페이지</a></li>
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
    
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/circle-progress.min.js"></script>
    <script src="js/jquery.barfiller.js"></script>
    <script src="js/main.js"></script>
</body>

</html>