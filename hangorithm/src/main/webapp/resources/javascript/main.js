function mainBoxStatus(data){
	if(data == 1){
		window.location.href="/main/headerChange.do?data=profile";
	}else if(data == 2){
		window.location.href="/main/headerChange.do?data=infoList";
	}else if(data == 3){
		window.location.href="/main/headerChange.do?data=boardList";
	}else if(data == 4){
		window.location.href="/main/headerChange.do?data=techList";
	}
}

function companyInfo(){
	let status = 'true';
	window.location.href="/";
	scrollToPosition(status);
}

/*document.addEventListener('DOMContentLoaded',function(){
	let headerInput = document.getElementById("headerInput");
	function hand
})*/

function serchInput(event){
	let headerInput = document.getElementById("headerInput").value.trim();
	if(event.keyCode == 13){
		window.location.href="/main/searchItem.do?item="+headerInput;
	}
}

function searchDetail(no, status){
	window.location.href="customerDetailForm.do?no="+no+"&status="+status;
}

function pageAddBtn(no, item){
	let addNum = no + 5;
	window.location.href="/main/searchItem.do?item="+item+"&boardCountAdd="+addNum;
	
}

function myprofile(status){
	if(status == 'my'){
		window.location.href="/mypage/myPageForm.do";
	}else if(status == 'company'){
		window.location.href="/mypage/myPageForm.do?status=company";
	}else if(status == 'customer'){
		window.location.href="/main/customerForm.do";
	}
}