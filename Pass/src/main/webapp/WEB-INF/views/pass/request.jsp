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
	    <title>가전가구 수거 요청</title>
	    <link rel="preconnect" href="https://fonts.googleapis.com">
	    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<link rel="stylesheet" href="/pass/css/Navbar-Right-Links-icons.css">
	    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
	    <link rel="stylesheet" href="https://djpsoftwarecdn.azureedge.net/availabilitycss-v1/availability.min.css">
	    <link rel="stylesheet" href="/pass/css/Ludens---Create-Edit-Form.css">
	    <style>
	        *{
				font-family: 'Noto Sans KR', sans-serif;
	            font-size: 18px;
	        }
	    </style>
	</head>
	<body>
	    <nav class="navbar navbar-light navbar-expand-md py-3">
	        <div class="container"><a class="navbar-brand d-flex align-items-center" href="/pass"><span class="bs-icon-sm bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center me-2 bs-icon"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-bezier">
	                        <path fill-rule="evenodd" d="M0 10.5A1.5 1.5 0 0 1 1.5 9h1A1.5 1.5 0 0 1 4 10.5v1A1.5 1.5 0 0 1 2.5 13h-1A1.5 1.5 0 0 1 0 11.5v-1zm1.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1zm10.5.5A1.5 1.5 0 0 1 13.5 9h1a1.5 1.5 0 0 1 1.5 1.5v1a1.5 1.5 0 0 1-1.5 1.5h-1a1.5 1.5 0 0 1-1.5-1.5v-1zm1.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1zM6 4.5A1.5 1.5 0 0 1 7.5 3h1A1.5 1.5 0 0 1 10 4.5v1A1.5 1.5 0 0 1 8.5 7h-1A1.5 1.5 0 0 1 6 5.5v-1zM7.5 4a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1z"></path>
	                        <path d="M6 4.5H1.866a1 1 0 1 0 0 1h2.668A6.517 6.517 0 0 0 1.814 9H2.5c.123 0 .244.015.358.043a5.517 5.517 0 0 1 3.185-3.185A1.503 1.503 0 0 1 6 5.5v-1zm3.957 1.358A1.5 1.5 0 0 0 10 5.5v-1h4.134a1 1 0 1 1 0 1h-2.668a6.517 6.517 0 0 1 2.72 3.5H13.5c-.123 0-.243.015-.358.043a5.517 5.517 0 0 0-3.185-3.185z"></path>
	                    </svg><span class="bs-icon-sm bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center me-2 bs-icon"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-bezier">
	                            <path fill-rule="evenodd" d="M0 10.5A1.5 1.5 0 0 1 1.5 9h1A1.5 1.5 0 0 1 4 10.5v1A1.5 1.5 0 0 1 2.5 13h-1A1.5 1.5 0 0 1 0 11.5v-1zm1.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1zm10.5.5A1.5 1.5 0 0 1 13.5 9h1a1.5 1.5 0 0 1 1.5 1.5v1a1.5 1.5 0 0 1-1.5 1.5h-1a1.5 1.5 0 0 1-1.5-1.5v-1zm1.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1zM6 4.5A1.5 1.5 0 0 1 7.5 3h1A1.5 1.5 0 0 1 10 4.5v1A1.5 1.5 0 0 1 8.5 7h-1A1.5 1.5 0 0 1 6 5.5v-1zM7.5 4a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1z"></path>
	                            <path d="M6 4.5H1.866a1 1 0 1 0 0 1h2.668A6.517 6.517 0 0 0 1.814 9H2.5c.123 0 .244.015.358.043a5.517 5.517 0 0 1 3.185-3.185A1.503 1.503 0 0 1 6 5.5v-1zm3.957 1.358A1.5 1.5 0 0 0 10 5.5v-1h4.134a1 1 0 1 1 0 1h-2.668a6.517 6.517 0 0 1 2.72 3.5H13.5c-.123 0-.243.015-.358.043a5.517 5.517 0 0 0-3.185-3.185z"></path>
	                        </svg></span></span><span>PASS</span></a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-2"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
	            <div class="collapse navbar-collapse" id="navcol-2">
	                <ul class="navbar-nav ms-auto">
	                    <li class="nav-item"><a class="nav-link active" href="#"><span style="color: rgb(32, 33, 36); background-color: rgb(248, 249, 250);">개발자 소개</span></a></li>
	                    <li class="nav-item"><a class="nav-link" href="/pass/pass/request"><span style="color: rgb(32, 33, 36); background-color: rgb(248, 249, 250);">가전가구 수거 신청</span></a></li>
	                    <li class="nav-item"><a class="nav-link" href="/pass/service/board"><span style="color: rgb(32, 33, 36);">고객센터</span></a></li>
	                    <li class="nav-item"><a class="nav-link" href="/pass/member/mypage"><span style="color: rgb(32, 33, 36);">마이페이지</span></a></li>
	                </ul><c:choose><c:when test="${signin == null}"><a class="btn ms-md-2" role="button" href="/pass/member/login">Login</a></c:when><c:otherwise><a class="btn btn-primary ms-md-2" role="button" href="/pass/member/login">Logout</a></c:otherwise></c:choose>
	            </div>
	        </div>
	    </nav>
		    <section class="container-fluid">
		        <div class="d-sm-flex justify-content-between align-items-center mb-4">
		            <h3 class="text-dark mb-0">가전가구 수거 신청</h3>
		        </div>
