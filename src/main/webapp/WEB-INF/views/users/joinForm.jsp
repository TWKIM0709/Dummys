<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
<link rel="icon" href="/resources/images/DummysFavicon.png" type="image/x-icon" sizes="16x16">
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Dummy's</title>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    
    
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1"> 

     <link rel="icon" href="/resources/images/DummysFavicon.png" type="image/x-icon" sizes="16x16">

     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="/resources/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="/resources/css/style.css">
    
    <script src="/resources/js/main.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css" rel="stylesheet" />
    
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
 
<style>
  @import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap');
</style>

   <style>
    #weatherWidget .currentDesc {
        color: #ffffff!important;
font-family: 'Hahmlet', serif;
font-family: 'Lato', sans-serif;
    }
        .traffic-chart {
            min-height: 335px;
        }
        #flotPie1  {
            height: 150px;
        }
        #flotPie1 td {
            padding:3px;
        }
        #flotPie1 table {
            top: 20px!important;
            right: -10px!important;
        }
        .chart-container {
            display: table;
            min-width: 270px ;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 10px;
            font-family: 'Hahmlet', serif;
			font-family: 'Lato', sans-serif;
        }
        #flotLine5  {
             height: 105px;
        }

        #flotBarChart {
            height: 150px;
        }
        #cellPaiChart{
            height: 160px;
        }

    </style>
</head>
<body class="bg-flat-color-7">

    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                     <a href="/index.do">
                        <img class="align-content" src="/resources/images/DummysLogo.png" alt="">
                    </a> 
                </div>
                <div class="login-form">
                    <form action="" method="post">
                        <div class="form-group">
                            <label>?????????</label>
                            <input type="text" class="form-control" placeholder="?????????" name="nickname" id="nickname" onkeyup="validate()">
                            <span id="confirmNicknameREMsg"></span>
                        </div>
                        <div class="form-group">
                            <label style="margin-right: 80%">?????????</label>
                            <input type="text"  class="form-control" placeholder="?????????" name="userid" id="email" onkeyup="validate()" style="display: inline; width: 80%;">
                            <button type="button" id="mail-check-btn" class="btn btn-success" style="width: 19%; height: 37px; padding: 0" disabled>????????????</button>
                            <div>
                        		<span id="confirmEmailREMsg" ></span>
                        	</div>
                        </div>
                        <div id="mail" class="form-group"></div>
                       <!-- ??????1 --> 
                       <div class="form-group">
                            <label>????????????</label>
                            <input type="password" id="password" class="form-control" placeholder="????????????" name="password" id="password" onkeyup="validate()">
                            <span id="confirmPasswordREMsg"></span>
                        </div>
                        <div class="form-group">
                            <label>???????????? ??????</label>
                            <input type="password" name="confirm_Password" id="confirm_Password" class="form-control" placeholder="???????????? ??????" onkeyup="confirmPassword()">
                            <span id="confirmMsg"></span>
                        </div> 
                        <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30" id="joinBtn" disabled>????????????</button>
                        <div class="social-login-content">
                        </div>
                        <div class="register-link m-t-15 text-center">
                            <p>?????? ????????? ???????????????? <a href="${pageContext.request.contextPath}/users/login.do"> ?????????</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>  
    

</body>

<script>

let checkNickname = false;
let checkPassword = false;
let checkEmail = false;
let checkPasswordMatch = false;
let checkMailCheck = false;

let checknumber = 0;


/* ???????????? ?????? ??????(??????) */
$("#mail-check-btn").click(()=>{
	let email = $("#email").val();
	let certification = $("#certification");
	
	if(email == ''){
    	Swal.fire({
    		title:'???????????? ??????????????????.',
    		  imageUrl: '/resources/images/failMonster.png',
    		  imageWidth: 220,
    		  imageHeight: 250,
    		  imageAlt: 'Custom image',
    		  width:400
    		})
		return false;
	}
	$.ajax({
		type : "post",
		url : "/join/mailcheck.do",
		data : JSON.stringify(email),
		"contentType":"application/json",
		success : function(result){
			
			//?????? ??? ????????? ?????? ???????????? ??????
			document.getElementById("email").readOnly = true;
			
			$("#mail").empty();
			
			let tag = 
			'<label style="margin-right: 80%">????????? ??????</label>' +
            '<input type="text" class="form-control" placeholder="???????????? 6????????? ??????????????????" name="certification" id="certification" onkeyup="mailcheck()">'+
            '<div><span id="mail-check"></span></div>';

			$("#mail").append(tag);

			checknumber = result.authnumber;
			
			Swal.fire({
				title:'???????????? ????????? ?????????????????????.',
				  imageUrl: '/resources/images/successMonster.png',
				  imageWidth: 220,
				  imageHeight: 250,
				  imageAlt: 'Custom image',
				  width:400
				})
		},
		error : function(){
			document.getElementById("email").readOnly = false;
			Swal.fire({
				title:'???????????? ????????? ??????????????????.',
				  imageUrl: '/resources/images/failMonster.png',
				  imageWidth: 220,
				  imageHeight: 250,
				  imageAlt: 'Custom image',
				  width:400
				})
		}
	})
})

