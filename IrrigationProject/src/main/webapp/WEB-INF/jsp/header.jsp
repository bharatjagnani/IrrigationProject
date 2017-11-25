<style>
.topnav {
	position: relative;
	z-index: 2;
	font-size: 17px;
	background-color: #5f5f5f;
	color: #f1f1f1;
	width: 100%;
	padding: 0;
	letter-spacing: 1px;
	font-family: "Segoe UI", Arial, sans-serif;
}

.usermenu {
	width:fit-content;
	color:#f1f1f1;
	border:none;
	background-color:#5f5f5f;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$('select').on('change', function (e) {
	    var optionSelected = $("option:selected", this);
	    var valueSelected = this.value;
	    if(valueSelected == "logout") {
			location.href="/logout";
		}
	});		
});
</script>
<div class="topnav">
	<div align="right">
		<select class="usermenu">
			<option value="username">UserName</option>
			<option value="logout">Logout</option>
		</select>
		<a href="?lang=en" style="color:#f1f1f1;"><spring:message code="label.languageenglish"/></a><br/>
		<a href="?lang=ma" style="color:#f1f1f1;"><spring:message code="label.languagemarathi"/></a>
	</div>
</div>