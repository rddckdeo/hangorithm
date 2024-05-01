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

document.addEventListener('DOMContentLoaded', function(){
    let mainImg1 = document.getElementById("mainImg1");
    let mainImg2 = document.getElementById("mainImg2");
    let mainImg3 = document.getElementById("mainImg3");
    let mainImg4 = document.getElementById("mainImg4");
    let mainImg5 = document.getElementById("mainImg5");

    let time1 = 1;
    let time2 = 1;
    let time3 = 1;
    let time4 = 1;
    let time5 = 1;

    function changeImage1() {
        if(time1 == 1){
            mainImg1.src = '/resources/upload/profile/register1.png';
        } else if(time1 == 2){
            mainImg1.src = '/resources/upload/profile/register2.png';
        } else if(time1 == 3){
            mainImg1.src = '/resources/upload/profile/register3.png';
        } else if(time1 == 4){
            mainImg1.src = '/resources/upload/profile/login1.png';
        } else if(time1 == 5){
            mainImg1.src = '/resources/upload/profile/login2.png';
        }
        // time 값을 증가시키고 4초 후에 다시 함수를 호출
        setTimeout(function(){
            time1++;
            if (time1 > 5) { // time 값이 5을 초과하면 다시 1로 설정
                time1 = 1;
            }
            changeImage1(); // 함수를 재귀적으로 호출하여 반복
        }, 5000);
    }

	function changeImage2() {
        if(time2 == 1){
            mainImg2.src = '/resources/upload/profile/main1.png';
        } else if(time2 == 2){
            mainImg2.src = '/resources/upload/profile/main2.png';
        } else if(time2 == 3){
            mainImg2.src = '/resources/upload/profile/main3.png';
        } else if(time2 == 4){
            mainImg2.src = '/resources/upload/profile/main4.png';
        } 
        // time 값을 증가시키고 4초 후에 다시 함수를 호출
        setTimeout(function(){
            time2++;
            if (time2 > 4) { // time 값이 5을 초과하면 다시 1로 설정
                time2 = 1;
            }
            changeImage2(); // 함수를 재귀적으로 호출하여 반복
        }, 5000);
    }

	function changeImage3() {
        if(time3 == 1){
            mainImg3.src = '/resources/upload/profile/board.png';
        } else if(time3 == 2){
            mainImg3.src = '/resources/upload/profile/board2.png';
        } else if(time3 == 3){
            mainImg3.src = '/resources/upload/profile/board3.png';
        }
        // time 값을 증가시키고 4초 후에 다시 함수를 호출
        setTimeout(function(){
            time3++;
            if (time3 > 3) { 
                time3 = 1;
            }
            changeImage3(); // 함수를 재귀적으로 호출하여 반복
        }, 5000);
    }

	function changeImage4() {
        if(time4 == 1){
            mainImg4.src = '/resources/upload/profile/search.png';
        } else if(time4 == 2){
            mainImg4.src = '/resources/upload/profile/search2.png';
        }
        // time 값을 증가시키고 4초 후에 다시 함수를 호출
        setTimeout(function(){
            time4++;
            if (time4 > 2) { // time 값이 5을 초과하면 다시 1로 설정
                time4 = 1;
            }
            changeImage4(); // 함수를 재귀적으로 호출하여 반복
        }, 5000);
    }

	function changeImage5() {
        if(time5 == 1){
            mainImg5.src = '/resources/upload/profile/my1.png';
        } else if(time4 == 2){
            mainImg5.src = '/resources/upload/profile/my2.png';
        }else if(time4 == 3){
            mainImg5.src = '/resources/upload/profile/my3.png';
        }
        // time 값을 증가시키고 4초 후에 다시 함수를 호출
        setTimeout(function(){
            time5++;
            if (time5 > 3) { // time 값이 5을 초과하면 다시 1로 설정
                time5 = 1;
            }
            changeImage5(); // 함수를 재귀적으로 호출하여 반복
        }, 5000);
    }

    // 최초에 함수 호출
    changeImage1();
    changeImage2();
    changeImage3();
    changeImage4();
	changeImage5();

});