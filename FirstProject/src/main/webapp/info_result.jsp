<%@page import="VO.PickVO"%>
<%@page import="DAO.MemberDAO"%>
<%@page import="VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
 <%@ page import= "java.net.URLEncoder" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="euc-kr">
    <meta name="description" content="TopGym Template">
    <meta name="keywords" content="TopGym, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>失歳紺 薦念搾嘘</title>

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
    var stmnLEFT = 1600; // 神献楕 食拷 
    var stmnGAP1 = 0; // 是楕 食拷 
    var stmnGAP2 = 150; // 什滴継獣 崎虞酔煽 是楕引 恭嬢走澗 暗軒 
    var stmnBASE = 0; // 什滴継 獣拙是帖 
    var stmnActivateSpeed = 1; //什滴継聖 昔縦馬澗 渠傾戚 (収切亜 適呪系 汗軒惟 昔縦)
    var stmnScrollSpeed = 1000; //什滴継 紗亀 (適呪系 汗顕)
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
     document.getElementById('STATICMENU').style.right = stmnLEFT + 'px';  //坦製拭 神献楕拭 是帖. left稽 郊蚊亀.
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

<body id="沙掘 竺舛" onload="InitializeStaticMenu();">
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
                
                <% if(SymA.equals("娃") || SymB.equals("娃") || SymC.equals("娃")) { %>
                    <div class="card 娃">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseOne">
                                <a>娃</a>
                                <img src="img/Icon2/Icon2/liver.png">
                            </div>
                        </div>
                        <div id="collapseOne" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href = "#milkseatle" id="nut1">腔滴松十</a>
                                <input type="button" value="+" onclick="goComparison(1)">
                            </div>
                        </div>
                    </div>
                    
                <% } if (SymA.equals("淫箭") || SymB.equals("淫箭") || SymC.equals("淫箭")) { %>
                    
                    <div class="card 淫箭">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseTwo">
                                <a>淫箭</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/joint.png">
                            </div>
                        </div>
                        <div id="collapseTwo" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#glucosamine1" id="nut2">越欠坪紫肯</a>
                                <input type="button" value="+" onclick="goComparison(2)">
                                <br>
                                <a href="#boswelia2" id="nut3">左什寸軒焼</a>
                                <input type="button" value="+" onclick="goComparison(3)">
                                <br>
                                <a href="#msm2-5" id="nut4">織拭什織(MSM)</a>
                                <input type="button" value="+" onclick="goComparison(4)">
                            </div>
                        </div>
                    </div>
                    
                    <% } if (SymA.equals("奄常径") || SymB.equals("奄常径") || SymC.equals("奄常径")) { %>
                    
                    <div class="card 奄常径">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseThree">
                                <a>奄常径</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/memory.png">
                            </div>
                        </div>
                        <div id="collapseThree" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#omega-33" id="nut5">神五亜3</a>
                                <input type="button" value="+" onclick="goComparison(5)">
                                <br>
                                <a href="#ginkgo4" id="nut6">精楳碩(臓坪)
                                <input type="button" value="+" onclick="goComparison(6)">
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <% } if (SymA.equals("勧") || SymB.equals("勧") || SymC.equals("勧")) { %>
                    
                    <div class="card 勧">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseFour">
                                <a>勧</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/eye.png">
                            </div>
                        </div>
                        <div id="collapseFour" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#vitamin-a5" id="nut7">搾展肯A</a>
                                <input type="button" value="+" onclick="goComparison(7)">
                                <br>
                                <a href="#lutein-a5-5" id="nut8">欠砺昔</a>
                                <input type="button" value="+" onclick="goComparison(8)">
                                <br>
                                <a href="#omega-36" id="nut9">神五亜3</a>
                                <input type="button" value="+" onclick="goComparison(9)">
                            </div>
                        </div>
                    </div>
                    
                    <% } if (SymA.equals("酸") || SymB.equals("酸") || SymC.equals("酸")) { %>
                    
                    <div class="card 酸">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseFive">
                                <a>酸</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/bone.png">
                            </div>
                        </div>
                        <div id="collapseFive" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#vitamin-d7" id="nut10">搾展肯D</a>
                                <input type="button" value="+"  onclick="goComparison(10)">
                                <br>
                                <a href="#calcium8" id="nut11">町酬</a>
                                <input type="button" value="+"  onclick="goComparison(11)">
                            </div>
                        </div>
                    </div>
                    
                    <% } if (SymA.equals("舌") || SymB.equals("舌") || SymC.equals("舌")) { %>
                    
                    <div class="card 舌">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseSix">
                                <a>舌</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/intestine.png">
                            </div>
                        </div>
                        <div id="collapseSix" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#aloe-gel8-5" id="nut12">硝稽拭慰</a>
                                <input type="button" value="+"  onclick="goComparison(12)">
                                <br>
                                <a href="#probiotics9" id="nut13">覗稽郊戚神峠什</a>
                                <input type="button" value="+"  onclick="goComparison(13)">
                                <br>
                                <a href="#cha9-5" id="nut14">託穿切杷 縦戚雫政</a>
                            	<input type="button" value="+ "  onclick="goComparison(14)">
                            </div>
                        </div>
                    </div>
                    
                    <% } if (SymA.equals("端走号姶社") || SymB.equals("端走号姶社") || SymC.equals("端走号姶社")) { %>
                    
                    <div class="card 端走号姶社">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseSeven">
                                <a>端走号姶社</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/diet.png">
                            </div>
                        </div>
                        <div id="collapseSeven" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#garcinia10" id="nut15">亜牽獣艦焼</a>
                                <input type="button" value="+"  onclick="goComparison(15)">
                                <br>
                                <a href="#catechin11" id="nut16">朝砺轍</a>
                                <input type="button" value="+"  onclick="goComparison(16)">
                                <br>
                                <a href="#chitosan12" id="nut17">徹塘至</a>
                                <input type="button" value="+"  onclick="goComparison(17)">
                            </div>
                        </div>
                    </div>
                    
                    <% } if (SymA.equals("紬傾什砺継") || SymB.equals("紬傾什砺継") || SymC.equals("紬傾什砺継")) { %>
                    
                    <div class="card 紬傾什砺継">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseEight">
                                <a>紬傾什砺継</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/cholesterol.png">
                            </div>
                        </div>
                        <div id="collapseEight" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#gamma13" id="nut18">姶原軒且兄至</a>
                                <input type="button" value="+"  onclick="goComparison(18)">
                                <br>
                                <a href="#spirulina14" id="nut19">什杷欠軒蟹</a>
                                <input type="button" value="+"  onclick="goComparison(19)">
                                <br>
                                <a href="#cha14-5" id="nut20">託穿切杷 縦戚雫政</a>
                                <input type="button" value="+"  onclick="goComparison(20)">
                                <br>
                                <a href="#catechin15" id="nut21">朝砺轍</a>
                                <input type="button" value="+"  onclick="goComparison(21)">
                                <br>
                                <a href="#chlorella16" id="nut22">適稽啓虞</a>
                                <input type="button" value="+"  onclick="goComparison(22)">
                                <br>
                                <a href="#chitosan17" id="nut23">徹塘至</a>
                                <input type="button" value="+"  onclick="goComparison(23)">
                            </div>
                        </div>
                    </div>
                    
                    <% } if (SymA.equals("杷採") || SymB.equals("杷採") || SymC.equals("杷採")) { %>
                    
                    <div class="card 杷採">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseNine">
                                <a>杷採</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/skin.png">
                            </div>
                        </div>
                        <div id="collapseNine" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#gamma18" id="nut24">姶原軒且兄至</a>
                                <input type="button" value="+"  onclick="goComparison(24)">
                                <br>
                                <a href="#spirulina19" id="nut25">什杷欠軒蟹</a>
                                <input type="button" value="+"  onclick="goComparison(25)">
                                <br>
                                <a href="#aloe-gel19-5" id="nut26">硝稽拭慰</a>
                                <input type="button" value="+"  onclick="goComparison(26)">
                                <br>
                                <a href="#collagen20" id="nut27">紬虞意</a>
                                <input type="button" value="+"  onclick="goComparison(27)">
                                <br>
                                <a href="#chlorella21"id="nut28">適稽啓虞</a>
                                <input type="button" value="+"  onclick="goComparison(28)">
                            </div>
                        </div>
                    </div>
                    
                    <% } if (SymA.equals("牌至鉢") || SymB.equals("牌至鉢") || SymC.equals("牌至鉢")) { %>
                    <div class="card 牌至鉢">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseTen">
                                <a>牌至鉢</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/antioxidant.png">
                            </div>
                        </div>
                        <div id="collapseTen" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#vitamin-c22" id="nut29">搾展肯C</a>
                                <input type="button" value="+" onclick="goComparison(29)">
                                <br>
                                <a href="#spirulina23" id="nut30">什杷欠軒蟹</a>
                                <input type="button" value="+" onclick="goComparison(30)">
                                <br>
                                <a href="#catechin24" id="nut31">朝砺轍</a>
                                <input type="button" value="+" onclick="goComparison(31)">
                                <br>
                                <a href="#co-q-1025" id="nut32">坪泥度</a>
                                <input type="button" value="+" onclick="goComparison(32)">
                                <br>
                                <a href="#chlorella26" id="nut33">適稽啓虞</a>
                                <input type="button" value="+" onclick="goComparison(33)">
                                <br>
                                <a href="#propolis27" id="nut34">覗稽虹軒什</a>
                                <input type="button" value="+" onclick="goComparison(34)">
                                <br>
                                <a href="#red-ginseng28" id="nut35">畠誌</a>
                                <input type="button" value="+" onclick="goComparison(35)">
                            </div>
                        </div>
                    </div>
                    
                    
                    <% } if (SymA.equals("迫楳鯵識") || SymB.equals("迫楳鯵識") || SymC.equals("迫楳鯵識")) { %>
                    <div class="card 迫楳鯵識">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseEleven">
                                <a>迫楳鯵識</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/blood.png">
                            </div>
                        </div>
                        <div id="collapseEleven" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#gamma29" id="nut36">姶原軒且兄至</a>
                                <input type="button" value="+" onclick="goComparison(36)">
                                <br>
                                <a href="#ginkgo30" id="nut37">精楳碩(臓坪)</a>
                                <input type="button" value="+" onclick="goComparison(37)">
                                <br>
                                <a href="#red-ginseng31" id="nut38">畠誌</a>
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
                                <li><a href="./information1.jsp">反管/採是紺 舛左</a></li>
                                <li><a href="./information2.jsp">失歳紺 慎丞薦念搾嘘 </a></li>
                                <li><a></a></li>
                                <li><div class="dropdown">
                                    <i onclick="dp_menu()" class="search-btn2 fa">原戚凪戚走</i>
	                                    <div style="display: none;" id="drop-content">
	                                        <a href='member_update.jsp'>噺据舛左呪舛</a>
	                                        <a href='wishlist.jsp'>荘移達奄</a>
	                                        <a href='member_ withdraw.jsp'>噺据纏盗</a>
	                                    </div>
                                    </div>
                                    </li>
                                <% if(vo == null) { %>
	                                <li><a href="LoginJoin.jsp">稽益昔/噺据亜脊</a></li>
                                <% } else { %>
                                	<li><a href="LogoutCon">稽益焼数</a></li>
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
                    <h2>伊事</h2>
                    <form action="#">
                        <input type="search" placeholder="慎丞薦 失歳聖 脊径馬室推.">
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
                        <h2  class="information-text">淫宿紺 蓄探 慎丞薦 舛左</h2>
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
            
            <% if(SymA.equals("娃") || SymB.equals("娃") || SymC.equals("娃")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
	                    <div class="娃">
	                        <div id="milkseatle" class="腔滴松十">
	                            <img class="about-img info-tag" src="img/blog/list/liver/腔滴松十.png" alt="">
	                            <img class="about-img" src="img/blog/list/liver/main.jpg" alt="">
	                            <img class="about-img" src="img/blog/list/liver/contents_01.jpg" alt="">
	                        </div>
	                    </div>
                    </div>
                </div>
                
                <% } 
            	if (SymA.equals("淫箭") || SymB.equals("淫箭") || SymC.equals("淫箭")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
	                    <div class="淫箭">
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
                
                <% } if (SymA.equals("奄常径") || SymB.equals("奄常径") || SymC.equals("奄常径")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
	                    <div class="奄常径">
	                        <div id="omega-33">
	                            <img class="about-img info-tag" src="img/blog/list/memory/memory_omega3/omega3.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/memory/memory_omega3/top.jpg" alt="">
	                            <img class="about-img" src="img/blog/list/memory/memory_omega3/content.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="ginkgo4">
	                            <img class="about-img info-tag" src="img/blog/list/memory/memory_zinco/精楳碩.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/memory/memory_zinco/210219_ginkgo_800_main.jpg" alt="">
	                            <img class="about-img" src="img/blog/list/memory/memory_zinco/contents_01.jpg" alt="">
	                            <img class="about-img" src="img/blog/list/memory/memory_zinco/contents_02.jpg" alt="">
	                        </div>
	                    </div>
                    </div>
                </div>
                
                <% } if (SymA.equals("勧") || SymB.equals("勧") || SymC.equals("勧")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="勧">
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
                
                <% } if (SymA.equals("酸") || SymB.equals("酸") || SymC.equals("酸")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="酸">
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
                
                <% } if (SymA.equals("舌") || SymB.equals("舌") || SymC.equals("舌")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="舌">
	                        <div id="aloe-gel8-5">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_AloeGel/硝稽拭慰.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_AloeGel/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_AloeGel/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_AloeGel/contents_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_AloeGel/contents_03.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="probiotics9">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_probiotics/probiotics.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_probiotics/覗1.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_probiotics/覗2.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_probiotics/覗3.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_probiotics/覗4.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="cha9-5">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/intestine_psyllium/託穿切杷.png" alt="">
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
                
                <% } if (SymA.equals("端走号姶社") || SymB.equals("端走号姶社") || SymC.equals("端走号姶社")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="端走号姶社">
	                        <div id="garcinia10">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_Garcinia/亜牽獣艦焼.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_Garcinia/200608_etc_800_main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_Garcinia/contents_01.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="catechin11">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_catechins/朝砺轍.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_catechins/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_catechins/content_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_catechins/content_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_catechins/content_03.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_catechins/content_04.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="chitosan12">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_chitosan/徹塘至.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_chitosan/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_chitosan/content_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_chitosan/content_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_chitosan/content_03.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/diet_chitosan/content_04.jpg" alt="">
	                        </div>
                    	</div>
                    </div>
                </div>
                
                <% } if (SymA.equals("紬傾什砺継") || SymB.equals("紬傾什砺継") || SymC.equals("紬傾什砺継")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="紬傾什砺継">
	                        <div id="gamma13">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/cholesterol_gamma/姶原軒且兄至.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/cholesterol_gamma/top.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/cholesterol_gamma/content.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="spirulina14">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/cholesterol_spirulina/什杷欠軒蟹.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/cholesterol_spirulina/200803_etc_800_main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/cholesterol_spirulina/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/cholesterol_spirulina/contents_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/cholesterol_spirulina/contents_03.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="cha14-5">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/cholesterol_psyllium/託穿切杷.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/cholesterol_psyllium/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/cholesterol_psyllium/content_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/cholesterol_psyllium/content_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/cholesterol_psyllium/content_03.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/cholesterol_psyllium/content_04.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/cholesterol_psyllium/content_05.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="catechin15">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_catechins/朝砺轍.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_catechins/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_catechins/content_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_catechins/content_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_catechins/content_03.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_catechins/content_04.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="chlorella16">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_Chlorella/適稽啓虞.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_Chlorella/201013_etc_800_main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_Chlorella/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_Chlorella/contents_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_Chlorella/contents_03.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="chitosan17">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_chitosan/徹塘至.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_chitosan/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_chitosan/content_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_chitosan/content_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_chitosan/content_03.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/cholesterol_chitosan/content_04.jpg" alt="">
	                        </div>
                    	</div>
                    </div>
                </div>
                
                <% } if (SymA.equals("杷採") || SymB.equals("杷採") || SymC.equals("杷採")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="杷採">
	                        <div id="gamma18">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_gamma/姶原軒且兄至.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_gamma/top.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_gamma/content.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="spirulina19">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_spirulina/什杷欠軒蟹.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_spirulina/200803_etc_800_main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_spirulina/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_spirulina/contents_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_spirulina/contents_03.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="aloe-gel19-5">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/skin_AloeGel/硝稽拭慰.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/skin_AloeGel/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/skin_AloeGel/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/skin_AloeGel/contents_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/intestine/skin_AloeGel/contents_03.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="collagen20">
	                            <img class="about-img info-tag" src="img/blog/list/skin/skin_Collagen/紬虞意.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/skin/skin_Collagen/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/skin/skin_Collagen/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/skin/skin_Collagen/contents_03.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="chlorella21">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_Chlorella/適稽啓虞.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_Chlorella/201013_etc_800_main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_Chlorella/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_Chlorella/contents_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/skin_Chlorella/contents_03.jpg" alt="">
	                        </div>
                    	</div>
                    </div>
                </div>
                
                <% } if (SymA.equals("牌至鉢") || SymB.equals("牌至鉢") || SymC.equals("牌至鉢")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="牌至鉢">
                        
	                        <div id="vitamin-c22">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_vitaminC/vc.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_vitaminC/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_vitaminC/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_vitaminC/contents_02.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="spirulina23">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_spirulina/什杷欠軒蟹.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_spirulina/200803_etc_800_main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_spirulina/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_spirulina/contents_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_spirulina/contents_03.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="catechin24">
	                            <img class="about-img info-tag" src="img/blog/list/diet/antioxidant_catechins/朝砺轍.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/antioxidant_catechins/main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/antioxidant_catechins/content_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/antioxidant_catechins/content_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/antioxidant_catechins/content_03.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/diet/antioxidant_catechins/content_04.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="co-q-1025">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_CoQ10/坪泥度.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_CoQ10/200512_etc_800_main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_CoQ10/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_CoQ10/contents_02.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="chlorella26">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_Chlorella/適稽啓虞.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_Chlorella/201013_etc_800_main.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_Chlorella/contents_01.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_Chlorella/contents_02.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/cholesterol/antioxidant_Chlorella/contents_03.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="propolis27">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_propolis/覗稽虹軒什.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_propolis/top.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_propolis/content.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="red-ginseng28">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_red_ginseng/畠誌.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_red_ginseng/top.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/antioxidant/antioxidant_red_ginseng/content.jpg" alt="">
	                        </div>
                    	</div>
                    </div>
                </div>
                
                <% } if (SymA.equals("迫楳鯵識") || SymB.equals("迫楳鯵識") || SymC.equals("迫楳鯵識")) { %>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="迫楳鯵識">
	                        <div id="gamma29">
	                            <img class="about-img info-tag" src="img/blog/list/blood/blood_gamma/姶原軒且兄至.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/blood/blood_gamma/top.jpg" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/blood/blood_gamma/content.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="ginkgo30">
	                            <img class="about-img info-tag" src="img/blog/list/blood/blood_zinco/精楳碩.png" alt="">
	                            <img class="about-img info-tag" src="img/blog/list/blood/blood_zinco/210219_ginkgo_800_main.jpg" alt="">
	                            <img class="about-img" src="img/blog/list/blood/blood_zinco/contents_01.jpg" alt="">
	                            <img class="about-img" src="img/blog/list/blood/blood_zinco/contents_02.jpg" alt="">
	                        </div>
	                        <br>
	                        <div id="red-ginseng31">
	                            <img class="about-img info-tag" src="img/blog/list/blood/blood_red_ginseng/畠誌.png" alt="">
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
                                <li><a href="./information1.jsp">反管/採是紺 舛左</a></li>
                                <li><a href="#">失歳紺 慎丞薦念搾嘘</a></li>
                                <li><a href="./login.jsp">稽益昔/噺据亜脊</a></li>
                            </ul>
                        </div>
                        <div class="subscribe-form">
                            <form action="#">
                                <input type="text" placeholder="慎丞薦 失歳聖 脊径馬室推.">
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
    
    <script type ="text/javascript">
    	function goComparison(num) {
    		var nutName = document.getElementById('nut'+num).innerText;
    		
    		alert(nutName);
    		
    		
    		if(nutName.equals("町酬")) {
    			location.href = "product_comparison1.jsp";
    		} else if(nutName.equals("神五亜3")) {
    			location.href = "product_comparison2.jsp";
    		} else if(nutName.equals("搾展肯A")) {
    			location.href = "product_comparison7.jsp";
    		} else if(nutName.equals("越欠坪紫肯")) {
    			location.href = "product_comparison3.jsp";
    		} else if(nutName.equals("搾展肯C")) {
    			location.href = "product_comparison8.jsp";
    		} else if(nutName.equals("搾展肯D")) {
    			location.href = "product_comparison9.jsp";
    		} else if(nutName.equals("欠砺昔")) {
    			location.href = "product_comparison4.jsp";
    		} else if(nutName.equals("覗稽郊戚神峠什")) {
    			location.href = "product_comparison22.jsp";
    		} else if(nutName.equals("硝稽拭慰")) {
    			location.href = "product_comparison11.jsp";
    		} else if(nutName.equals("託穿切杷")) {
    			location.href = "product_comparison15.jsp";
    		} else if(nutName.equals("織拭什織")) {
    			location.href = "product_comparison12.jsp";
    		} else if(nutName.equals("左什寸軒焼")) {}
    			location.href = "product_comparison6.jsp";
    		} else if(nutName.equals("姶原軒且兄至")) {
    			location.href = "product_comparison2.jsp";
    		} else if(nutName.equals("精楳碩")) {
    			location.href = "product_comparison14.jsp";
    		} else if(nutName.equals("畠誌")) {
    			location.href = "product_comparison24.jsp";
    		} else if(nutName.equals("什杷欠軒蟹")) {
    			location.href = "product_comparison10.jsp";
    		} else if(nutName.equals("適稽啓虞")) {
    			location.href = "product_comparison20.jsp";
    		} else if(nutName.equals("徹塘至")) {
    			location.href = "product_comparison21.jsp";
    		} else if(nutName.equals("朝砺轍")) {
    			location.href = "product_comparison16.jsp";
    		} else if(nutName.equals("亜牽獣艦焼")) {
    			location.href = "product_comparison1.jsp";
    		} else if(nutName.equals("覗稽虹軒什")) {
    			location.href = "product_comparison23.jsp";
    		} else if(nutName.equals("坪泥度")) {
    			location.href = "product_comparison18.jsp";
    		} else if(nutName.equals("紬虞意")) {
    			location.href = "product_comparison19.jsp";
    		} else if(nutName.equals("腔滴獣十")) {
    			location.href = "product_comparison5.jsp";
    		} else {
    			alert("叔鳶 ばばばばばば");
    		}
    		
    		
                /*
    		$.ajax({
				// 汽戚斗 穿勺号縦(get/post)
				type : "post",
				contentType: "application/x-www-form-urlencoded; charset=euc-kr",
				
				
				// 穿勺拝 汽戚斗
				data : {"nut" : nutName},
				// 汽戚斗研 穿勺拝 辞獄凪戚走
				url : "ComparisonCon",
				
				// 誓岩汽戚斗 展脊
				dataType : "text",
				success : function(data) {
					 alert(data);
					 
					 if(data == "true") {
						 if(nutName.equals('')) {
							 
						 } else if(nutName.equals(''))
						 location.href = 'product_comparison.jsp';
						 
					 } else {
						 
					 }
					 
				},
				error : function() {
					alert("叔鳶!");
				}
				
			})
			*/
    		
    		

    	}
    
    </script>
    
    
    
    
    
    
    
    
    
    
    
</body>

</html>