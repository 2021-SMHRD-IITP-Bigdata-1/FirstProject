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
    <title>���к� �����</title>

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
		                            <li><a href="./information1.jsp">ȿ��/������ ����</a></li>
		                            <li><a href="./information2.jsp">���к� ������ǰ�� </a></li>
		                            <li><a></a></li>
		                            <li><div class="dropdown">
		                                <i onclick="dp_menu()" class="search-btn2 fa">����������</i>
		                                 <div style="display: none;" id="drop-content">
		                                     <a href='member_update.jsp'>ȸ����������</a>
		                                     <a href='wishlist.jsp'>���ã��</a>
		                                     <a href='member_ withdraw.jsp'>ȸ��Ż��</a>
		                                 </div>
		                                </div>
		                            </li>
		                            <% if(vo == null) { %>
		                         		<li><a href="LoginJoin.jsp">�α���/ȸ������</a></li>
		                         	<% } else { %>
		                         		<li><a href="LogoutCon">�α׾ƿ�</a></li>
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
    <section class="breadcrumb-area set-bg" data-setbg="img/nutrient.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-content">
                        <h2  class="information-text">���к� ����</h2>
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
                    <h2 class="heading-section"><stong>���к�</strong></h2>
                    <div class="section-title">
                       
                        <table>
                            <tr>
                                <td>     
                                    <span class="box">
                                        <img alt="" src="img/Info2/1.png"/>
                                    </span>
                                    <p>�����ôϾ�</p>
                                </td>
                                <td>
                                    <span class="box">
                                        <img alt="" src="img/Info2/2.png" />
                                    </span>
                                    <p>���������</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/3.png" />
                                    </span>
                                    <p>�۷��ڻ��</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/4.png" />
                                    </span>
                                    <p>������</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/5.png" />
                                    </span>
                                    <p>��ũ����</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/6.png"/>
                                    </span>
                                    <p>����������</p>
                                </td>
                            </tr>
                            <br>
                            <tr>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/7.png" />
                                    </span>
                                    <p>��Ÿ�� A</p>
                                   
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/8.png" />
                                    </span>
                                    <p>��Ÿ�� C</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/9.png" />
                                    </span>
                                    <p>��Ÿ�� D</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/10.png" /> 
                                    </span>
                                    <p>���Ƿ縮��</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/11.png"/>
                                    </span>
                                    <p>�˷ο���</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/12.png" />
                                    </span>
                                    <p>��������</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="box">
                                        <img alt="" src="img/Info2/13.png"  id="���ް�3" class="submit">
                                    </span>
                                    <p>���ް�3</p>
                                
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/14.png" />
                                    </span>
                                    <p>������</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/15.png" />
                                    </span>
                                    <p>��������</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/16.png" />
                                    </span>
                                    <p>ī��Ų</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/17.png" />
                                    </span>
                                    <p>Į��</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/18.png" />
                                    </span>
                                    <p>��ť��</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/19.png"/>
                                    </span>
                                    <p>�ݶ��</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/20.png" />
                                    </span>
                                    <p>Ŭ�η���</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/21.png" />
                                    </span>
                                    <p>Ű���</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/22.png" />
                                    </span>
                                    <p>���ι��̿�ƽ��</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/23.png" />
                                    </span>
                                    <p>����������</p>
                                </td>
                                <td>
                                    <span class="box">
                                    <img alt="" src="img/Info2/24.png"/>
                                    </span>
                                    <p>ȫ��</p>
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
                            <li><a href="./information1.jsp">ȿ��/������ ����</a></li>
                            <li><a href="#">���к� ������ǰ��</a></li>
                            <li><a href="./login.jsp">�α���/ȸ������</a></li>
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
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/circle-progress.min.js"></script>
    <script src="js/jquery.barfiller.js"></script>
    <script src="js/main.js"></script>
    
    <script type="text/javascript"> document.getElementById("���ް�3").onclick = function () { location.href = "product_comparison4.jsp";};</script>
</body>

</html>