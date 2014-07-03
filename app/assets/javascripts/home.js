

$(document).ready(function() {

	$('#search-button').on('click', function(event) {

		// event.preventDefault();
		console.log("button-pressed");
		var search_terms = $("#search-box").val();
		if (search_terms !== "") {
			console.log(search_terms);
			$("#search-box").val("");
		};
	});
});