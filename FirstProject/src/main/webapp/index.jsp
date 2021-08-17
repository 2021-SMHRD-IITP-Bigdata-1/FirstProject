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
    <title>���������� �������� ���Ű� ȯ���մϴ�!</title>

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
                                <li><a href="./information1.jsp">ȿ��/������ ����</a></li>
                                <li><a href="./information2.jsp">���к� ������ǰ�� </a></li>
                                <li><a></a></li>
                                <li><div class="dropdown">
                                    <i onclick="dp_menu()" class="search-btn2 fa">����������</i>
	                                    <div style="display: none;" id="drop-content">
	                                        <a href='member_update.jsp'>ȸ����������</a>
	                                        <a href='wishlist.jsp'  type="submit" onclick="LoginCheck()">���ã��</a>
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
                        <h2>���� ����</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single-service">
                        <img src="img/icon-1.png" alt="">
                        <h5>ȿ��/������ ����</h5>
                        <p>��<span class="m-counter" style="font-size: 45px;">11</span>������ ȿ��/������ �ʿ��� ���缺�а� ������ �����մϴ�.<br>�� ���� ������ �ʿ��� ������ �����ϼ���.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-service">
                        <img src="img/icon-2.png" alt="">
                        <h5>���к� ����</h5>
                        <p>��  <span class="m-counter" style="font-size: 40px;">24</span>���� ������ ȿ��, ����&���� TIP, ���� �� ���ǻ��� �� ���� ������ �˷��帳�ϴ�.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-service">
                        <img src="img/icon-3.png" alt="">
                        <h5>����/���� �α���ǰ ��</h5>
                        <p>���и��� �����ϰ� �α��ִ� ��ǰ���� ����, ���� ��ǰ���� ���ص帳�ϴ�.<br>Ȯ���ϰ� ������ ��� ��ǰ�� ���ã�� �ϼ���.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-service">
                        <img src="img/icon-4.png" alt="">
                        <h5>��ǰ�� ���� Ȯ��</h5>
                        <p>��ǰ�� 5������ 1������ �پ��� ������ ���並 Ȯ���ϰ� ������ �´� ��ǰ���� �Ǵ��ϼ���.</p>
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
                                <h2>�˾Ƶθ� ���� ������ ����</h2>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="single-features">
                                        <div class="features-img">
                                            <a href="many_knowledge.jsp"><img src="img/features/feature-1.jpg" style="height: 300px;" alt=""></a>
                                        </div>
                                        <div class="feature-text">
                                            <br>
                                            <h5>��������? 1�ϼ��뷮%? ����� ����ġ?</h5>
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
                                            <h5>���̺� ������ ���� ������ ��õ</h5>
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
                                            <h5>���� �����ϸ� ���� ������ BEST3/ �ȵǴ� ������ WORST3</h5>
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
     <script>
     function LoginCheck() {
     	
     	var checkBoxArr = [];
					
					$.ajax({
						// ������ ���۹��(get/post)
						type : "get",
						// �����͸� ������ ����������
						url : "LoginCheckCon",
						// ���䵥���� Ÿ��
						dataType : "text",
						success : function(check) {
							
							// �α��� �Ǿ����� �ʴٸ�,
							if(check == "true") {
								
								alert("�α��� �� �̿밡���մϴ�.");
								location.href='LoginJoin.jsp';
								
							} else {
								
								// �α����� �Ǿ��ִٸ�,
								$("input[name=symptom]:checked").each(function() {
									checkBoxArr.push($(this).val());
								});
								
								alert(checkBoxArr + '��(��) �����ϼ̽��ϴ�.');
								
							}
						},
						error : function() {
							alert("����!");
						}
						
					})
				}

     </script>
</body>

</html>