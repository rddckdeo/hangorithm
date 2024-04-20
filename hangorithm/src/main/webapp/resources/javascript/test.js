function childPage(){
	let width = 600;
	let height = 600;
	let left = (screen.width - width) / 2;
	let top = (screen.height - height) / 2;
	
	let childWindow = window.open("/test2.do","_blank", "width=" + width + ", height=" + height + ", left=" + left + ", top=" + top);
}

function sendData(){
	let inputData = document.getElementById("dataInput").value;
	window.opener.postMessage(inputData,"*");
	window.close();
}

window.addEventListener("message",function(event){
    let receivedData = event.data;
    document.getElementById("receivedData").value = receivedData;

})