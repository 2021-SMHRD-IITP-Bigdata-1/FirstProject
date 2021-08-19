<%@page import="VO.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="VO.ProductVO"%>
<%@page import="DAO.MemberDAO"%>
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
    <title>���ã�� ������</title>

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
    table{
    border-collapse: separate;
    text-indent: initial;
    border-spacing: 2px;
    }
    .table td, .table th {
    padding: .75rem;
    vertical-align: middle !important;
    border-top: 1px solid #dee2e6;
}
    .img-fluid{
        height: 128px;
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
          .pdtImg{ 
            width: auto;
            height: 150px;
            padding: auto;
            box-sizing: border-box;
            object-fit: contain;
            }    
    </style>
</head>

<body>
	<%
		MemberVO vo = (MemberVO)session.getAttribute("vo_session");
	%>
   
    <!-- Page Preloder -->
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
    <section class="breadcrumb-area set-bg" data-setbg="img/contact/contact-bg.jpg">
        <div class="container">
            <div class="row2">
                <div class="col-lg-12">
                    <div class="breadcrumb-content">
                        <h2  class="information-text">���ã��</h2>
                        <div class="information-text1">
                            <a>ȸ������ ������ ���ã�� ��ǰ�� ���Ǽ� �ֽ��ϴ�.</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    <!-- Contact Section Begin -->
            <div class="row2">
                    <div class="contact-info">
                        <div class="contact-details">
                            <h2>���ã���� ��ǰ</h2>
                        </div>    
    <div class="site-wrap">
        <div class="site-section">
          <div class="container">
            <div class="row mb-5">
              <form class="col-md-12" method="post">
                <div class="site-blocks-table">
                  <table class="table table-bordered" style="text-align: center;">
                    <thead>
                      <tr>
                        <th class="product-thumbnail" style="width:140px;">��ǰ�̹���</th>
                        <th class="product-name" style="width:180px;">��ǰ��</th>
                        <th class="product-brand" style="width:150px;">�귣��</th>
                        <th class="product-maker" style="width:90px;">������</th>
                        <th class="product-shape" style="width:120px;">����</th>
                        <th class="product-number" style="width:130px;">����Ƚ��, ��</th>
                        <th class="product-total" style="width:100px;">�ѷ�</th>
                        <th class="product-as" style="width:160px;">Ư¡</th>
                        <th class="product-review" style="width:100px;">����</th>
                        <th class="product-remove" style="width:110px;">���ã�� ����</th>
                      </tr>
                      
                                       
                    <%
                    MemberDAO dao = new MemberDAO();
                    ArrayList<ProductVO> arr = dao.selectAll(); 
                    %>
                    
						<!-- pdtCode = 1�� ��ǰ -->
						<%
						out.println("<tr>");
						out.println("<td>");
						%>
						<img class="pdtImg" src=<%=arr.get(0).getPdtImg()%>>
						<%
						out.println("</td>");
						out.println("<td>"+arr.get(0).getPdtName()+"</td>");
						out.println("<td>"+arr.get(0).getPdtBrand()+"</td>");
						out.println("<td>"+arr.get(0).getPdtCountry()+"</td>");
						out.println("<td>"+arr.get(0).getPdtType()+"</td>");
						out.println("<td>"+arr.get(0).getPdtDailyIntake()+"/<br>"+arr.get(0).getPdtOneIntake()+"</td>");
						out.println("<td>"+arr.get(0).getPdtJung()+"</td>");
						if(arr.get(0).getPdtFree() == null) {
							out.println("<td> </td>");
						} else {
							out.println("<td>"+arr.get(0).getPdtFree()+"</td>");
						}
				
						%>
						
						<td>
						    <input type="button1" class="btn btn-primary height-auto btn-sm" value="���� ��������" onclick="goReview(0)" style="width: 120px;"> 
						</td>
				
					    <td><input type="button" class="btn btn-primary height-auto btn-sm" value="X"> </td>
						
						 
						<%
						out.println("</td>");
						%>
						
						
						<!-- pdtCode = 4�� ��ǰ -->
						<%
						out.println("<tr>");
						out.println("<td>");
						%>
						<img class="pdtImg" src=<%=arr.get(3).getPdtImg()%>>
						<%
						out.println("</td>");
						out.println("<td>"+arr.get(3).getPdtName()+"</td>");
						out.println("<td>"+arr.get(3).getPdtBrand()+"</td>");
						out.println("<td>"+arr.get(3).getPdtCountry()+"</td>");
						out.println("<td>"+arr.get(3).getPdtType()+"</td>");
						out.println("<td>"+arr.get(3).getPdtDailyIntake()+"/<br>"+arr.get(3).getPdtOneIntake()+"</td>");
						out.println("<td>"+arr.get(3).getPdtJung()+"</td>");
						if(arr.get(3).getPdtFree() == null) {
							out.println("<td> </td>");
						} else {
							out.println("<td>"+arr.get(3).getPdtFree()+"</td>");
						}
				
						%>
						
						<td>
						    <input type="button1" class="btn btn-primary height-auto btn-sm" value="���� ��������" onclick="goReview(0)" style="width: 120px;"> 
						</td>
				
					    <td><input type="button" class="btn btn-primary height-auto btn-sm" value="X" onclick="alertDel()"> </td>
						
						 
						<%
						out.println("</td>");
						%>
                    
                    	
                    	<!-- pdtCode = 142�� ��ǰ -->
						<%
						out.println("<tr>");
						out.println("<td>");
						%>
						<img class="pdtImg" src=<%=arr.get(141).getPdtImg()%>>
						<%
						out.println("</td>");
						out.println("<td>"+arr.get(141).getPdtName()+"</td>");
						out.println("<td>"+arr.get(141).getPdtBrand()+"</td>");
						out.println("<td>"+arr.get(141).getPdtCountry()+"</td>");
						out.println("<td>"+arr.get(141).getPdtType()+"</td>");
						out.println("<td>"+arr.get(141).getPdtDailyIntake()+"/<br>"+arr.get(141).getPdtOneIntake()+"</td>");
						out.println("<td>"+arr.get(141).getPdtJung()+"</td>");
						if(arr.get(141).getPdtFree() == null) {
							out.println("<td> </td>");
						} else {
							out.println("<td>"+arr.get(141).getPdtFree()+"</td>");
						}
				
						%>
						
						<td>
						    <input type="button1" class="btn btn-primary height-auto btn-sm" value="���� ��������" onclick="goReview(0)" style="width: 120px;"> 
						</td>
				
					    <td><input type="button" class="btn btn-primary height-auto btn-sm" value="X" onclick="alertDel()"> </td>
						
						 
						<%
						out.println("</td>");
						%>
                    
                    </thead>
                    <tbody>
                      <tr>
                       
        
                    </tbody>
                  </table>
                </div>
              </form>
            </div>
        
                  </div>
                </div>
              </div>
            </div>
          </div>

    
    
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
								
								
							}
						},
						error : function() {
							alert("����!");
						}
						
					})
				}
     
     function alertDel() {
    	 
    	 alert('��ǰ�� ��Ͽ��� �����Ͽ����ϴ�.');
     }
     </script>
     
         <script type="text/javascript"> 
    		$('input[type="button"]').click(function(e){
    	   		$(this).closest('tr').remove()
    		})
    	
    	
    	    function goReview(i) {
    		if(i == 0) {
    			location.href = 'review.jsp';
    		}
    	}
    </script>
</body>

</html>