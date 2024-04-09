function mainForm(){
	window.location ="/";
}

/*register*/


document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("positionSelect").addEventListener("change", function() {
        let positionSelect = this.options[this.selectedIndex].text;
        let position = document.getElementById("position"); // input
        let status = document.getElementById("status").value;
		
        if(status == 0){
            position.value = positionSelect; //input값 변경
            document.getElementById("status").value = 1; // status 변경
            position.disabled = true; // 비활성화
        }else if(status == 1 && positionSelect === "-선택해주세요-"){
            position.value = null;
            document.getElementById("status").value = 0;
            position.disabled = false;
        }else{
            position.value = positionSelect;
        } 
    });
	// 연구원
	document.getElementById("positionSelect2").addEventListener("change", function() {
        let positionSelect2 = this.options[this.selectedIndex].text;
        let position = document.getElementById("position"); // input
        let status = document.getElementById("status").value;
		
        if(status == 0){
            position.value = positionSelect2; //input값 변경
            document.getElementById("status").value = 1; // status 변경
            position.disabled = true; // 비활성화
        }else if(status == 1 && positionSelect2 === "-선택해주세요-"){
            position.value = null;
            document.getElementById("status").value = 0;
            position.disabled = false;
        }else{
            position.value = positionSelect2;
        } 
    });
	
	// check 시 select 변경
	document.getElementById("positionCheck").addEventListener("click",function(){
		let positionCheck = document.getElementById("positionCheck");
		let checkStatus = positionCheck.checked;
		// select
		let positionSelect = document.getElementById("positionSelect"); // default
		let positionSelect2 = document.getElementById("positionSelect2"); // 연구소
		
		
		if(checkStatus){
			console.log("check");
			positionSelect2.style.display = 'block';
			positionSelect.style.display = 'none';
		}else{
			console.log("not check");
			positionSelect.style.display = 'block';
			positionSelect2.style.display = 'none';
		}
	});




});

function loginForm(){
	if(confirm("입력하신 정보가 초기화됩니다. 되돌아가시겠습니까?")){
		window.location = "/member/loginForm.do";
	}
}

function findCompany() {
    // 새 창의 폭과 높이를 지정합니다.
    let width = 600;
    let height = 600;

    // 창의 위치를 계산하여 가운데로 배치합니다.
    let left = (screen.width - width)/2;
    let top = (screen.height - height)/2;

    // 새 창을 엽니다.
    window.open("/member/findCompany.do", "_blank", "width=" + width + ", height=" + height + ", left=" + left + ", top=" + top);
}

function idCheck(){
	let idInput = document.getElementById("idInput").value.trim();
	let div = document.getElementById("idCheckResult");
	// 이전 결과를 제거
    div.innerHTML = ""; // div 내용을 모두 지움
	let result = document.createElement('P');
	div.appendChild(result);
	if(idInput == ""){
		alert("ID를 입력해주세요");
	}else if(idInput.length < 6){
		alert("아이디를 6자 이상 입력해주세요");
	}else{
		$.ajax({
			url: "/member/idCheck.do",
			data: {id : idInput},
			type: "GET",
			success : function(data){
				if(data == "1"){
					result.textContent = '사용할 수 없는 아이디입니다.';
					result.classList.add('idCheckFont');
					result.style.color = 'red';
					//value같은거 넣어서 나중에 form 조건 만들어야함
				}else{
					result.textContent = '사용 가능한 아이디입니다.';
					result.classList.add('idCheckFont');
					result.style.color = 'green';
					
				}
			}
		})
	}
}


/*find Company form submit*/
function findCompanyBoard(){
	let form = document.getElementById("findCompanyForm");
	let companyName = document.getElementById("companyName").value.trim();
	
	if(companyName == ''){
		alert("검색어를 입력해주세요.");
	}else{
		form.action = "/member/findCompanyBoard.do";
		form.method = "GET";
		form.submit();
	}
	
}
/*find Company form submit onkeyup*/
function findCompanyBoard2(event){
	if(event.keyCode == 13){
		let form = document.getElementById("findCompanyForm");
		let companyName = document.getElementById("companyName").value.trim();
		
		if(companyName == ''){
			alert("검색어를 입력해주세요.");
		}else{
			form.action = "/member/findCompanyBoard.do";
			form.method = "GET";
			form.submit();
		}
	}
}

/* CompanyDiv Switch*/
function CompanyDivSwitch(){
	let enroll = document.getElementById("companyEnrollDiv");
	let find = document.getElementById("findCompanyDiv");
	
	enroll.style.display = 'block';
	find.style.display = 'none';
	
}
/*ajax JSON형태로 데이터를 묶어서 보내기*/
function companyEnroll(){
	let cName = document.getElementById("cName").value.trim();
	let cNum = document.getElementById("cNum").value.trim();
	let cLocation = document.getElementById("cLocation").value.trim();
	let cBusiness = document.getElementById("cBusiness").value.trim();
	let companyData = {
		cName: cName,
		cNum: cNum,
		cLocation: cLocation,
		cBusiness: cBusiness,
	}
	if(cName == '' || cNum == '' || cLocation == '' || cBusiness == ''){
		alert('내용이 비어있습니다.');
	}else{
		$.ajax({
			url:'/member/companyEnroll.do',
			data:JSON.stringify(companyData),
			dataType:"json",
			contentType: "application/json; charset=utf-8;",
			type:'POST',
			dataType: "text",
			success: function(result){
				console.log(result);
				
				if(result === 'success'){
					alert('성공적으로 추가되었습니다.');
					location.reload(true);
				}else if(result === 'null'){
					alert('내용이 비어있습니다.');
				}else if(result === 'checkFalse'){
					alert('이미 있는 회사입니다.');
				}else{
					alert('문제가 발생하였습니다 관리자에게 연락주세요');
				}
			},error: function(error){
				console.log("error 발생", error);
			}
		})
	}
	
}

function companyDataSend(cNo,cName){
	let companyData = {
		cNo : cNo,
		cName,
	}
	
	$.ajax({
		url:'/member/companyDataSend;',
		data:JSON.stringify(companyData),
		dataType:"json",
		contentType: "application/json; charset=utf-8;",
		type:'POST',
		dataType: "text",
		success : function(data){
			console.log(data);
		}
	})
}


