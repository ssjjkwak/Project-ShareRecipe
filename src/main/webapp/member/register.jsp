<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>
 <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<link rel="manifest" href="../assets/img/favicons/manifest.json">
<meta name="msapplication-TileImage"
	content="../assets/img/favicons/mstile-150x150.png">
<meta name="theme-color" content="#ffffff">
<link href="../assets/css/theme.css" rel="stylesheet" />
</head>
<script type="text/javascript">
let i = 1;
	function checkId() {
		let joinId=document.getElementById("joinId").value;
		let xhr=new XMLHttpRequest();
		xhr.onload=function(){
			
			let result = xhr.responseText;
			if(result==1){
				document.getElementById("idck").style.color="red";
				document.getElementById("idck").innerHTML="이미 사용중인 아이디입니다.";
				i=1;
			}else{
				document.getElementById("idck").style.color="green";
				document.getElementById("idck").innerHTML="사용 가능한 아이디입니다.";
				i=0;
			}
		}
		xhr.open("get","../RegisterIdCheckController.do?joinId="+joinId);
		xhr.send();
	}



/* function checkId() {
	let mid = document.getElementById("joinId").value;

	if (mid=="") {
		alert("아이디를 입력하세요!");
	} else {
		window.open("../RegisterIdCheckController.do?joinId="+mid, "mypopup",
				"width=300,height=200,top=150,left=500");
	}
} */
// 아이디 중복확인하지 않은 상태에서 가입하기를 누르면 아이디 중복확인하세요 alert 후 전송시키지 않는다 
function checkForm() {
	if(i==1){
		alert("아이디가 중복되었습니다.");
		document.getElementById("joinId").focus();
		return false;
	}
	let joinId=document.getElementById("joinId").value;
	if(joinId==""){
		alert("아이디를 입력하셔야 합니다.");
		return false;
	}
	let password = document.forms[0];
	let pass1 = password.joinPw.value;
	let pass2 = password.joinPwck.value;
	/* if(document.getElementById("joinId").value!=document.getElementById("flag").value){
		alert("아이디 중복 확인이 필요합니다.");
		return false;
	} */
	if(pass1!=pass2){
		alert("패스워드가 일치하지 않습니다.");
		return false;
	}
	var str = document.getElementsByClassName("check");
	var blank_pattern = /[\s]/g;
	if( blank_pattern.test( str.value) == true){
	    alert(' 공백은 사용할 수 없습니다. ');
	    return false;
	}


	var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;

	if( special_pattern.test(str.value) == true ){
	    alert('특수문자는 사용할 수 없습니다.');
	    return false;
	}
}
// 패스워드 일치 확인
function pwCheck() {
	let password = document.forms[0];
	let pass1 = password.joinPw.value;
	let pass2 = password.joinPwck.value;
	if(pass1!=pass2){
		document.getElementById("checkPwd").style.color="red";
		document.getElementById("checkPwd").innerHTML="비밀번호가 일치하지 않습니다.";
	}else{
		document.getElementById("checkPwd").style.color="green";
		document.getElementById("checkPwd").innerHTML="비밀번호가 일치합니다.";
	}
}

