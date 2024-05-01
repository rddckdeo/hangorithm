function undisabled(){
	document.getElementById("name").disabled = false;
	document.getElementById("position").disabled = false;
	document.getElementById("email").disabled = false;
	document.getElementById("birth").disabled = false;
	
	document.getElementById("updateBtn").style.display = 'none';
	document.getElementById("saveBtn").style.display = 'flex';
	
}

function saveInfo(){
	let ondate = document.getElementById("ondate").value;
	let id = document.getElementById("id").value;
	let name = document.getElementById("name").value;
	let position = document.getElementById("position").value;
	let email = document.getElementById("email").value;
	let birth = document.getElementById("birth").value;
	
	let updateData = {
		mOndate : ondate,
		mId : id,
		mName : name,
		mPosition : position,
		mEmail : email,
		mBirth : birth,
	}
	if(confirm("수정하시겠습니까?")){
		$.ajax({
			url: '/mypage/updateMyInfo.do',
			data: JSON.stringify(updateData),
			dataType : "text",
			contentType:"application/json; charset=utf-8;",
			type: 'POST',
			success: function(data){
				alert(data);
				if(data == 1){
					alert("성공적으로 수정되었습니다. 다시 로그인해주시길 바랍니다.");
					window.location.href='/mypage/myPageForm.do';
				}
			}
		})
	}
}