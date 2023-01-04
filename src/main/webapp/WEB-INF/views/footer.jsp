<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%@
taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %><%@
taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %><%@
taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
	<head>
	    <meta charset="utf-8">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Footer</title>
</head>
<body>
<!-- ======= Footer ======= -->

  <footer id="footer" class="footer">

    <div class="footer-top nav-none-line">
      <div class="container nav-none-line">
        <div class="row gy-4">
          <div class="col-lg-5 col-md-12 footer-info">
            <a href="/pass/" class="logo d-flex align-items-center nav-none-line">
              <img src="/pass/img/logo.png" alt="">
              <span>PASS</span>
            </a>
            <p>신용카드 온라인 결제 API를 통한 더 빠르고 간편한 가전가구 분리배출.</p>
            <div class="social-links mt-3">
              <a href="https://twitter.com/i/flow/login" class="twitter"><i class="bi bi-twitter"></i></a>
              <a href="https://m.facebook.com/login/?locale=ko_KR" class="facebook"><i class="bi bi-facebook"></i></a>
              <a href="https://www.instagram.com/" class="instagram"><i class="bi bi-instagram"></i></a>
              <a href="https://kr.linkedin.com/" class="linkedin"><i class="bi bi-linkedin"></i></a>
            </div>
          </div>

          <div class="col-lg-2 col-6 footer-links">
            <h4>Developers</h4>
            <ul>
              <li><a class="bi bi-chevron-right footer-link" href="#team">Introduce</a></li>
              <li><a class="bi bi-chevron-right footer-link" href="https://github.com/" title=>Git and Mail Address</a></li>
            </ul>
          </div>

          <div class="col-lg-2 col-6 footer-links">
            <h4>About Our Site</h4>
            <ul>
				<li><a class="bi bi-chevron-right footer-link" href="#qna">Questions</a></li>
				<li><a class="bi bi-chevron-right footer-link" href="#clients">clients</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-12 footer-contact text-center text-md-start">
            <h4>Contact Us</h4>
            <p>
              <strong>Phone:</strong> 010-0000-0000<br>
              <strong>Email:</strong> info@example.com<br>
            </p>

          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        <p class="mb-0"><strong>Copyright</strong> © 2022 KH Team - Two out of Nine(Web Hosting User K.G.W)</p>
      </div>

    </div>
    
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center active"><i class="bi bi-arrow-up-short"></i></a>
	<i class="bi bi-arrow-up-short"></i>
  </footer><!-- End Footer -->
  <script>
  	$(".footer-link").on("click",function(){
  		if(window.location.pathname!="/pass/")
  			location.replace("/pass/");
  	})
</script>
</body>
</html>