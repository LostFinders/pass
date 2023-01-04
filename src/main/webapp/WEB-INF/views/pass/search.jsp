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
                        <p class="text-primary m-0 fw-bold">가전가구 수거 목록</p>
                    </div>
                    <div class="col-12 col-sm-7 col-md-6 offset-xl-2 text-end" style="margin: 0px;padding: 5px 15px;"><input class="form-control-sm" type="text" name="name" placeholder="Search keyword" autocomplete="on"><button class="btn btn-primary btn-sm reset" id="search-btn" type="button" style="margin: 2px;">Search</button></div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="table-responsive">
                        <table class="table table-striped table tablesorter" id="ipi-table">
                            <thead class="thead-dark">
                                <tr>
                                    <th class="text-center">물품명</th>
                                    <th class="text-center">가격</th>
                                    <th class="text-center">필수 여부</th>
                                    <th class="text-center filter-false sorter-false">use</th>
                                </tr>
                            </thead>
                            <c:choose>
                            	<c:when test="${fn:length(oclist) > 0}">
                            		<c:forEach var="i" items="${oclist}" begin="0" end="${fn:length(oclist)}" step="1" varStatus="status">
			                            <tbody class="text-center">
			                                <tr id="tr_check">
			                                    <td id="${i.no}" class="id_td">${i.name}</td>
			                                    <td id="price_td">${i.price}</td>
			                                    <td id="necessary_td">${i.necessary}</td>
			                                    <td class="text-center align-middle" style="max-height: 60px;height: 60px;"><a class="btn btnMaterial btn-flat success semicircle select-btn" role="button" href="#"><i class="fas fa-pen"></i></a></td>
			                                </tr>
			                            </tbody>
		                            </c:forEach>
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
		$("#search-btn").on("click",function(){
			location.replace("search?name="+($("input[name=name]").val()==undefined ? "" : $("input[name=name]").val()));
		});
		$("input[name=name]").on("keydown",function(key){
			if(key.keyCode==13)
				location.replace("search?name="+($("input[name=name]").val()==undefined ? "" : $("input[name=name]").val()));
		})
		$(".select-btn").on("click",function(){
			let tr=$($($(this).parent()).parent());
			let tr_id=tr.children(".id_td").attr("id");
			if($(opener.document).find("#"+tr_id).attr("id")==undefined)
				$(opener.document).find("#request-tbody").append("<tr name='id' id="+tr_id+"><td>"+tr.children(".id_td").html()+"</td><td>"+tr.children("#price_td").html()+"</td><td><input type='number' class='amount' name='amount' value='1' min='1' max='100' required=''></td><td><input type='button' class='btn btn-sm btn-danger btn-delete' value='X'></td></tr>");
			window.close(); 
		})
		</script>
	</body>
</html>