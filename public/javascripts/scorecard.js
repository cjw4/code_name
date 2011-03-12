$(document).ready(function() {
	$(".holeInput").bind("blur", scorecard);
	
	changeOutputColors();
});

function scorecard() {
	var i = 1;
	var total = 0;
	for (i = 1; i <= 18; i++) {

		var holeInput = $("#scorecard_hole"+i);
		var holeInputValue = holeInput.val();
		holeInputValue = parseInt(holeInputValue);
		
		if (holeInputValue > 3) holeInput.css("color", "blue");
		else if (holeInputValue == 3) holeInput.css("color", "black");
		else holeInput.css("color", "red");
		
		if (!isNaN(holeInputValue)) {		
			total = total + holeInputValue;
			score = total - 54;
			
			if (score > 0) score = "+" + score;
			else if (score == 0) score = "E";
			else score = score;
		}
	}
	$("#scorecard_total").val(total);
	$("#scorecard_score").val(score);
	
	scoreContainer = $("#scorecard_score")
	
	if (score > 0) scoreContainer.css("color", "blue");
	else if (score == "E") scoreContainer.css("color", "black");
	else scoreContainer.css("color", "red");
};

function changeOutputColors() {
	var holeOutput = $(".holeOutput");
	
	for(i=0; i < 18; i++) {
		holeOutputElement = holeOutput[i];
		holeOutputValue = parseInt(holeOutputElement.innerHTML);
		if (holeOutputValue > 3) holeOutputElement.setAttribute("style", "color:blue;");
		else if (holeOutputValue < 3) holeOutputElement.setAttribute("style", "color:red;");
	}
	
	
};