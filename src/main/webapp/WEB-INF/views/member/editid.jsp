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
	    <title>회원정보 수정</title>
	    <link rel="preconnect" href="https://fonts.googleapis.com">
	    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<link rel="stylesheet" href="/pass/css/Sign-Up-Form---Gabriela-Carvalho.css">
		<link rel="stylesheet" href="/pass/css/Navbar-Right-Links-icons.css">
	    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
	    <style>
	        *{
				font-family: 'Noto Sans KR', sans-serif;
	            font-size: 18px;
	        }
            #member_id-span, #member_phone-span, #member_email-span{
        		font-size: 8px;
       		}
	    </style>
	</head>
	<body>
	<div style = "padding: 85px 0px 0px 0px;">  </div>
		<%@include file ="/WEB-INF/views/header.jsp" %><!-- header -->

	    <form action="editid_check" id="signup-form" method="post">
	        <div class="gc004-container">
	            <h1>회원 정보 수정</h1>
	            <p>Please fill in this form to create an account.</p>
	            <hr><label class="form-label fw-bold" for="psw">Password</label><span id="member_pass-span"></span><input type="password" placeholder="Enter Password" name="pass" required="">
	            <label class="form-label fw-bold" for="psw">Change Password(변경시에만 입력)</label><input type="password" placeholder="Enter Change Password" name="changepass">
	            <label class="form-label fw-bold" for="phone">Phone</label><span id="member_phone-span"></span><input class="form-control" type="text" placeholder="Enter Phone" name="phone" required="">
	            <label class="form-label fw-bold" for="email">Email</label><span id="member_email-span"></span><input type="text" placeholder="Enter Email" name="email" required="">
	            <label class="form-label fw-bold" for="zipcode">Zipcode</label><input type="text" placeholder="Click Zipcode" name="zipcode" required="" readonly>
	            <label class="form-label fw-bold" for="address">Address</label><input type="text" placeholder="Click Zipcode" name="address" required="" readonly>
	            <label class="form-label fw-bold" for="id">Building</label><input type="text" placeholder="Click Zipcode and Enter Building" name="building" required="">
	            <p>By creating an account you agree to our&nbsp;<a class="gc004-dodgerblue" href="#">Terms &amp; Privacy</a>.</p>
	            <div class="gc-clearfix"><button class="gc-signupbtn" type="submit">수정 완료</button><button class="gc-cancelbtn" type="button">취소</button></div>
	        </div>
	    </form>
	    <%@include file ="/WEB-INF/views/footer.jsp" %><!-- footer -->
	    
	    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<script>
		//pw : 8 ~ 20자 특수문자(!@#%&) 대,소문자,숫자 혼용 필수.
		let reg_pw=/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#%&])[a-zA-Z\d!@#%&]{8,20}$/;
		//name : 2 ~ 5자 한글
		let reg_name=/^(?=.*[가-힣])[가-힣]{2,5}$/;
		//phone : 휴대전화 숫자만 받음.
		let reg_phone=/^01\d{8,9}$/;
		//email : [영어&숫자] n글자 @ [영어&숫자] n글자+ . +[영어] 2~3글자
		let reg_email=/^[a-zA-Z\d]*@[a-zA-Z\d]*[.][a-zA-Z]{2,3}$/;
		//signUp
		//kakao address
		$("input[name=zipcode]").on("click",function(){
		    new daum.Postcode({
		        oncomplete: function(data) {
		      	  $("input[name=zipcode]").val(data.zonecode);
		      	  $("input[name=address]").val(data.address);
		      	  $("input[name=building]").val(data.buildingName);
		        }
		    }).open();
		});
		//signUp form RegExp
		$("#signup-form").submit(function(){
		    let checkfails=function(object){
		        switch(object.attr("name")){
		            case"pass":
		                str="비밀번호";
		                break;
		            case"changepass":
		                str="비밀번호 갱신"
		                break;
		            case"phone":
		                str="휴대전화 번호";
		                break;
		            case"email":
		                str="이메일";
		                break;
		            case"address":
		                str="주소";
		                break;
		            case"building":
		                str="세부주소";
		                break;
		            default:
		                console.log(object.name+"확인");
		                break;
		        }
		        swal({
		            title : str+"입력 오류",
		            icon : "error",
		            text : str+"을(를) 다시 입력해주세요",
		            closeOnClickOutside : false
		        }).then(function(){
		            object.val("");
		            object.focus();
		        });
		    }
  			$.post("pass_check",{pass:$("input[name=pass]").val()},function(data){
  				if(data=="true"){
  					$("#member_pass-span").text(" 비밀번호 확인 되었습니다.");
  				}
  				else if(data=="false"){
  					checkfails($("input[name=pass]"))
  					$("#member_phone-span").text(" 비밀번호 확인해주세요.");
  					return false;
  				}
  			})
  			if($("input[name=changepass]").val()!=""){
			    if(!(reg_pw.test($("input[name=changepass]").val()))){
			        checkfails($("input[name=changepass]"));
			        return false;
			    }
  			}
		    if(!(reg_phone.test($("input[name=phone]").val()))||checked_phone==false){
		        checkfails($("input[name=phone]"));
		        $("input[name=phone]").attr("readonly",false);
		        return false;
		    }
		    if(!(reg_email.test($("input[name=email]").val()))||checked_email==false){
		        checkfails($("input[name=email]"));
		        $("input[name=email]").attr("readonly",false);
		        return false;
		    }
		    if($("input[name=address]").val()==""){
		        checkfails($("input[name=address]"));
		        return false;
		    }
		    if($("input[name=building]").val()==""){
		        checkfails($("input[name=building]"));
		        return false;
		    }
		});
		let checked_phone=true;
		$("input[name=phone]").focusin(function(){
			checked_phone=false;
		})
		$("input[name=phone]").focusout(function(){
		  	if(reg_phone.test($("input[name=phone]").val())){
		  		if(checked_phone){
		  			console.log("이미 휴대전화번호 검증에 통과했습니다.")
		  		}else if($("input[name=phone]").val()=="${signin.phone}"){
  					$("input[name=phone]").attr("readonly",true);
  					$("#member_phone-span").text(" 사용 가능한 휴대전화번호 입니다.");
  					checked_phone=true;
		  		}else{
		  			$.post("phone_check",{phone:$("input[name=phone]").val()},function(data){
		  				if(data=="true"){
		  					$("input[name=phone]").attr("readonly",true);
		  					$("#member_phone-span").text(" 사용 가능한 휴대전화번호 입니다.");
		  					checked_phone=true;
		  				}
		  				else if(data=="false")
		  					$("#member_phone-span").text(" 사용 불가능한 휴대전화번호 입니다.");
		  			})	
		  		}
		  	}else
		  		$("#member_phone-span").text(" 사용 불가능한 휴대전화번호 입니다.");
		  	}
		);
		let checked_email=true;
		$("input[name=email]").focusin(function(){
			checked_email=false;
		})
		$("input[name=email]").focusout(function(){
		  	if(reg_email.test($("input[name=email]").val())){
		  		if(checked_email){
		  			console.log("이미 이메일 검증에 통과했습니다.")
		  		}else if($("input[name=email]").val()=="${signin.email}"){
  					$("input[name=email]").attr("readonly",true);
  					$("#member_email-span").text(" 사용 가능한 이메일 입니다.");
  					checked_email=true;
		  		}else{
		  			$.post("email_check",{email:$("input[name=email]").val()},function(data){
		  				if(data=="true"){
		  					$("input[name=email]").attr("readonly",true);
		  					$("#member_email-span").text(" 사용 가능한 이메일 입니다.");
		  					checked_email=true;
		  				}
		  				else if(data=="false")
		  					$("#member_email-span").text(" 사용 불가능한 이메일입니다.");
		  			})	
		  		}
		  	}else
		  		$("#member_email-span").text(" 사용 불가능한 이메일 입니다.");
		  	}
		);
		
		$(document).ready(function(){
			$("input[name=phone]").val("${signin.phone}");
			$("input[name=email]").val("${signin.email}");
			$("input[name=zipcode]").val("${signin.zipcode}");
			$("input[name=address]").val("${signin.address}");
			$("input[name=building]").val("${signin.building}");
		});
		
		$(".gc-cancelbtn").on("click",function(){
			location.replace("mypage");
		})
		</script>
	</body>
</html>