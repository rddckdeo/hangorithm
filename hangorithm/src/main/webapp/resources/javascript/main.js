function mainBoxStatus(data){
	if(data == 1){
		window.location.href="/main/headerChange.do?data=profile";
	}else if(data == 2){
		window.location.href="/main/headerChange.do?data=infoList";
	}else if(data == 3){
		window.location.href="/main/headerChange.do?data=education";
	}else if(data == 4){
		window.location.href="/main/headerChange.do?data=techList";
	}
}