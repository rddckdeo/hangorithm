function boardEnroll(){
	let sessionNo = document.getElementById("sessionNo").value;
	let status = document.getElementById("statusInput").value;
	let title = document.getElementById("titleInput").value;
	let content = document.getElementById("contentInput").value;
	let form = document.getElementById("enrollForm");
	
	console.log(sessionNo);
	console.log(status);
	console.log(title);
	console.log(content);
	
	if(sessionNo != '' && status == '' || title == '' || content == ''){
		alert("내용을 작성해주세요");
	}else if(sessionNo == '' && status == '' || title == '' || content == ''){
		alert("로그인해주시길 바랍니다.");
		window.location.href="/member/loginForm.do";
	}else if(sessionNo != '' &&  status != '' && title != '' && content != ''){
		if(confirm("문의 내용을 저장하겠습니까?")){
			form.action = "/main/boardEnroll.do";
			form.methodes = "POST";
			form.submit();
		}else{
			
		}
	}else{
		alert("문제 발생");
	}
	
}

function detailForm(no, status){
	window.location.href="/main/customerDetailForm.do?no=" + no +"&status="+status;
	
}