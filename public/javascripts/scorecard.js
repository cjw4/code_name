$(document).ready(function() {
	$(".holeInput").bind("blur", function() {
		var i = 1;
		var total = 0;
		for (i = 1; i <= 18; i++) {
			
			var holeInput = $("#scorecard_hole"+i).val();
			
			if (!isNaN(holeInput)) {
				holeInput = parseInt(holeInput);
				total = total + holeInput;
				score = total - 54;
				
				if (score > 0) score = "+" + score;	
				else if (score == 0) score = "E";
				else score = score;
			}
		}
		$("#scorecard_total").val(total);
		$("#scorecard_score").val(score);
	});
});