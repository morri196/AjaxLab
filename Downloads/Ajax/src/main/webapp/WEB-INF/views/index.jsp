<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<h1>Hello World</h1>

<div id="science"></div>


<script>
var request = new XMLHttpRequest();
request.open("GET", "https://dwolverton.github.io/fe-demo/data/computer-science-hall-of-fame.json");
request.send();
	
request.onload = function() {
	//console.log(request.responseText);
	var data = JSON.parse(request.responseText);
	
	console.log(data.complete);
	console.log(data.tiny);
	
	for (var jay of data.complete) {
		renderHTML(jay);
	}
};
	function renderHTML(data) {
		var htmlString = "<p>" + data.firstName + " " + data.lastName 
		+ " " + data.invovation + " " + data.year + "</p>"
		document.getElementById("science").insertAdjacentHTML("beforeend", htmlString);
		}
	
	
	</script>
</body>
</html>