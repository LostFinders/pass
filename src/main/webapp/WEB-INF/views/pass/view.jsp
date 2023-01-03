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
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.31.2/css/theme.bootstrap_4.min.css">
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
	    <link rel="stylesheet" href="https://djpsoftwarecdn.azureedge.net/availabilitycss-v1/availability.min.css">
	    <link rel="stylesheet" href="/pass/css/Ludens---1-Index-Table-with-Search--Sort-Filters-v20.css">
	    <style>
	        *{
				font-family: 'Noto Sans KR', sans-serif;
	            font-size: 18px;
	        }
	        .a-none-line{
	        	text-decoration : none;
	        	color:black;
	        }
	    </style>
	</head>
	<body>
	    <%@include file ="../header.jsp" %><!-- header --><!-- 수정 필요? -->
		    <section class="container-fluid">
		        <div class="card" id="TableSorterCard">
		            <div class="card-header py-3">
		                <div class="row table-topper align-items-center">
		                    <div class="col-12 col-sm-5 col-md-6 text-start" style="margin: 0px;padding: 5px 15px;">
		                        <p class="text-primary m-0 fw-bold">가전 가구 수거 신청 목록</p>
		                    </div>
		                    <div class="col-12 col-sm-7 col-md-6 text-end" style="margin: 0px;padding: 5px 15px;"></div>
		                </div>
		            </div>
		            <div class="row">
		                <div class="col-12">
		                    <div class="table-responsive">
		                        <table class="table table-striped table tablesorter" id="ipi-table">
		                            <thead class="thead-dark">
		                                <tr>
		                                    <th class="text-center">신청 번호</th>
		                                    <th class="text-center">결제 여부</th>
		                                    <th class="text-center">수거 요청일</th>
		                                    <th class="text-center">수거 처리일</th>
		                                    <th class="text-center">상세정보</th>
		                                    <th class="text-center">신청취소</th>
		                                </tr>
		                            </thead>
		                            <tbody class="text-center">
		                            	<c:choose>
		                            		<c:when test="${fn:length(pass.pass) > 0}">
		                            			<c:forEach var="i" items="${pass.pass}" varStatus="vs" begin="0" step="1" end="${fn:length(pass.pass)}">
					                                <tr class="trUp_${i.no}">
					                                    <td>${i.no}</td>
					                                    <td>
					                                    	<c:if test="${i.payment_check == 'T'}">
					                                    		결재 완료
					                                    	</c:if>
					                                    	<c:if test="${i.payment_check == 'F'}">
					                                    		입금 대기
					                                    	</c:if>
					                                    	<c:if test="${i.payment_check == 'C'}">
					                                    		환불 처리
					                                    	</c:if>					                                    						                                    	
					                                    </td>
					                                    <td>${fn:substring(i.request_date,0,10)}</td>
					                                    <td>
					                                    	<c:if test="${i.processing_date ne null}">
					                                    		${fn:substring(i.processing_date,0,10)}
					                                    	</c:if>
					                                    	<c:if test="${i.processing_date == null and i.payment_check != 'C'}">
					                                    		아직 수거되지 않았습니다.
					                                    	</c:if>
				                                    		<c:if test="${i.processing_date == null and i.payment_check == 'C'}">
					                                    		환불처리 되었습니다.
					                                    	</c:if>						                                    
					                                    </td>
					                                    <td class="text-center align-middle" style="max-height: 60px;height: 60px;"><a id="${i.no}" class="viewlist btn btnMaterial btn-flat primary semicircle" role="button" href="#"><i class="far fa-eye"></i></a></td>
					                                    <td class="text-center filter-false sorter-false"><a id="${i.no}" class="refundlist btn btnMaterial btn-flat accent btnNoBorders checkboxHover" role="button" style="margin-left: 5px;" data-bs-toggle="modal" data-bs-target="#delete-modal" href="#"><i class="fas fa-trash btnNoBorders" style="color: #DC3545;"></i></a></td>
					                                </tr>
				                                </c:forEach>
				                                <tr>
				                                	<td colspan="6" style="text-align:center">
				                                		<c:if test="${pass.countPage <= 10}">
					                                		<a id="left" class="a-none-line" href="#">◀</a>
					                                		<c:forEach var="i" begin="1" step="1" end="${pass.countPage}">
					                                			<a id="${i}" class="a-none-line" href="./view?page=${i}">${i}</a>
					                                		</c:forEach>
					                                		<a id="right" class="a-none-line" href="#">▶</a>
				                                		</c:if>
				                                		<c:if test="${pass.countPage > 10}">
				                                			<a id="left" class="a-none-line" href="#">◀</a>
				                                			<a id="1" class="a-none-line" href="./view?page=1">$1</a>
					                                		<c:forEach var="i" begin="${pass.countPage}-9" step="1" end="${pass.countPage}">
					                                			<a id="${i}" class="a-none-line" href="./view?page=${i}">${i}</a>
					                                		</c:forEach>
					                                		<a id="right" class="a-none-line" href="#">▶</a>
				                                		</c:if>
				                                	</td>
				                                </tr>
			                                </c:when>
			                                <c:otherwise>
			                                <tr>
			                                	<td colspan="6" rowspan="6" style="text-align:center">
			                                	주문 하신 내역이 없습니다.
			                                	</td>
			                                </tr>
			                                </c:otherwise>
		                                </c:choose>
		                            </tbody>
		                        </table>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </section>
		<%@include file ="/WEB-INF/views/footer.jsp" %><!-- footer -->
	    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<script>
			$(".viewlist").on("click",function(data){
				window.open('receipt?no='+$(this).attr("id"),'window',"top=400, left=400, width=500, height=600, resizable=no, status=no, toolbar=no, menubar=no");
			})
			$("#left").on("click",function(){
				let pages=window.location.search.substring(6)
				if(pages<=1)
					pages=1;
				else
					pages--;
				location.replace("./view?page="+pages)
			})
			$("#right").on("click",function(){
				let pages=window.location.search.substring(6)
				if(pages>=${pass.countPage})
					pages=${pass.countPage};
				else
					pages++;
				location.replace("./view?page="+pages)
			})
			$(".refundlist").on("click",function(){
				swal({
					  title: $(this).attr("id")+"번 주문 취소",
					  text: "정말로 주문 취소하시겠습니까?",
					  icon: "warning",
					  content: {
						    element: "input",
						    attributes: {
							      placeholder: "(취소하시려면 로그인 비밀번호를 입력해주세요.)",
							      type: "password",
							      name: "value"
					  		},
					  },
					  buttons: true,
					  dangerMode: true,
					})
					.then((choice) => {
						if (choice) {
							$.post("refund",{"pass":choice, "no":$(this).attr("id")},function(data){
								if(data=="true"){
							    	swal("요청이 취소되었습니다.", {icon: "success"});
									location.reload();
							    }else if(data=="false")
									swal("주문 취소 오류 관리자에게 문의 해주세요", {icon: "error"});
							});
						}else{
					    	swal("작업이 취소되었습니다.", {icon: "success"});
					  	}
					});
			})
		</script>
	</body>
</html>