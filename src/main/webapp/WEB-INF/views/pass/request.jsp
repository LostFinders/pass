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
	    <link href="img/favicon.png" rel="icon">
  		<link href="img/apple-touch-icon.png" rel="apple-touch-icon">
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
	    <%@include file ="/WEB-INF/views/header.jsp" %>
		<div style = "padding: 85px 0px 0px 0px;">  </div>
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
		<%@include file ="/WEB-INF/views/footer.jsp" %><!-- footer -->
	</body>
</html>