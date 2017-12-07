 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page contentType="text/html; charset=UTF-8"%>
	<meta charset =UTF-8></meta>
 <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%-- 
<%@ include file="/WEB-INF/templates/Page3.html" %>
 --%>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!-- Latest compiled JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="/js/page3.js"></script>
</head>
<body style="background-image: url('/images/background.jpg');background-size: cover;">
	<%@ include file="/WEB-INF/jsp/header.jsp" %>
	<!-- container start-->
	<div class="container">
		<div class="jumbotron" style="background: border-box;">
			<div class="myheader text-center"><h2 style="color:white;"><spring:message code="label.header"/></h2></div>
		</div>
		<div class="row">
			<div class="col-xs-12" align="center">
				<div class="radio">
					<label style="color:white; font-weight:bold;">
						<input id="legalApp" type="radio" name="application_type"><spring:message code="label.legalapp"/>
					</label>
					<label style="color:white; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;
						<input id="illegalApp" type="radio" name="application_type"><spring:message code="label.illegalapp"/>
					</label>
				</div>
			</div>
		</div>
	
		<!-- Legal Application section start-->
		<div class="row hide" id="legalForm">
			<div class="col-sm-5" align="center">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#home" style="color:white;background-color:#ff00;font-weight:bold;"><spring:message code="label.section"/> 1</a></li>
					<li><a class="btn disabled" data-toggle="tab" href="#menu1" style="color:white;background-color:#ff00;font-weight:bold;"><spring:message code="label.section"/> 2</a></li>
				</ul>
				<div class="tab-content">
					<div id="home" class="tab-pane fade in active">
						<table class="table table-bordered text-center" style="background:white; width:auto;">
							<tr>
								<td rowspan="2"><spring:message code="label.srno"/></td>
								<td rowspan="2"><spring:message code="label.subdivisionnumber"/></td>
								<td rowspan="2"><spring:message code="label.applieddate"/></td>
								<td rowspan="2"><spring:message code="label.residence"/></td>
								<td rowspan="2"><spring:message code="label.landbelongstowhichvillage"/></td>
								<td rowspan="2"><spring:message code="label.landsurveynumber"/></td>
								<td colspan="2"><spring:message code="label.totalplotarea"/></td>
								<td rowspan="2"><spring:message code="label.owner"/></td>
								<td rowspan="2"><spring:message code="label.canalkmnumber"/></td>
							</tr>
							<tr>
								<td><spring:message code="label.hectare"/></td>
								<td><spring:message code="label.aar"/></td>
							</tr>
							<tr>
								<td>1</td>
								<td><input type="text" size="5"/></td>
								<td><input type="text" size="5"/></td>
								<td><input type="text" size="4"/></td>
								<td><input type="text" size="4"/></td>
								<td><input type="text" size="4"/></td>
								<td><input type="text" size="4"/></td>
								<td><input type="text" size="5"/></td>
								<td><input type="text" size="5"/></td>
								<td><input type="text" size="5"/></td>
							</tr>
						</table>
						<div class="buttons">
							<button name="save"><spring:message code="label.save"/></button>
							<button name="saveandnext"><spring:message code="label.saveandnext"/></button>
							<button name="reset"><spring:message code="label.reset"/></button>
							<button name="cancel"><spring:message code="label.cancel"/></button>
						</div>
					</div>
					<div id="menu1" class="tab-pane fade">
						<table class="table table-bordered text-center" style="background:white; width:auto; margin-top: -50px;">
							<tr>
								<td rowspan="2"><spring:message code="label.subcanal"/></td>
								<td colspan="2"><spring:message code="label.watersupplyapprovedarea"/></td>
								<td rowspan="2"><spring:message code="label.croptypeforwhichwaterisneeded"/></td>
								<td rowspan="2"><spring:message code="label.noofmonthswaterneeded"/></td>
								<td rowspan="2"><spring:message code="label.datefromwhichwaterneeded"/></td>
								<td rowspan="2"><spring:message code="label.lastyearcroptype"/></td>
								<td rowspan="2"><spring:message code="label.rateofwaterperacre"/></td>
								<td colspan="2"><spring:message code="label.approvedarea"/></td>
								<td rowspan="2"><spring:message code="label.secondaryofficerofcanalremarksanddate"/></td>
								<td rowspan="2"><spring:message code="label.executiveengineerremarks"/></td>
							</tr>
							<tr>
								<td><spring:message code="label.hectare"/></td>
								<td><spring:message code="label.aar"/></td>
								<td><spring:message code="label.hectare"/></td>
								<td><spring:message code="label.aar"/></td>
							</tr>
							<tr>
								<td><input type="text" size="5"/></td>
								<td><input type="text" size="2"/></td>
								<td><input type="text" size="2"/></td>
								<td><input type="text" size="5"/></td>
								<td><input type="text" size="3"/></td>
								<td><input type="text" size="5"/></td>
								<td><input type="text" size="5"/></td>
								<td><input type="text" size="5"/></td>
								<td><input type="text" size="2"/></td>
								<td><input type="text" size="2"/></td>
								<td><input type="text" size="5"/></td>
								<td><input type="text" size="5"/></td>
							</tr>
						</table>			
						<div class="buttons">
							<button name="save"><spring:message code="label.save"/></button>
							<button name="submit"><spring:message code="label.submit"/></button>
							<button name="reset"><spring:message code="label.reset"/></button>
							<button name="cancel"><spring:message code="label.cancel"/></button>
							<button name="addNewRow"><spring:message code="label.addmorerecords"/></button>
						</div>
					</div>			
				</div>
			</div>
		</div>
		<!-- Legal Application section end-->

		<!-- Illegal Application section start-->
		<div class="row hide" id="illegalForm">
			<div class="col-sm-3" align="center">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#illegal_home" style="color:white;background-color:#ff00;font-weight:bold;"><spring:message code="label.section"/> 1</a></li>
					<li><a class="btn disabled" data-toggle="tab" href="#illegal_menu1" style="color:white;background-color:#ff00;font-weight:bold;"><spring:message code="label.section"/> 2</a></li>
				</ul>
				<div class="tab-content">
					<div id="illegal_home" class="tab-pane fade in active">
						<table class="table table-bordered text-center" style="background:white; width:auto;">
							<tr>
								<td rowspan="2"><spring:message code="label.srno"/></td>
								<td rowspan="2"><spring:message code="label.nameofoccupancy"/></td>
								<td rowspan="2"><spring:message code="label.nameofvillage"/></td>
								<td rowspan="2"><spring:message code="label.plotsrno"/></td>
								<td rowspan="2"><spring:message code="label.phatakramank"/></td>
								<td rowspan="2"><spring:message code="label.crop"/></td>
							</tr>
							<tr>
							</tr>
							<tr>
								<td>1</td>
								<td><input type="text" size="5"/></td>
								<td><input type="text" size="4"/></td>
								<td><input type="text" size="4"/></td>
								<td><input type="text" size="5"/></td>
								<td><input type="text" size="3"/></td>
							</tr>
						</table>
						<div class="buttons">
								<button name="save"><spring:message code="label.save"/></button>
								<button name="saveandnext"><spring:message code="label.saveandnext"/></button>
								<button name="reset"><spring:message code="label.reset"/></button>
								<button name="cancel"><spring:message code="label.cancel"/></button>
							</div>
					</div>
					<div id="illegal_menu1" class="tab-pane fade">
						<br/>
						<table class="table table-bordered text-center" style="background:white; width:auto;">
							<tr>
								<td colspan="4"><spring:message code="label.panchanamasreasonandarea"/></td>
								<td rowspan="2"><spring:message code="label.waterusagedate"/></td>
								<td rowspan="2"><spring:message code="label.panchanamaareasinspectiondate"/></td>
								<td rowspan="2"><spring:message code="label.panchanamaregistrationdate"/></td>
								<td rowspan="2"><spring:message code="label.remarks"/></td>
							</tr>
							<tr>
								<td><spring:message code="label.withoutsequence"/></td>
								<td><spring:message code="label.withoutapplication"/></td>
								<td><spring:message code="label.waterwastage"/></td>
								<td><spring:message code="label.illegaluse"/></td>
							</tr>
							<tr>
								<td><input type="text" size="3"/></td>
								<td><input type="text" size="3"/></td>
								<td><input type="text" size="3"/></td>
								<td><input type="text" size="3"/></td>
								<td><input type="text" size="5"/></td>
								<td><input type="text" size="5"/></td>
								<td><input type="text" size="5"/></td>
								<td><input type="text" size="5"/></td>
							</tr>
						</table>
						<div class="buttons">
							<button name="save"><spring:message code="label.save"/></button>
							<button name="submit"><spring:message code="label.submit"/></button>
							<button name="reset"><spring:message code="label.reset"/></button>
							<button name="cancel"><spring:message code="label.cancel"/></button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Illegal Application section end-->
	</div>
	<!-- container end-->
</body>
</html>