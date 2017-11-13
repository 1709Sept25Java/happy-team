<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Suggestions</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<style>
body {
	background:
		url("https://wallpaperclicker.com/storage/wallpaper/Beer-Fest-55846404.jpg")
		no-repeat center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}

#box {
	top: 300px;
	padding: 20px;
	padding-bottom: 45px;
	border-radius: 20px;
	align: center;
}
</style>
</head>

<body>
	<div id="box" style="width: 1000px; margin: 0 auto;">
		<h3 style="color: #F1D744;">Venue Suggestion</h3>

		<form id="suggestForm" action="suggest" method="post">

			<input name="venueName" placeholder="venueName"> <input
				name="venueAddress" placeholder="venueAddress"> <input
				name="venuePhone" placeholder="venuePhone">

			<h3 style="color: #F1D744;">Deals Suggestion</h3>
			<div id="div1">
				<input name="dealType1" placeholder="Deal's Type"> <input
					name="description1" placeholder="Description"> <input
					name="price1" placeholder="Price"> <input name="startTime1"
					placeholder="Start Time"> <input name="endTime1"
					placeholder="End Time"> <span id="submitGlyph"
					name="submitGlyph" class="glyphicon glyphicon-plus-sign"></span>
				<div id="nextDeal"></div>
			</div>
			<div id="div2" style="display: none;">
				<input name="dealType2" placeholder="Deal's Type"> <input
					name="description2" placeholder="Description"> <input
					name="price2" placeholder="Price"> <input name="startTime2"
					placeholder="Start Time"> <input name="endTime2"
					placeholder="End Time">

			</div>
			<div id="div3" style="display: none;">
				<input name="dealType3" placeholder="Deal's Type"> <input
					name="description3" placeholder="Description"> <input
					name="price3" placeholder="Price"> <input name="startTime3"
					placeholder="Start Time"> <input name="endTime3"
					placeholder="End Time">
			</div>
			<input name="submit" type="submit" value="Get Happy">
		</form>

	</div>
</body>
<script>
document.getElementById("submitGlyph").addEventListener("click", addInput);
var counter = 1;
var limit = 4;
function addInput() {
	console.log(document.getElementById("div1"));
	console.log(document.getElementById("div2"));
	console.log(document.getElementById("div3"));

	if (counter == limit) {
		alert("you have reached the limit of adding deals")
		console.log("working");
	} else {
		if (counter == 2) {
			document.getElementById("div2").removeAttribute("style");
			console.log("ok");

		} else if (counter == 3) {
			document.getElementById("div3").removeAttribute("style");
			console.log("ok2");
		}
		counter++;
		// 			var newdiv = document.createElement('div');
		// 			newdiv.innerHTML = '<input id="dealType" placeholder="Deal\'s Type"> <input id="description" placeholder="Description"> <input id="price" placeholder="Price"> <input id="startTime" placeholder="Start Time"> <input id="endTime" placeholder="End Time"> ';
		// 			document.getElementById(divName).appendChild(newdiv);

	}
}

</script>
</html>
