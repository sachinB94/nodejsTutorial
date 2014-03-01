$(document).ready(function() {
	onAddTute();
	onHome();
	onIndexNodejs();
	checkImproveForm();
	checkAddForm();
	removeError();
});

function onAddTute() {
	$("#addTuteButton").on('click',function() {
		if($("#addTuteBlock").attr("class") == "hideIt") {
			$("#addTuteBlock").removeClass("hideIt");
		}
		else {
			$("#addTuteBlock").addClass("hideIt");
		}
	});
}

function onHome() {
	$("#homeButton").on('click',function() {
		window.location.href="index.php";
	});
}

function onIndexNodejs() {
	$("#indexNodejs").on('click',function() {
		window.location.href="index_nodejs.php";
	});
}

function checkImproveForm() {
	$("#improveTuteForm").submit(function(event) {
		removeError();
		var errorField = new Array;							//stored errors in array
		if($("#problem").val() == "") {					//check null condition
			errorField.push("problem");
		}

		if($("#description").val() == "") {
			errorField.push("description");
		}

		if(errorField != "") {											//if error present
			displayError(errorField);						//function to dsplay error
			event.preventDefault();							//prevent form submission
			return false;
		}
	});
}

function displayError(errorField) {
	for(var i=0 ; i<errorField.length ; ++i) {
		$("#" + errorField[i] + "Error").removeClass("hideIt");
		$("#" + errorField[i] + "Error").addClass("showError");
	}
}

function checkAddForm() {
	$("#addTuteForm").submit(function(event) {
		removeError();
		var errorField = new Array;		
		
		var dotPosition = $("#email").val().lastIndexOf(".");
		var atPositionFront = $("#email").val().indexOf("@");
		var atPositionBack = $("#email").val().lastIndexOf("@");
		var spacePostion = $("#email").val().indexOf(" ");
		
		var duplicateAt = atPositionFront != atPositionBack;
		var empty = $("#email").val() == "";
		var space = spacePostion != -1;
		var dotAtRel = $("#email").val().length-dotPosition != 3 && $("#email").val().length-dotPosition != 4;
		
		if (duplicateAt || empty || space || dotAtRel) {
			errorField.push("email");
		}

		if($("#head").val() == "") {					//check null condition
			errorField.push("head");
		}

		if($("#description").val() == "") {
			errorField.push("description");
		}

		if(errorField != "") {											//if error present
			displayError(errorField);						//function to dsplay error
			event.preventDefault();							//prevent form submission
			return false;
		}
	});
}

function displayError(errorField) {
	for(var i=0 ; i<errorField.length ; ++i) {
		$("#" + errorField[i] + "Error").removeClass("hideIt");
		$("#" + errorField[i] + "Error").addClass("showError");
	}
}

function removeError() {
	$(".showError").addClass("hideIt");
	$(".hideIt").removeClass("showError");
}