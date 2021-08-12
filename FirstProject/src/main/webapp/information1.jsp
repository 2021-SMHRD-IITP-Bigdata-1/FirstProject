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
    <title>Classes | Template</title>

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
        label {
            cursor: pointer;
        }
        label>input{
            display: none;
        }
        label>h4{
            display: inline-block;
        }

    </style>
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
                                <li><a href="./information1.html">ȿ��/������ ����</a></li>
                                <li><a href="./information1.html">���к� ����</a></li>
                                <li><a></a></li>
                                <li><a href="./elements.html">��ǰ ��</a></li>
                                <li><a href="./login.html">�α���/ȸ������</a></li>
                                <li class="search-btn search-trigger"><i class="fa fa-search"></i></li>
                                <li class="search-btn2 search-trigger"><i class="fa fa-heart"></i></li>
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
    <section class="breadcrumb-area set-bg" data-setbg="img/classes/classes-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-content">
                        <h2  class="information-text">ȿ��/������ ����</h2>
                        <div class="information-text1">
                            <a>ȿ��,������ �ʿ��� ������ �����ϼ���.</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Fitness Plan Begin -->
    <section class="fitness-section inside-bg">
        <form action="SymptomCheckCon">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-6">
                        <div class="single-fitness-feature">
                            <div class="fitness-number0">
                                <label for="brain" onclick="check(1)">
                                    <span id="sp1">01</span>
                                    <img src="./img/icon/Eye.png" id="img1" style="height: 66px; width: 66px; background-color: blue; border-radius: 50%;" >
                                    <input type="checkbox" id="brain" name="symptom" value="����"> <h4>����</h4>
                                </label>
                            </div>
                        </div>
                        <div class="single-fitness-feature">
                            <div class="fitness-number">
                                <label for="liver" onclick="check(3)">
                                    <span id="sp3">03</span>
                                    <input type="checkbox" id="liver" name="symptom" value="��"> <h4>��</h4>
                                </label>
                            </div>
                        </div>
                        <div class="single-fitness-feature">
                            <div class="fitness-number">
                                <label for="bloodcycle" onclick="check(5)">
                                    <span id="sp5">05</span>
                                    <input type="checkbox" id="bloodcycle" name="symptom" value="���ళ��"> <h4>���ళ��</h4>
                                </label>
                            </div>
                        </div>
                        <div class="single-fitness-feature">
                            <div class="fitness-number">
                                <label for="joint" onclick="check(7)">
                                    <span id="sp7">07</span>
                                    <input type="checkbox" id="joint" name="symptom" value="����"> <h4>����</h4>
                                </label>
                            </div>
                        </div>
                        <div class="single-fitness-feature">
                            <div class="fitness-number0">
                                <label for="cholesterol" onclick="check(9)">
                                    <span id="sp9">09</span>
                                    <input type="checkbox" id="cholesterol" name="symptom" value="�ݷ����׷�"> <h4>�ݷ����׷�</h4>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-6 offset-lg-2 text-md-right text-left">
                        <div class="single-fitness-feature">
                            <div class="fitness-number left-number0">
                                <label for="eye" onclick="check(2)">
                                    <span id="sp2">02</span>
                                        <input type="checkbox" id="eye" name="symptom" value="��"> <h4>��</h4>
                                </label>
                            </div>
                        </div>
                        <div class="single-fitness-feature">
                            <div class="fitness-number left-number">
                                <label for="skin" onclick="check(4)">
                                    <input type="checkbox" id="skin" name="symptom" value="�Ǻ�"> <h4>�Ǻ�</h4>
                                    <span id="sp4">04</span>
                                </label>
                            </div>
                        </div>
                        <div class="single-fitness-feature">
                            <div class="fitness-number left-number">
                                <label for="instestine" onclick="check(6)">
                                    <input type="checkbox" id="instestine" name="symptom" value="��"> <h4>��</h4>
                                    <span id="sp6">06</span>
                                </label>
                            </div>
                        </div>
                        <div class="single-fitness-feature">
                            <div class="fitness-number left-number">
                                <label for="bone" onclick="check(8)">
                                    <input type="checkbox" id="bone" name="symptom" value="��"> <h4>��</h4>
                                    <span id="sp8">08</span>
                                </label>
                            </div>
                        </div>
                        
                        <div class="single-fitness-feature">
                            <div class="fitness-number1">
                                <label for="antioxidant" onclick="check(10)">
                                    <input type="checkbox" id="antioxidant" name="symptom" value="�׻�ȭ"> <h4>�׻�ȭ</h4>
                                    <span id="sp10">10</span>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-fitness-feature">
                <div class="left-number1">
                    <label for="diet" onclick="check(11)">
                        <span id="sp11">11</span>
                        <input type="checkbox" id="diet" name="symptom" class="check" value="ü���氨��"> <h4>ü���氨��</h4>
                    </label>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="classes-callto-text">
                            <br>
                            <button type="submit" class="primary-btn" onclick="LoginCheck()">next</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>

    </section>
    <!-- Fitness Plan End -->
    
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
                                <li><a href="#">ȿ��/������ ����</a></li>
                                <li><a href="#">���к� ����</a></li>
                                <li><a href="#">��ǰ��</a></li>
                                <li><a href="./login.html">�α���/ȸ������</a></li>
                            </ul>
                        </div>
                        <div class="subscribe-form">
                            <form action="#">
                                <input type="text" placeholder="������ ������ �Է��ϼ���.">
                                <button type="submit">Search</button>
                            </form>
                        </div>
                        <div class="footer-icon-img">
                            <img src="img/footer-icon.png" alt="">
                        </div>
                        <div class="copyright">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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
        
        // �����ϸ� ���������� ����
        function check(num) {

            if(num == 1) {
                var part = document.getElementById('brain');
                var sp = document.getElementById('sp1');
            } else if(num == 2) {
                var part = document.getElementById('eye');
                var sp = document.getElementById('sp2');
            } else if(num == 3) {
                var part = document.getElementById('liver');
                var sp = document.getElementById('sp3');
            } else if(num == 4) {
                var part = document.getElementById('skin');
                var sp = document.getElementById('sp4');
            } else if(num == 5) {
                var part = document.getElementById('bloodcycle');
                var sp = document.getElementById('sp5');
            } else if(num == 6) {
                var part = document.getElementById('instestine');
                var sp = document.getElementById('sp6');
            } else if(num == 7) {
                var part = document.getElementById('joint');
                var sp = document.getElementById('sp7');
            } else if(num == 8) {
                var part = document.getElementById('bone');
                var sp = document.getElementById('sp8');
            } else if(num == 9) {
                var part = document.getElementById('cholesterol');
                var sp = document.getElementById('sp9');
            } else if(num == 10) {
                var part = document.getElementById('antioxidant');
                var sp = document.getElementById('sp10');
            } else if(num == 11) {
                var part = document.getElementById('diet');
                var sp = document.getElementById('sp11');
            } 

            if($(part).prop("checked")) {
                sp.style.backgroundColor = "red";
                
            } else {
                sp.style.backgroundColor = "blue";
            }
        }

        // �ִ� 3������ ���� ����
        $("input[type='checkbox']").on("click", function() {
            let count = $("input:checked[type='checkbox']").length;

            if(count > 3) {
                $(this).prop('checked', false);
                alert('3�������� ������ �� �ֽ��ϴ�.')
            }
        })
        
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
								
								alert(checkBoxArr + '�� �����ϼ̽��ϴ�.');
								
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