</script>
<body style="background-color: #F9FAFD">
	<div class="container">
		<div class="row h-100">
			<div class="col-lg-7 mx-auto text-center mt-7 mb-5">
			<a href="../index.jsp"><img src="../assets/img/favicons/favicon.jpg" style="width:350px;"></a><br><br><br><br>
				<h3 style="font-family: 'Jua'; font-weight: 800;">회원가입</h3>
				<br>
				<br><br>
				<form action="../RegisterMemberController.do" onsubmit="return checkForm()" method="post">
					<input type="hidden" id="flag" value="">
					<input class="form-control border-0 input-box bg-100 check"
						onkeyup="checkId()" style="font-family: 'Jua'; font-weight: 500; width: 75%; margin-bottom: 20px; display: inline-block; float: left;"
						type="text" id="joinId" name="joinId" placeholder="아이디를 입력하세요."
						required="required">
					<span id="idck" style="position:relative; top:5px; margin-left: 20px; font-family: 'Jua'; font-weight: 200; font-size: 13px;"></span>
					<br> <input class="form-control border-0 input-box bg-100 check"
						style="font-family: 'Jua'; font-weight: 500;" type="password"
						name="joinPw" placeholder="비밀번호를 입력하세요." required="required" onkeyup="passwordStrength()"><span id="strength"></span>
					<br> <input class="form-control border-0 input-box bg-100"
						style="font-family: 'Jua'; font-weight: 500;" type="password"
						name="joinPwck" placeholder="비밀번호 재확인" onkeyup="pwCheck()" required="required">
						<div style="text-align: left; margin-top: 5px; margin-bottom: -10px;">
							<span style="margin-left: 40px; font-family: 'Jua'; font-weight: 200; font-size: 12px;" id="checkPwd"></span>
						</div>
					<br> <input class="form-control border-0 input-box bg-100 check"
						style="font-family: 'Jua'; font-weight: 500;" type="text"
						name="joinName" placeholder="이름 입력" required="required"> <br>
					<input class="form-control border-0 input-box bg-100"
						style="font-family: 'Jua'; font-weight: 500; width: 50%; display: inline-block; float: left; margin-bottom: 20px;"
						type="text" name="joinAddr1" id="sample2_postcode"
						placeholder="우편번호" readonly="readonly"> <input
						class="btn btn-danger"
						style="position: relative; margin: 0; padding: 0; height: 38px; width: 20%; left: -10%; font-family: 'Jua'; font-weight: 500;"
						type="button" onclick="sample2_execDaumPostcode()" value="우편번호 찾기"><br>

					<input class="form-control border-0 input-box bg-100"
						style="font-family: 'Jua'; font-weight: 500;" type="text"
						name="joinAddr2" id="sample2_address" placeholder="주소"
						readonly="readonly"><br> <input
						class="form-control border-0 input-box bg-100"
						style="font-family: 'Jua'; font-weight: 500; width: 48%; display: inline-block; float: left; margin-bottom: 20px; margin-right: 4%;"
						type="text" name="joinAddr3" id="sample2_detailAddress"
						placeholder="상세주소"> <input
						class="form-control border-0 input-box bg-100"
						style="font-family: 'Jua'; font-weight: 500; width: 48%; display: inline-block; float: left; margin-bottom: 20px;"
						type="text" name="joinAddr4" id="sample2_extraAddress"
						placeholder="참고항목"> <br> <input
						class="form-control border-0 input-box bg-100 check"
						style="font-family: 'Jua'; font-weight: 500;" type="text"
						name="joinTel" placeholder="휴대폰번호(공백없이 숫자만 입력)"
						required="required" pattern="[0-9]+"><br> <div style="text-align: left;"><span style="font-family: 'Jua'; font-weight: 500;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;생년월일</span></div><br><input
						class="form-control border-0 input-box bg-100 check"
						style="font-family: 'Jua'; font-weight: 500;" type="date"
						name="joinBirthday" required="required"><br> <input
						class="form-control border-0 input-box bg-100 check"
						style="font-family: 'Jua'; font-weight: 500; width: 48%; display: inline-block; float: left; margin-bottom: 20px;"
						type="text" name="joinMail1" placeholder="이메일" required="required">
					<%-- <span style="position: relative; top:5px">@</span>--%>
					<select class="form-control border-0 input-box bg-100"
						style="font-family: 'Jua'; font-weight: 500; width: 45%; display: block; float: right; margin-bottom: 20px;"
						name="joinMail2" id="email_server" onchange="input_email();">
						<option value="">주소선택</option>
						<option value="@naver.com">@naver.com</option>
						<option value="@gmail.com">@gmail.com</option>
						<option value="@hotmail.com">@hotmail.com</option>
					</select> <br> <br>
					<button style="font-family: 'Jua'; font-weight: 500;" class="btn btn-danger btn-lg" style="margin-top: 20px;">회원가입</button>
				</form>
			</div>
		</div>
	</div>
	<div id="layer"
		style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
		<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
			id="btnCloseLayer"
			style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
			onclick="closeDaumPostcode()" alt="닫기 버튼">
	</div>

	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		
		function input_email() {

			document.frm.e2.value = document.frm.email_server.value;

		}

		// 우편번호 찾기 화면을 넣을 element
		var element_layer = document.getElementById('layer');

		function closeDaumPostcode() {
			// iframe을 넣은 element를 안보이게 한다.
			element_layer.style.display = 'none';
		}

		function sample2_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 조합된 참고항목을 해당 필드에 넣는다.
								document.getElementById("sample2_extraAddress").value = extraAddr;

							} else {
								document.getElementById("sample2_extraAddress").value = '';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample2_postcode').value = data.zonecode;
							document.getElementById("sample2_address").value = addr;
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("sample2_detailAddress")
									.focus();

							// iframe을 넣은 element를 안보이게 한다.
							// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
							element_layer.style.display = 'none';
						},
						width : '100%',
						height : '100%',
						maxSuggestItems : 5
					}).embed(element_layer);

			// iframe을 넣은 element를 보이게 한다.
			element_layer.style.display = 'block';

			// iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
			initLayerPosition();
		}

		// 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
		// resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
		// 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
		function initLayerPosition() {
			var width = 300; //우편번호서비스가 들어갈 element의 width
			var height = 400; //우편번호서비스가 들어갈 element의 height
			var borderWidth = 5; //샘플에서 사용하는 border의 두께

			// 위에서 선언한 값들을 실제 element에 넣는다.
			element_layer.style.width = width + 'px';
			element_layer.style.height = height + 'px';
			element_layer.style.border = borderWidth + 'px solid';
			// 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
			element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth)
					+ 'px';
			element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth)
					+ 'px';
		}
	</script>
	<script src="vendors/@popperjs/popper.min.js"></script>
    <script src="vendors/bootstrap/bootstrap.min.js"></script>
    <script src="vendors/is/is.min.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="vendors/fontawesome/all.min.js"></script>
    <script src="assets/js/theme.js"></script>

    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200;300;400;600;700;900&amp;display=swap" rel="stylesheet">
</body>
</html>