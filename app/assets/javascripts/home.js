$(document).ready(function(){
	$("#modal-link").click(function(){
		$("#modal-background").fadeIn();
	});

	$(".close").click(function(){
		$("#modal-background").fadeOut();
	});
});