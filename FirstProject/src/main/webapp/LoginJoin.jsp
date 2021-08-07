<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="zxx">
<title>�α���/ȸ������</title>
<body>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="TopGym Template">
    <meta name="keywords" content="TopGym, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Contact | Template</title>

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
                                <li><a href="./index.html">Home</a></li>
                                <li><a href="./about-us.html">About us</a></li>
                                <li><a href="./classes.html">Classes</a></li>
                                <li><a href="./elements.html">Instructors</a></li>
                                <li><a href="./blog.html">News</a></li>
                                <li><a href="./contact.html">Contact</a></li>
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
                    <h2>Search</h2>
                    <form action="#">
                        <input type="search" placeholder="Type Keywords">
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
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb-content">
                        <h2>�α��� / ȸ������</h2>
                        <!-- <div class="links">
                            <a href="./index.html">Ȩ</a>
                            <a href="./contact.html" class="rt-breadcrumb">ȸ������</a>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    <!-- Contact Section Begin -->
    <section class="contact-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="contact-info">
                        <div class="contact-details">
                            <h2>�α���</h2>
                        </div>
                        <div class="contact-form">
                            <form action="LoginCon">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <h5 class="logf">���̵�</h5>
                                        <input type="text" placeholder="���̵� �Է��ϼ���." name="id">
                                    </div>
                                    <div class="col-lg-6">
                                        <h5 class="logf">��й�ȣ</h5>
                                        <input type="password" placeholder="��й�ȣ�� �Է��ϼ���." name="pw">
                                    </div>
                                    <div class="col-lg-12">
                                        <button type="submit" class="site-btn">�α���</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <hr>
                    <div class="contact-info">
                        <div class="contact-details">
                            <h2>ȸ������</h2>
                        </div>
                        <div class="contact-form">
                            <form action="JoinCon">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <h5 class="logf">���̵�</h5>
                                        <input type="text" placeholder="���̵� �Է��ϼ���." name="id">
                                    </div>
                                    <div class="col-lg-6">
                                        <h5 class="logf">��й�ȣ</h5>
                                        <input type="password" id="pw" placeholder="��й�ȣ�� �Է��ϼ���." name="pw" onchange ="isSame()">
                                    </div>
                                    <div class="col-lg-6">
                                        <h5 class="logf">��й�ȣ Ȯ��</h5>
                                        <input type="password" id="pwcheck" placeholder="��й�ȣ�� �Է��ϼ���." name="pwcheck" onchange="isSame()">
                                        <span id="pwMsg"></span>
                                    </div>
                                    <div class="col-lg-6">
                                        <h5 class="logf">����</h5>
                                        <select class="sel" name="gender">
                                            <option>��</option>
                                            <option>��</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-6">
                                        <h5 class="logf">�������</h5>
                                        <input type="date" name="birth">
                                    </div>

                                    <div class="col-lg-12">
                                        <button type="submit" id="joinSubmit" class="site-btn">ȸ������</button>
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
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer-content">
                        <div class="footer-logo">
                            <a href="#"><img src="img/logo.png" alt=""></a>
                        </div>
                        <div class="footer-menu">
                            <ul>
                                <li><a href="./home.html">Home</a></li>
                                <li><a href="#">About us</a></li>
                                <li><a href="#">Classes</a></li>
                                <li><a href="#">Instructors</a></li>
                                <li><a href="#">News</a></li>
                                <li><a href="#">Contact</a></li>
                            </ul>
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
					$('#pwMsg').html('��й�ȣ ��ġ���� ����');
					$('#pwMsg').attr('color', '#FF0000');
				} else {
					$('#pwMsg').html('��й�ȣ ��ġ��');
					$('#pwMsg').attr('color', '#0000FF');
				}
				
			});
			
		});
    
    	
	</script>
    
</body>

</html>
</body>
</html>