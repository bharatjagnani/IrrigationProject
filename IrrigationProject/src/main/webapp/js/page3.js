$(document).ready(function(){
	$('#menu1').click(function() {
		$('#menutab1').removeClass('active');
		$('#menutab2').addClass('active');
		$('#tab1').addClass('hide');
		$('#tab2').toggleClass('hide');
	});
	
	$('#home').click(function() {
		$('#menutab2').removeClass('active');
		$('#menutab1').addClass('active');
		$('#tab2').addClass('hide');
		$('#tab1').removeClass('hide');
	});
	
	$('#legalApp').click(function() {
		$('#legalForm').removeClass('hide');
		$('#illegalForm').addClass('hide');
	});
	
	$('#illegalApp').click(function() {
		$('#illegalForm').removeClass('hide');
		$('#legalForm').addClass('hide');
	});
	
});