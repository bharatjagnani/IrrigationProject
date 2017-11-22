$(document).ready(function(){
	$('select').on('change', function (e) {
    var optionSelected = $("option:selected", this);
    var valueSelected = this.value;
    if(valueSelected == "other") {
		$('#other_season').removeClass('hide');
		$('#other_season').addClass('show');
	}
	else
		$('#other_season').addClass('hide');
	});		
});