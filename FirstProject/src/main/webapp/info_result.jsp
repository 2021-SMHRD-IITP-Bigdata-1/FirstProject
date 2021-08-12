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
    var stmnLEFT = 1600; // ������ ���� 
    var stmnGAP1 = 0; // ���� ���� 
    var stmnGAP2 = 150; // ��ũ�ѽ� ������ ���ʰ� �������� �Ÿ� 
    var stmnBASE = 0; // ��ũ�� ������ġ 
    var stmnActivateSpeed = 1; //��ũ���� �ν��ϴ� ������ (���ڰ� Ŭ���� ������ �ν�)
    var stmnScrollSpeed = 1000; //��ũ�� �ӵ� (Ŭ���� ����)
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
     document.getElementById('STATICMENU').style.right = stmnLEFT + 'px';  //ó���� �����ʿ� ��ġ. left�� �ٲ㵵.
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

<body id="���� ����" onload="InitializeStaticMenu();">
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
                    <div class="card ��">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseOne">
                                <a>��</a>
                                <img src="img/Icon2/Icon2/��.png">
                            </div>
                        </div>
                        <div id="collapseOne" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href = "#milkseatle">��ũ����</a>
                            </div>
                        </div>
                    </div>
                    <div class="card ����">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseTwo">
                                <a>����</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/����.png">
                            </div>
                        </div>
                        <div id="collapseTwo" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#glucosamine1">�۷��ڻ��</a><br>
                                <a href="#boswelia2">����������</a><br>
                                <a href="#msm2-5">��������(MSM)</a>
                            </div>
                        </div>
                    </div>
                    <div class="card ����">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseThree">
                                <a>����</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/����.png">
                            </div>
                        </div>
                        <div id="collapseThree" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#omega-33">���ް�3</a><br>
                                <a href="#ginkgo4">������(¡��)</a>
                            </div>
                        </div>
                    </div>
                    <div class="card ��">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseFour">
                                <a>��</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/��.png">
                            </div>
                        </div>
                        <div id="collapseFour" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#vitamin-a5">��Ÿ��A</a><br>
                                <a href="#lutein-a5-5">������</a><br>
                                <a href="#omega-36">���ް�3</a>
                            </div>
                        </div>
                    </div>
                    <div class="card ��">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseFive">
                                <a>��</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/��.png">
                            </div>
                        </div>
                        <div id="collapseFive" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#vitamin-d7">��Ÿ��D</a><br>
                                <a href="#calcium8">Į��</a>
                            </div>
                        </div>
                    </div>
                    <div class="card ��">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseSix">
                                <a>��</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/��.png">
                            </div>
                        </div>
                        <div id="collapseSix" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#aloe-gel8-5">�˷ο���</a><br>
                                <a href="#probiotics9">���ι��̿�ƽ��</a><br>
                                <a href="#cha9-5">�������� ���̼���</a>
                            </div>
                        </div>
                    </div>
                    <div class="card ü���氨��">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseSeven">
                                <a>ü���氨��</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/ü����.png">
                            </div>
                        </div>
                        <div id="collapseSeven" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#garcinia10">�����ôϾ�</a><br>
                                <a href="#catechin11">ī��Ų</a><br>
                                <a href="#chitosan12">Ű���</a>
                            </div>
                        </div>
                    </div>
                    <div class="card �ݷ����׷�">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseEight">
                                <a>�ݷ����׷�</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/�ݷ����׷�.png">
                            </div>
                        </div>
                        <div id="collapseEight" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#gamma13">���������</a><br>
                                <a href="#spirulina14">���Ƿ縮��</a><br>
                                <a href="#cha14-5">�������� ���̼���</a><br>
                                <a href="#catechin15">ī��Ų</a><br>
                                <a href="#chlorella16">Ŭ�η���</a><br>
                                <a href="#chitosan17">Ű���</a>
                            </div>
                        </div>
                    </div>
                    <div class="card �Ǻ�">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseNine">
                                <a>�Ǻ�</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/�Ǻ�.png">
                            </div>
                        </div>
                        <div id="collapseNine" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#gamma18">���������</a><br>
                                <a href="#spirulina19">���Ƿ縮��</a><br>
                                <a href="#aloe-gel19-5">�˷ο���</a><br>
                                <a href="#collagen20">�ݶ��</a><br>
                                <a href="#chlorella21">Ŭ�η���</a>
                            </div>
                        </div>
                    </div>
                    <div class="card �׻�ȭ">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseTen">
                                <a>�׻�ȭ</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/�׻�ȭ.png">
                            </div>
                        </div>
                        <div id="collapseTen" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#vitamin-c22">��Ÿ��C</a><br>
                                <a href="#spirulina23">���Ƿ縮��</a><br>
                                <a href="#catechin24">ī��Ų</a><br>
                                <a href="#co-q-1025">��ť��</a><br>
                                <a href="#chlorella26">Ŭ�η���</a><br>
                                <a href="#propolis27">����������</a><br>
                                <a href="#red-ginseng28">ȫ��</a>
                            </div>
                        </div>
                    </div><div class="card ���ళ��">
                        <div class="card-heading">
                            <div data-toggle="collapse" data-target="#collapseEleven">
                                <a>���ళ��</a>
                                <img style="height: 64px;" src="img/Icon2/Icon2/���ళ��.png">
                            </div>
                        </div>
                        <div id="collapseEleven" class="collapse"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                <a href="#gamma29">���������</a><br>
                                <a href="#ginkgo30">������(¡��)</a><br>
                                <a href="#red-ginseng31">ȫ��</a>
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
                                <li><a href="./information1.html">ȿ��/������ ����</a></li>
                                <li><a href="./about-us.html">���к� ������ǰ�� </a></li>
                                <li><a></a></li>
                                <li><a href="./elements.html">����������</a></li>
                                <li><a href="./login.html">�α���/ȸ������</a></li>
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
                    <h2>�˻�</h2>
                    <form action="#">
                        <input type="search" placeholder="������ ������ �Է��ϼ���.">
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
                        <h2  class="information-text">���ɺ� ��õ ������ ����</h2>
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
                    <div class="��">
                        <div id="milkseatle" class="��ũ����">
                            <img class="about-img info-tag" src="img/blog/list/liver/��ũ����.png" alt="">
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
                            <img class="about-img" src="img/blog/list/joint/���� - �۷��ڻ��/glucosamine.png" alt="">
                            <img class="about-img" src="img/blog/list/joint/top.jpg" alt="">
                            <img class="about-img" src="img/blog/list/joint/���� - �۷��ڻ��/content.jpg" alt="">
                        </div>
                        <br>
                        <div id="boswelia2">
                            <img class="about-img" src="img/blog/list/joint/���� - ����������/boswelia.png" alt="">
                            <img class="about-img" src="img/blog/list/joint/���� - ����������/main.jpg" alt="">
                            <img class="about-img" src="img/blog/list/joint/���� - ����������/content_01.jpg" alt="">
                            <img class="about-img" src="img/blog/list/joint/���� - ����������/content_02.jpg" alt="">
                            <img class="about-img" src="img/blog/list/joint/���� - ����������/content_03.jpg" alt="">
                            <img class="about-img" src="img/blog/list/joint/���� - ����������/content_04.jpg" alt="">
                        </div>
                        <br>
                        <div id="msm2-5">
                            <img class="about-img" src="img/blog/list/joint/���� - ��������/MSM.png" alt="">
                            <img class="about-img" src="img/blog/list/joint/���� - ��������/main.jpg" alt="">
                            <img class="about-img" src="img/blog/list/joint/���� - ��������/contents_01.jpg" alt="">
                            <img class="about-img" src="img/blog/list/joint/���� - ��������/contents_02.jpg" alt="">
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                    <div class="����">
                        <div id="omega-33">
                            <img class="about-img info-tag" src="img/blog/list/memory/����-���ް�3/omega3.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/memory/����-���ް�3/top.jpg" alt="">
                            <img class="about-img" src="img/blog/list/memory/����-���ް�3/content.jpg" alt="">
                        </div>
                        <br>
                        <div id="ginkgo4">
                            <img class="about-img info-tag" src="img/blog/list/memory/���� - ������/������.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/memory/���� - ������/210219_ginkgo_800_main.jpg" alt="">
                            <img class="about-img" src="img/blog/list/memory/���� - ������/contents_01.jpg" alt="">
                            <img class="about-img" src="img/blog/list/memory/���� - ������/contents_02.jpg" alt="">
                        </div>
                    </div>
                    </div>
                </div>
                
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="��">
                            <div id="vitamin-a5">
                                <img class="about-img info-tag" src="img/blog/list/eye/�� - ��Ÿ��A/va.png" alt="">
                                <img class="about-img info-tag" src="img/blog/list/eye/�� - ��Ÿ��A/main.jpg" alt="">
                                <img class="about-img" src="img/blog/list/eye/�� - ��Ÿ��A/contents_01.jpg" alt="">
                                <img class="about-img" src="img/blog/list/eye/�� - ��Ÿ��A/contents_02.jpg" alt="">
                            </div>
                            <br>
                            <div id="lutein-a5-5">
                                <img class="about-img info-tag" src="img/blog/list/eye/�� - ������/lutein.png" alt="">
                                <img class="about-img" src="img/blog/list/eye/�� - ������/200317_lutein_800_main.jpg" alt="">
                                <img class="about-img" src="img/blog/list/eye/�� - ������/contents_01.jpg" alt="">
                            </div>
                            <br>
                            <div id="omega-36">
                                <img class="about-img info-tag" src="img/blog/list/memory/����-���ް�3/omega3.png" alt="">
                                <img class="about-img info-tag" src="img/blog/list/memory/����-���ް�3/top.jpg" alt="">
                                <img class="about-img" src="img/blog/list/memory/����-���ް�3/content.jpg" alt="">
                             </div>
                    </div>
                    </div>
                </div>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="��">
                        <div id="vitamin-d7">
                            <img class="about-img info-tag" src="img/blog/list/bone/�� - ��Ÿ��D/vd.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/bone/�� - ��Ÿ��D/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/bone/�� - ��Ÿ��D/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/bone/�� - ��Ÿ��D/contents_02.jpg" alt="">
                        </div>
                        <br>
                        <div id="calcium8">
                            <img class="about-img info-tag" src="img/blog/list/bone/�� - Į��/calcium.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/bone/�� - Į��/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/bone/�� - Į��/content_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/bone/�� - Į��/content_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/bone/�� - Į��/content_03.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/bone/�� - Į��/content_04.jpg" alt="">
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="��">
                        <div id="aloe-gel8-5">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - �˷ο���/�˷ο���.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - �˷ο���/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - �˷ο���/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - �˷ο���/contents_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - �˷ο���/contents_03.jpg" alt="">
                        </div>
                        <br>
                        <div id="probiotics9">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - ���ι��̿�ƽ��/probiotics.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - ���ι��̿�ƽ��/��1.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - ���ι��̿�ƽ��/��2.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - ���ι��̿�ƽ��/��3.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - ���ι��̿�ƽ��/��4.jpg" alt="">
                        </div>
                        <br>
                        <div id="cha9-5">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - ��������/��������.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - ��������/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - ��������/content_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - ��������/content_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - ��������/content_03.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - ��������/content_04.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - ��������/content_05.jpg" alt="">
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="ü���氨��">
                        <div id="garcinia10">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - �����ôϾ�/�����ôϾ�.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - �����ôϾ�/200608_etc_800_main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - �����ôϾ�/contents_01.jpg" alt="">
                        </div>
                        <br>
                        <div id="catechin11">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - ī��Ų/ī��Ų.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - ī��Ų/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - ī��Ų/content_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - ī��Ų/content_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - ī��Ų/content_03.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - ī��Ų/content_04.jpg" alt="">
                        </div>
                        <br>
                        <div id="chitosan12">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - Ű���/Ű���.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - Ű���/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - Ű���/content_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - Ű���/content_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - Ű���/content_03.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - Ű���/content_04.jpg" alt="">
                        </div>
                    </div>
                    </div>
                </div>
                
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="�ݷ����׷�">
                        <div id="gamma13">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���������/���������.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���������/top.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���������/content.jpg" alt="">
                        </div>
                        <br>
                        <div id="spirulina14">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���Ƿ縮��/���Ƿ縮��.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���Ƿ縮��/200803_etc_800_main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���Ƿ縮��/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���Ƿ縮��/contents_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���Ƿ縮��/contents_03.jpg" alt="">
                        </div>
                        <br>
                        <div id="cha14-5">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - ��������/��������.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - ��������/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - ��������/content_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - ��������/content_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - ��������/content_03.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - ��������/content_04.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - ��������/content_05.jpg" alt="">
                        </div>
                        <br>
                        <div id="catechin15">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - ī��Ų/ī��Ų.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - ī��Ų/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - ī��Ų/content_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - ī��Ų/content_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - ī��Ų/content_03.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - ī��Ų/content_04.jpg" alt="">
                        </div>
                        <br>
                        <div id="chlorella16">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - Ŭ�η���/Ŭ�η���.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - Ŭ�η���/201013_etc_800_main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - Ŭ�η���/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - Ŭ�η���/contents_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - Ŭ�η���/contents_03.jpg" alt="">
                        </div>
                        <br>
                        <div id="chitosan17">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - Ű���/Ű���.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - Ű���/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - Ű���/content_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - Ű���/content_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - Ű���/content_03.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - Ű���/content_04.jpg" alt="">
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="�Ǻ�">
                        <div id="gamma18">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���������/���������.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���������/top.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���������/content.jpg" alt="">
                        </div>
                        <br>
                        <div id="spirulina19">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���Ƿ縮��/���Ƿ縮��.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���Ƿ縮��/200803_etc_800_main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���Ƿ縮��/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���Ƿ縮��/contents_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���Ƿ縮��/contents_03.jpg" alt="">
                        </div>
                        <br>
                        <div id="aloe-gel19-5">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - �˷ο���/�˷ο���.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - �˷ο���/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - �˷ο���/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - �˷ο���/contents_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/intestine/�� - �˷ο���/contents_03.jpg" alt="">
                        </div>
                        <br>
                        <div id="collagen20">
                            <img class="about-img info-tag" src="img/blog/list/skin/�Ǻ� - �ݶ��/�ݶ��.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/skin/�Ǻ� - �ݶ��/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/skin/�Ǻ� - �ݶ��/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/skin/�Ǻ� - �ݶ��/contents_03.jpg" alt="">
                        </div>
                        <br>
                        <div id="chlorella21">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - Ŭ�η���/Ŭ�η���.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - Ŭ�η���/201013_etc_800_main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - Ŭ�η���/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - Ŭ�η���/contents_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - Ŭ�η���/contents_03.jpg" alt="">
                        </div>
                        
                    </div>
                    </div>
                </div>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="�׻�ȭ">
                        
                        <div id="vitamin-c22">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/�׻�ȭ - ��Ÿ��C/vc.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/�׻�ȭ - ��Ÿ��C/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/�׻�ȭ - ��Ÿ��C/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/�׻�ȭ - ��Ÿ��C/contents_02.jpg" alt="">
                        </div>
                        <br>
                        <div id="spirulina23">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���Ƿ縮��/���Ƿ縮��.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���Ƿ縮��/200803_etc_800_main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���Ƿ縮��/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���Ƿ縮��/contents_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���Ƿ縮��/contents_03.jpg" alt="">
                        </div>
                        <br>
                        <div id="catechin24">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - ī��Ų/ī��Ų.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - ī��Ų/main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - ī��Ų/content_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - ī��Ų/content_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - ī��Ų/content_03.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/diet/ü���氨�� - ī��Ų/content_04.jpg" alt="">
                        </div>
                        <br>
                        <div id="co-q-1025">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/�׻�ȭ - ��ť��/��ť��.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/�׻�ȭ - ��ť��/200512_etc_800_main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/�׻�ȭ - ��ť��/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/�׻�ȭ - ��ť��/contents_02.jpg" alt="">
                        </div>
                        <br>
                        <div id="chlorella26">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - Ŭ�η���/Ŭ�η���.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - Ŭ�η���/201013_etc_800_main.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - Ŭ�η���/contents_01.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - Ŭ�η���/contents_02.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - Ŭ�η���/contents_03.jpg" alt="">
                        </div>
                        <br>
                        <div id="propolis27">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/�׻�ȭ - ����������/����������.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/�׻�ȭ - ����������/top.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/�׻�ȭ - ����������/content.jpg" alt="">
                        </div>
                        <br>
                        <div id="red-ginseng28">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/�׻�ȭ - ȫ��/ȫ��.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/�׻�ȭ - ȫ��/top.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/�׻�ȭ - ȫ��/content.jpg" alt="">
                        </div>
                        
                    </div>
                    </div>
                </div>
                <div class="col-lg-11">
                    <div class="single-blog-item">
                        <div class="���ళ��">
                        <div id="gamma29">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���������/���������.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���������/top.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/cholesterol/�ݷ����׷� - ���������/content.jpg" alt="">
                        </div>
                        <br>
                        <div id="ginkgo30">
                            <img class="about-img info-tag" src="img/blog/list/memory/���� - ������/������.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/memory/���� - ������/210219_ginkgo_800_main.jpg" alt="">
                            <img class="about-img" src="img/blog/list/memory/���� - ������/contents_01.jpg" alt="">
                            <img class="about-img" src="img/blog/list/memory/���� - ������/contents_02.jpg" alt="">
                        </div>
                        <br>
                        <div id="red-ginseng31">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/�׻�ȭ - ȫ��/ȫ��.png" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/�׻�ȭ - ȫ��/top.jpg" alt="">
                            <img class="about-img info-tag" src="img/blog/list/antioxidant/�׻�ȭ - ȫ��/content.jpg" alt="">
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
                                <li><a href="./information1.html">ȿ��/������ ����</a></li>
                                <li><a href="#">���к� ������ǰ��</a></li>
                                <li><a href="#">����������</a></li>
                                <li><a href="./login.html">�α���/ȸ������</a></li>
                            </ul>
                        </div>
                        <div class="subscribe-form">
                            <form action="#">
                                <input type="text" placeholder="������ ������ �Է��ϼ���.">
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