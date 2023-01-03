<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%@
taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %><%@
taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %><%@
taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>

			<!-- Favicons -->
			<link href="img/favicon.png" rel="icon">
			<link href="img/apple-touch-icon.png" rel="apple-touch-icon">
			
			<!-- Google Fonts -->
			<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
		
			<!-- Vendor CSS Files -->
			<link href="vendor/aos/aos.css" rel="stylesheet">
			<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
			<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
			<link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
			<link href="vendor/remixicon/remixicon.css" rel="stylesheet">
			<link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
		
		  <!-- Template Main CSS File -->
		  <link href="css/style.css" rel="stylesheet">
		  
		<!-- Google Fonts -->
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

		<link href="/pass/css/style.css" rel="stylesheet">
	    <meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>Header</title>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
   	    <Style>
	        *{
				font-family: 'Noto Sans KR', sans-serif;
	            font-size: 18px;
	        }
	        .nav-none-line{
	        	text-decoration-line : none;
	        }
          	.sw2{
				    height : 130px !important;
			    }
            .sw1{
				    height : 420px !important;
	    	}
	    </Style>
	</head>
<body>
<!-- ======= Header ======= -->
  <header id="header" class="header fixed-top header-scrolled">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <a href="/pass/" class="logo d-flex align-items-center">
        <img src="/pass/img/logo.png" alt="">
        <span>PASS</span>
      </a>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto" href="#hero">마이페이지</a></li>
          <li><a class="nav-link scrollto" href="#about">품목 및 비용 안내</a></li>
          <li><a class="nav-link scrollto" href="#values">수거신청</a></li>
          <li><a class="nav-link scrollto" href="#testimonials">사이트 소개</a></li>
          <li><a class="nav-link scrollto" href="#team">개발자 소개</a></li>
          <li><a class="nav-none-line" href="/pass/service/board">고객센터</a></li>

         <!--   <li><a class="nav-none-line" href="/pass/member/login">로그인</a></li> -->
        </ul><c:choose><c:when test="${signin == null}"><a class="btn ms-md-2" role="button" href="/pass/member/login">로그인</a></c:when><c:otherwise><a class="btn ms-md-2" role="button" href="/pass/member/login">로그아웃</a></c:otherwise></c:choose>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
<script>
  	$(".nav-link").on("click",function(){
  		if(window.location.pathname!="/pass/")
  			location.replace("/pass/");
  	})
</script>
</body>
</html>