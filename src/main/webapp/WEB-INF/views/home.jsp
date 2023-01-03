<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
	<head>
	    <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>PASS - Home</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

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


  <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
	    <link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	    <title>Home</title>
	    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
	    
	    <link rel="stylesheet" href="css/Articles-Cards-images.css">
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.css">
	    <link rel="stylesheet" href="css/Navbar-Right-Links-icons.css">
	    <link rel="stylesheet" href="css/Simple-Slider-Simple-Slider.css">
	    
	    <Style>
	        *{	font-family: 'Noto Sans KR', sans-serif;
	            font-size: 18px; }

			
	    </Style>
	    
	</head>
	<body>
	<!-- body started -->
	<%@include file ="../views/header.jsp" %><!-- header -->

	<main id="main"><!-- Start main -->

	<!-- ======= Hero Section ======= -->
	<section id="hero" class="hero d-flex align-items-center">

	<div class="container">
			<div class="row">
				<div class="col-lg-6 d-flex flex-column justify-content-center">
					<h1 data-aos="fade-up">PASS</h1>
					<h3 data-aos="fade-up">
						P erceptive<br>A ppliances–disposal<br>S upervise<br>S
						ervice
					</h3>
					<h4 data-aos="fade-up" data-aos-delay="400">
						<br> <strong></h>폐기물 분리배출 이제는 현금결제 없이 카드로</strong>
					</h4>
					<div data-aos="fade-up" data-aos-delay="600">
						<div class="text-center text-lg-start">
							<a href="#about"
								class="btn-get-started scrollto d-inline-flex align-items-center justify-content-center align-self-center nav-none-line">
								<span>PASS란?</span> <i class="bi bi-arrow-right"></i>
							</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6 hero-img" data-aos="zoom-out"
					data-aos-delay="200">
					<img src="img/hero-img.png" class="img-fluid" alt="">
				</div>
			</div>
		</div>

	</section>
	<!-- End Hero -->

	<!-- ======= About Section ======= -->
	<section id="about" class="about">

		<div class="container" data-aos="fade-up">
			<div class="row gx-0">

				<div class="col-lg-6 d-flex flex-column justify-content-center"
					data-aos="fade-up" data-aos-delay="200">
					<div class="content">
						<h3>품목 및 비용 안내</h3>
						<h2>300종 이상의 대형가전, 가구, 소형 폐기물들의 배출 비용과 배출 가능 여부를 알아보세요.</h2>
						<p>지금 즉시 아래의 링크를 클릭해서 너무 길어서 여기에는 다 적을수도 없는 품목별 비용 및 필수 폐기물
							여부를 확인하거나 궁금한 정보를 검색할 수 있습니다.</p>
						<div class="text-center text-lg-start">
							<a href="/pass/pass/request"
								class="btn-read-more d-inline-flex align-items-center justify-content-center align-self-center nav-none-line">
								
								<span>확인하기</span> <i class="bi bi-arrow-right"></i>
							</a>
						</div>
					</div>
				</div>

				<div class="col-lg-6 d-flex align-items-center" data-aos="zoom-out"
					data-aos-delay="200">
					<img src="img/about.jpg" class="img-fluid" alt="">
				</div>

			</div>
		</div>

	</section>
	<!-- End About Section -->

	<!-- ======= Values Section ======= -->
	<section id="values" class="values">

		<div class="container" data-aos="fade-up">

			<header class="section-header">
				<h2>PASS만의 장점</h2>
				<p>수거신청 버튼을 눌렀는데 왜 장점을 소개하는거지?</p>
			</header>

			<div class="row">

				<div class="col-lg-4" data-aos="fade-up" data-aos-delay="200">
					<div class="box">
						<img src="img/values-1.png" class="img-fluid" alt="">
						<h3>아직 serviceservice가 없어서</h3>
						<p>수거신청 페이지가 완성이 안 되어있기 때문에 허전해서 임시로 꾸며놓은 상태입니다.</p>
					</div>
				</div>

				<div class="col-lg-4 mt-4 mt-lg-0" data-aos="fade-up"
					data-aos-delay="400">
					<div class="box">
						<img src="img/values-2.png" class="img-fluid" alt="">
						<h3>그 밖에는?</h3>
						<p>품목 및 비용안내와 마이페이지,사이트소개를 눌러도 다른 페이지로 이동해야 하지만 아직 페이지 이동이
							구현되지 않았습니다.</p>
					</div>
				</div>

				<div class="col-lg-4 mt-4 mt-lg-0" data-aos="fade-up"
					data-aos-delay="600">
					<div class="box">
						<img src="img/values-3.png" class="img-fluid" alt="">
						<h3>더욱 놀라운 사실.</h3>
						<p>PASS의 장점이라고 적어놓았지만 놀랍게도 PASS의 장점에 대해 하나도 적혀있지 않습니다.</p>
					</div>
				</div>

			</div>

		</div>

	</section>
	<!-- End Values Section -->

	<!-- ======= Q&A Section ======= -->
	<section id="qna" class="qna">

		<div class="container" data-aos="fade-up">

			<header class="section-header">
				<h2>Q&A</h2>
				<p>자주 묻는 질문</p>
			</header>

			<div class="row">
				<div class="col-lg-6">
					<!-- Q&A List 1-->
					<div class="accordion accordion-flush" id="qnalist1">
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#qna-content-1">
									결제 후에 버릴 물건을 어디에 내놓으면 되나요?</button>
							</h2>
							<div id="qna-content-1" class="accordion-collapse collapse"
								data-bs-parent="#qnalist1">
								<div class="accordion-body">지역별로 가장 가까운 수거지점에 내놓으시면 2일 이내로
									처리 가능합니다</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#qna-content-2">
									길이는 가로,세로,높이 중에서 어느걸 기준으로 하나요?</button>
							</h2>
							<div id="qna-content-2" class="accordion-collapse collapse"
								data-bs-parent="#qnalist1">
								<div class="accordion-body">가장 긴 면을 기준으로 합니다</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#qna-content-3">
									미성년자가 성인용품을 버려도 되나요?</button>
							</h2>
							<div id="qna-content-3" class="accordion-collapse collapse"
								data-bs-parent="#qnalist1">
								<div class="accordion-body">아마도?</div>
							</div>
						</div>

					</div>
				</div>

				<div class="col-lg-6">

					<!-- F.A.Q List 2-->
					<div class="accordion accordion-flush" id="qnalist2">

						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#qna2-content-1">
									체크카드도 되나요?</button>
							</h2>
							<div id="qna2-content-1" class="accordion-collapse collapse"
								data-bs-parent="#faqlist2">
								<div class="accordion-body">넹</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#qna2-content-2">
									외국인도 이용 가능한가요?
							</h2>
							<div id="qna2-content-2" class="accordion-collapse collapse"
								data-bs-parent="#qnalist2">
								<div class="accordion-body">yeah</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#qna2-content-3">
									외상도 되나요?</button>
							</h2>
							<div id="qna2-content-3" class="accordion-collapse collapse"
								data-bs-parent="#qnalist2">
								<div class="accordion-body">ㄴㄴ</div>
							</div>
						</div>

					</div>
				</div>

			</div>

		</div>

	</section>
	<!-- End Q&A Section -->

	<!-- ======= Testimonials Section ======= -->
	<section id="testimonials" class="testimonials">

		<div class="container" data-aos="fade-up">

			<header class="section-header">
				<h2>이용후기</h2>
				<p>PASS 사용자 분들의 생생한 후기</p>
			</header>

			<div class="testimonials-slider swiper" data-aos="fade-up"
				data-aos-delay="200">
				<div class="swiper-wrapper sw1">

					<div class="swiper-slide">
						<div class="testimonial-item">
							<div class="stars">
								<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
									class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
									class="bi bi-star-fill"></i>
							</div>
							<p>사장님께서 커다란 돌 침대를 혼자서 옮기라고 해서 힘들게 옮기다가 허리가 나갔습니다. 퇴직금 대신 고객이
								버린 장수돌침대를 받았는데 굉장히 편하고 좋았어요.</p>
							<div class="profile mt-auto">
								<img src="img/testimonials/testimonials-1.jpg"
									class="testimonial-img" alt="">
								<h3>곽두철</h3>
								<h4>온라인 가전가구 분리배출 회사 직원</h4>
							</div>
						</div>
					</div>
					<!-- End testimonial item -->

					<div class="swiper-slide">
						<div class="testimonial-item">
							<div class="stars">
								<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
									class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
									class="bi bi-star-fill"></i>
							</div>
							<p>사이트 소개라고 해서 들어왔는데 이용후기더라구요, 완전 사기당한거죠. 너무 편리하고 좋았습니다.다음에도
								꼭 이용하고싶네요.</p>
							<div class="profile mt-auto">
								<img src="img/testimonials/testimonials-2.jpg"
									class="testimonial-img" alt="">
								<h3>사라 윌슨</h3>
								<h4>디자이너</h4>
							</div>
						</div>
					</div>
					<!-- End testimonial item -->

					<div class="swiper-slide">
						<div class="testimonial-item">
							<div class="stars">
								<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
									class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
									class="bi bi-star-fill"></i>
							</div>
							<p>저는 다른 사이트의 리뷰를 작성하지 않습니다.만약 제 이름이 사용된 리뷰가 있다면 아마 사칭이거나 해킹된
								계정일겁니다.</p>
							<div class="profile mt-auto">
								<img src="img/testimonials/testimonials-3.jpg"
									class="testimonial-img" alt="">
								<h3>레이첼 노바</h3>
								<h4>경영컨설턴트</h4>
							</div>
						</div>
					</div>
					<!-- End testimonial item -->

					<div class="swiper-slide">
						<div class="testimonial-item">
							<div class="stars">
								<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
									class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
									class="bi bi-star-fill"></i>
							</div>
							<p>별 5개 리뷰만 적어주면 돈을 준다니 대단히 혁신적이네요, 이런 서비스를 이용할 수 있어서 정말
								다행입니다 언젠가 여러분들도 이런 경험을 꼭 한번 해보시길 바랍니다.</p>
							<div class="profile mt-auto">
								<img src="img/testimonials/testimonials-4.jpg"
									class="testimonial-img" alt="">
								<h3>매튜 브랜든</h3>
								<h4>무직</h4>
							</div>
						</div>
					</div>
					<!-- End testimonial item -->

					<div class="swiper-slide">
						<div class="testimonial-item">
							<div class="stars">
								<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
									class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
									class="bi bi-star-fill"></i>
							</div>
							<p>이번달에 버려진 장수돌침대입니다. 직원분들이 기스가 나지 않게 신경써서 옮겨주시고 사장님도 친절하세요.
							</p>
							<div class="profile mt-auto">
								<img src="img/testimonials/testimonials-5.jpg"
									class="testimonial-img" alt="">
								<h3>장수돌침대</h3>
								<h4>침대</h4>
							</div>
						</div>
					</div>
					<!-- End testimonial item -->

				</div>
				<div class="swiper-pagination"></div>
			</div>

		</div>

	</section>
	<!-- End Testimonials Section -->

	<!-- ======= Team Section ======= -->
	<section id="team" class="team">

		<div class="container" data-aos="fade-up">

			<header class="section-header">
				<h2>개발자 소개</h2>
				<p>9회말 2아웃 팀 프로젝트 팀원 소개</p>
			</header>

			<div class="row gy-4">

				<div class="col-lg-3 col-md-6 d-flex align-items-stretch"
					data-aos="fade-up" data-aos-delay="100">
					<div class="member">
						<div class="member-img">
							<img src="img/team/team-1.png" class="img-fluid" alt="">
							<div class="social">
								<a href="https://twitter.com/i/flow/login"><i
									class="bi bi-twitter"></i></a><a
									href="https://m.facebook.com/login/?locale=ko_KR"><i
									class="bi bi-facebook"></i></a><a href="https://www.instagram.com/"><i
									class="bi bi-instagram"></i></a><a href="https://kr.linkedin.com/"><i
									class="bi bi-linkedin"></i></a>
							</div>
						</div>
						<div class="member-info">
							<h4>서상원</h4>
							<span>Project Manager</span>
							<p>Velit aut quia fugit et et. Dolorum ea voluptate vel
								tempore tenetur ipsa quae aut. Ipsum exercitationem iure minima
								enim corporis et voluptate.</p>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 d-flex align-items-stretch"
					data-aos="fade-up" data-aos-delay="200">
					<div class="member">
						<div class="member-img">
							<img src="img/team/team-2.png" class="img-fluid" alt="">
							<div class="social">
								<a href="https://twitter.com/i/flow/login"><i
									class="bi bi-twitter"></i></a><a
									href="https://m.facebook.com/login/?locale=ko_KR"><i
									class="bi bi-facebook"></i></a><a href="https://www.instagram.com/"><i
									class="bi bi-instagram"></i></a><a href="https://kr.linkedin.com/"><i
									class="bi bi-linkedin"></i></a>
							</div>
						</div>
						<div class="member-info">
							<h4>고동현</h4>
							<span>Project Assistant</span>
							<p>Quo esse repellendus quia id. Est eum et accusantium
								pariatur fugit nihil minima suscipit corporis. Voluptate sed
								quas reiciendis animi neque sapiente.</p>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 d-flex align-items-stretch"
					data-aos="fade-up" data-aos-delay="300">
					<div class="member">
						<div class="member-img">
							<img src="img/team/team-3.png" class="img-fluid" alt="">
							<div class="social">
								<a href="https://twitter.com/i/flow/login"><i
									class="bi bi-twitter"></i></a><a
									href="https://m.facebook.com/login/?locale=ko_KR"><i
									class="bi bi-facebook"></i></a><a href="https://www.instagram.com/"><i
									class="bi bi-instagram"></i></a><a href="https://kr.linkedin.com/"><i
									class="bi bi-linkedin"></i></a>
							</div>
						</div>
						<div class="member-info">
							<h4>김건우</h4>
							<span>Project Leader</span>
							<p>Vero omnis enim consequatur. Voluptas consectetur unde qui
								molestiae deserunt. Voluptates enim aut architecto porro
								aspernatur molestiae modi.</p>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 d-flex align-items-stretch"
					data-aos="fade-up" data-aos-delay="400">
					<div class="member">
						<div class="member-img">
							<img src="img/team/team-4.png" class="img-fluid" alt="">
							<div class="social">
								<a href="https://twitter.com/i/flow/login"><i
									class="bi bi-twitter"></i></a><a
									href="https://m.facebook.com/login/?locale=ko_KR"><i
									class="bi bi-facebook"></i></a><a href="https://www.instagram.com/"><i
									class="bi bi-instagram"></i></a><a href="https://kr.linkedin.com/"><i
									class="bi bi-linkedin"></i></a>
							</div>
						</div>
						<div class="member-info">
							<h4>이정우</h4>
							<span>Project Assistant</span>
							<p>Rerum voluptate non adipisci animi distinctio et deserunt
								amet voluptas. Quia aut aliquid doloremque ut possimus ipsum
								officia.</p>
						</div>
					</div>
				</div>

			</div>

		</div>

	</section>
	<!-- End Team Section -->

	<!-- ======= Clients Section ======= -->
	<section id="clients" class="clients">

		<div class="container" data-aos="fade-up">

			<header class="section-header">
				<h2>기술스택</h2>
				<p>웹사이트 제작에 사용된 기술스택과 툴</p>
			</header>

			<div class="clients-slider swiper">
				<div class="swiper-wrapper sw2 align-items-center">
					<div class="swiper-slide">
						<img src="img/clients/clients-1.png" class="img-fluid"
							alt="">
					</div>
					<div class="swiper-slide">
						<img src="img/clients/clients-2.png" class="img-fluid"
							alt="">
					</div>
					<div class="swiper-slide">
						<img src="img/clients/clients-3.png" class="img-fluid"
							alt="">
					</div>
					<div class="swiper-slide">
						<img src="img/clients/clients-4.png" class="img-fluid"
							alt="">
					</div>
					<div class="swiper-slide">
						<img src="img/clients/clients-5.png" class="img-fluid"
							alt="">
					</div>
					<div class="swiper-slide">
						<img src="img/clients/clients-6.png" class="img-fluid"
							alt="">
					</div>
				</div>
				<div class="swiper-pagination"></div>
			</div>
		</div>

	</section>
	<!-- End clients Section -->

	</main>

	<!-- End #main -->

	<!-- body finished -->
	
	<%@include file ="../views/footer.jsp" %><!-- footer -->
	</body>

	<!-- Vendor JS Files -->
	<script src="vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="vendor/aos/aos.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="vendor/glightbox/js/glightbox.min.js"></script>
	<script src="vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="vendor/swiper/swiper-bundle.min.js"></script>
	<script src="vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="js/main.js"></script>

	<!-- original JS File-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.js"></script>
	<script src="js/Simple-Slider.js"></script>

</html>