function mailcheck(){
	var correctColor = "#4AB34A"; //???????????? ????????? ??? ???????????? ??????
	var warningColor = "#ff0000"; //????????? ??? ???????????? ??????
	//mailcheck
	let mailcheck = $('#certification').val();
	//mailcheck
	let confirmMailCheckMsg = document.getElementById("mail-check")

	//???... ?????? ???????
	if(mailcheck.match(checknumber)){
		confirmMailCheckMsg.style.color = correctColor;
		confirmMailCheckMsg.innerHTML = "??????????????? ??????"
		checkMailCheck = true;
	}else{
		confirmMailCheckMsg.style.color = warningColor;
		confirmMailCheckMsg.innerHTML = "???????????? ?????????"
		checkMailCheck = false;
	}
	activateBtn()
}
  
/*???????????? ?????? ?????? (??????)*/
function confirmPassword(){
	var password = document.getElementById("password");
	var confirmPassword = document.getElementById("confirm_Password");
	var confirmMsg = document.getElementById("confirmMsg");
	var correctColor = "#4AB34A"; //???????????? ????????? ??? ???????????? ??????
	var wrongColor = "#ff0000"; //????????? ??? ???????????? ??????
	var joinBtn = document.getElementById("joinBtn");
	
	if(password.value == confirmPassword.value){ //password??? ?????? ?????? confirmPassword??? ???????
			//true
			confirmMsg.style.color = correctColor;
			confirmMsg.innerHTML = "???????????? ??????";
			checkPasswordMatch = true;
			
	} else{
		//false
		confirmMsg.style.color = wrongColor;
		confirmMsg.innerHTML = "???????????? ?????????";
		checkPasswordMatch = false;
	}
	activateBtn()
}


/* Regular Expression ?????? + ??????(????????? ?????? ?????? ??????)*/
function validate(){
	var nicknameRE = /^[a-zA-Z0-9???-???]{4,10}$/  //????????? 4~10?????? ???,???,??????
	var emailRE= /\w+([-+.]\w+)*@\w+([-.]\w+)*\.[a-zA-Z]{2,4}$/
	var passwordRE = /^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,20}$/ //???????????? 8~20?????? ???,??????,????????????(#?!@$%^&*-)
	
	var nickname = $('#nickname').val() //document.getElementById("nickname");
	var password = $('#password').val() 
	var email = $('#email').val()
	
	
	var confirmNicknameMsg = document.getElementById("confirmNicknameREMsg")
	var confirmPasswordMsg = document.getElementById("confirmPasswordREMsg")
	var confirmEmailMsg = document.getElementById("confirmEmailREMsg")
	

	var correctColor = "#4AB34A"; //???????????? ????????? ??? ???????????? ??????
	var warningColor = "#FF9B00";
	
	
	
	//????????? ??????????????? ??????
	if(nickname.match(nicknameRE)){
		confirmNicknameMsg.style.color = correctColor;
		confirmNicknameMsg.innerHTML = "??????????????? ?????????";
		checkNickname = true;
		
	} else{
		confirmNicknameMsg.innerHTML = "????????? 4~10?????? ???,???,??????";
		confirmNicknameMsg.style.color = warningColor;
		checkNickname = false;
	}
	
	//????????? ??????????????? ??????
	if(email.match(emailRE)){
		document.getElementById("mail-check-btn").removeAttribute("disabled");
		confirmEmailMsg.style.color = correctColor;
		confirmEmailMsg.innerHTML = "??????????????? ????????? ??????"
			checkEmail = true;
	} else{
		document.getElementById("mail-check-btn").setAttribute("disabled", "disabled");
		confirmEmailMsg.style.color = warningColor;
		confirmEmailMsg.innerHTML = "????????? ????????? ???????????????";
		checkEmail = false;
	}
	
	
	//???????????? ??????????????? ??????
	if(password.match(passwordRE)){
		confirmPasswordMsg.style.color = correctColor;
		confirmPasswordMsg.innerHTML = "???????????????????????????"
			checkPassword = true;
	} else{
		confirmPasswordMsg.style.color = warningColor;
		confirmPasswordMsg.innerHTML = "???????????? 8~20?????? ???,??????,????????????(#?!@$%^&*-)";
		checkPassword = false;
	}
	activateBtn()
}

/*
 
  let checkNickname = false;
  let checkPassword = false;
  let checkEmail = false;
  let checkPasswordMatch = false;
 */

function activateBtn(){
	if(checkNickname&&checkPassword&&checkEmail&&checkPasswordMatch&&checkMailCheck){
		document.getElementById("joinBtn").removeAttribute("disabled");
	} else{
		document.getElementById("joinBtn").setAttribute("disabled", "disabled");
	}
}

 validate();


</script>


</html>
