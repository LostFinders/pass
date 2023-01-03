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
	    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
	    <link rel="stylesheet" href="/pass/css/Ludens---1-Index-Table-with-Search--Sort-Filters-v20.css">
	    <style>
	        *{
				font-family: 'Noto Sans KR', sans-serif;
	            font-size: 18px;
	        }
	    </style>
	</head>
<body>

    <div class="container-fluid">
        <div class="card" id="TableSorterCard">
            <div class="card-header py-3">
                <div class="row table-topper align-items-center">
                    <div class="col-12 col-sm-5 col-md-6 text-start" style="margin: 0px;padding: 5px 15px;">
                        <p class="text-primary m-0 fw-bold">가전가구수거 신청내역</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="table-responsive">
                        <table class="table table-striped table tablesorter" id="ipi-table">
                            <thead class="thead-dark">
                                <tr>
                                    <th class="text-center">물품명</th>
                                    <th class="text-center">개당 가격</th>
                                    <th class="text-center">갯수</th>
                                    <th class="text-center">합산 가격</th>
                                </tr>
                            </thead>
                            <c:choose>
                            	<c:when test="${fn:length(order) > 0}">
                       	           	<script>
                                    	let sum=0;
                                    </script>
                            		<c:forEach var="i" items="${order.list}" begin="0" end="${fn:length(order.list)}" step="1" varStatus="status">
			                            <tbody class="text-center">
			                                <tr id="tr_check">
			                                    <td class="name_td">${order.cost[status.index].name}</td>
			                                    <td class="price_td">${order.cost[status.index].price}</td>
			                                    <td class="amount_td">${i.amount}</td>
			                                    <td class="price_sum">${order.cost[status.index].price*i.amount}</td>
			                                </tr>
			                            </tbody>
                                    	<script>
			                                    sum=parseInt(sum)+parseInt(${order.cost[status.index].price*i.amount})
	                                    </script>
		                            </c:forEach>
	                                <tr id="tr_check">
	                                    <td colspan="4" id="sum" style="text-align:center"></td>
	                                </tr>
	                            </c:when>
                            </c:choose>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
	    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<script>
		$(document).ready(function(){
			$("#sum").append("요청하신 신청내역의 비용은 "+sum+"원 입니다.")
		})
		</script>
	</body>
</html>