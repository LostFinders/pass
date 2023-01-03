<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		
	    <meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
	    <title>로그인</title>
	    
	    <link href="/pass/img/favicon.png" rel="icon">
		<link href="/pass/img/apple-touch-icon.png" rel="apple-touch-icon">
		
	    <link rel="preconnect" href="https://fonts.googleapis.com">
	    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<link rel="stylesheet" href="/pass/css/Login-Form-Basic-icons.css">
		<link rel="stylesheet" href="/pass/css/Navbar-Right-Links-icons.css">
	    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
	    <style>
	        *{
				font-family: 'Noto Sans KR', sans-serif;
	            font-size: 18px;
	        }
	    </style>
	</head>
	<body>
	   <%@include file ="/WEB-INF/views/header.jsp" %>
	   
	   <!-- ======= Breadcrumbs ======= -->
	   <section class="breadcrumbs">
		<div class="container">
  
		  <ol>
			<li><a href="home.jsp">Home</a></li><!-- 로그인 체크 폼으로 -->
			<li>Login</li>
		  </ol>
		  <h1>Login</h1>
		</div>
	  </section><!-- End Breadcrumbs -->
	  
	    <section class="position-relative py-4 py-xl-5">
	        <div class="container">
	            <div class="row mb-5">
	                <div class="col-md-8 col-xl-6 text-center mx-auto">
	                    <h2>Log in</h2>
	                </div>
	            </div>
	            <div class="row d-flex justify-content-center">
	                <div class="col-md-6 col-xl-4">
	                    <div class="card mb-5">
	                        <div class="card-body d-flex flex-column align-items-center">
	                            <div class="bs-icon-xl bs-icon-circle bs-icon-primary bs-icon my-4"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-person">
	                                    <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"></path>
	                                </svg></div>
	                            <form class="text-center" method="post" action="login_check" name="member">
	                                <div class="mb-3"><input class="form-control form-control form-control form-control" type="text" name="id" placeholder="id"></div>
	                                <div class="mb-3"><input class="form-control" type="password" name="pass" placeholder="Password"></div>
	                                <div class="mb-3"><button class="btn btn-primary d-block w-100" type="submit">Login</button></div>
	                                <p class="text-muted">회원이 아니십니까?</p><a href="signup">회원가입</a>
	                            </form>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </section>
	<%@include file ="/WEB-INF/views/footer.jsp" %><!-- footer -->
	</body>
</html>