<!-- 		        <form action="#" method="post" id=requestfrom> -->
		            <div class="card shadow mb-3">
		                <div class="card-header py-3">
		                    <p class="text-primary m-0 fw-bold">정기 수거는 아직 서비스 되지 않습니다.</p>
		                </div>
		                <div class="card-body">
		                    <div class="row">
		                        <div class="col-sm-12 col-md-8 col-lg-8">
		                            <div class="mb-3"><label class="form-label" for="service_name"><strong>Address(계정에 등록된 장소 이외의 장소 신청 시 입력) *</strong></label><input class="form-control" type="text" id="address" name="address" placeholder="Name service" value="${signin.address} ${signin.building}" name="service_name" required></div>
		                        </div>
		                    </div>
		                    <div class="mb-3"><label class="form-label" id="request-btn" for="client_description"><strong>가전가구 수거 목록 (클릭시 검색)*</strong><br></label>
		                    <table class="table table-striped" id="service_description" name="passlist">
		                    	<thead>
									<tr>
										<th scope="col">물품명</th>
										<th scope="col">가격</th>
										<th scope="col">물품수</th>
										<th scope="col">삭제</th>
									</tr>
								</thead>
								<tbody id="request-tbody">
								
								</tbody>
		                    </table>
		                    </div>
		                    <div class="mb-3"><label class="form-label" for="service_client_payment_validated"><strong>사전 결제 여부 *</strong></label>
		                        <div class="form-group mb-3">
		                            <div class="form-check"><input class="form-check-input" type="radio" id="service_client_payment_validated-1" value="T" name="payment_check" required="" checked><label class="form-check-label" for="service_client_payment_validated-1">Yes</label></div>
		                            <div class="form-check"><input class="form-check-input" type="radio" id="service_client_payment_validated-2" value="F" name="payment_check" required=""><label class="form-check-label" for="service_client_payment_validated-2">No</label></div>
		                        </div>
		                    </div>
		                    <div class="row mb-2">
		                        <div class="col">
		                            <div class="mb-3"><label class="form-label" for="service_client_start_date"><strong>수거신청 요청일 *</strong></label><input class="form-control" id="request_date" type="date" name="request_date" required=""></div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		            <div class="text-end mb-3"><input class="btn btn-primary btn-lg" id="submit-btn" type="submit" value="신청"><a class="btn btn-danger btn-lg" role="button" href="/">취소</a></div>
<!-- 		        </form> -->
		    </section>
	    <footer class="text-center">
	        <div class="container text-muted py-4 py-lg-5">
	            <ul class="list-inline">
	                <li class="list-inline-item me-4"><a class="link-secondary" href="#"><br><br><span style="color: rgb(32, 33, 36); background-color: rgb(248, 249, 250);">Site Terms of Use</span><br></a></li>
	                <li class="list-inline-item me-4"><a class="link-secondary" href="#"><br><br><span style="color: rgb(32, 33, 36); background-color: rgb(248, 249, 250);">Developer introduction</span><br></a></li>
	                <li class="list-inline-item"><a class="link-secondary" href="#">Spec</a></li>
	            </ul>
	            <ul class="list-inline">
	                <li class="list-inline-item me-4"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-facebook">
	                        <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"></path>
	                    </svg></li>
	                <li class="list-inline-item me-4"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-twitter">
	                        <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"></path>
	                    </svg></li>
	                <li class="list-inline-item"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-instagram">
	                        <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"></path>
	                    </svg></li>
	            </ul>
	            <p class="mb-0">Copyright © 2022 KH Team - Two out of Nine(Web Hosting User K.G.W)</p>
	        </div>
	    </footer>
	    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<script>
			$("#request-btn").on("click",function(){
				window.open('search?name=','window',"top=400, left=400, width=500, height=600, resizable=no, status=no, toolbar=no, menubar=no");
			});
			$(document).on("click",".btn-delete",function(){
				$($($(this).parent()).parent()).remove();
			});
			$(document).ready(function(){
				let today=new Date();
				let sysdate=new Date(today.setDate(today.getDate()+1)).toISOString().split("T")[0];
				$("#request_date").attr("min",sysdate);
			})
			$("#submit-btn").on("click",function(){
				let dates=$("#request_date").val();
				$("#request_date").prop("type","text");
				let date_str=dates+" 00:00:00";
				$("#request_date").val(date_str);
				if($("#service_description tbody tr").length>0&&($("#request_date").val()!=null&&date_str!=" 00:00:00")){
					let list=new Array();
					for(let i=0;i<$("#service_description tbody tr").length;i++){
						let res=new Map();
						res.set("ordercost_no",$("#service_description tbody").find("tr:eq("+i+")").attr("id"));
						res.set("amount",$("#service_description tbody").find("tr:eq("+i+")").find("td:eq(2)").find("input").val());
						list.push(Object.fromEntries(res));
					}
					let datas=new Map();
					datas.set("request_date",date_str)
					datas.set("payment_check",$(".form-check-input:checked").val())
					datas.set("address",$("#address").val())
					datas.set("OrderList",list)
					datas=Object.fromEntries(datas)
					$.post({
						url: "insertpass",
						data: JSON.stringify(datas),
						contentType: "application/json; charset=utf-8",
						dataType: "text",
					}).done(function(check){
						if(check=true)
							location.replace("/pass");
						else
							location.reload();
					});
				}
				else{
			        swal({
			            title : "입력 오류",
			            icon : "error",
			            text : "시간 입력 확인과 수거 물품을 하나이상 등록해주세요",
			            closeOnClickOutside : false
			        }).then(function(){
			           location.replace("request")
			           return false;
			        });
				}
			})
		</script>
	</body>
</html>