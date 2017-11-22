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
	<div class="jumbotron" style="background-image: url('/images/background_0.jpg');background-size: cover;">
		<div class="myheader text-center"><h2 style="color:white;"><spring:message code="label.header"/></h2></div>
	</div>
	<div class="container">
	
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
	
		<!-- Legal Application section -->
		<div class="row hide" id="legalForm">
			<div class="col-sm-5" align="center">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#home" style="color:white;background-color:#ff00;font-weight:bold;"><spring:message code="label.section"/> 1</a></li>
					<li><a data-toggle="tab" href="#menu1" style="color:white;background-color:#ff00;font-weight:bold;"><spring:message code="label.section"/> 2</a></li>
				</ul>
				<div class="tab-content">
					<div id="home" class="tab-pane fade in active">
						<table class="table table-bordered text-center" style="background:white; width:auto;">
							<tr>
								<td rowspan="2"><spring:message code="label.srno"/></td>
								<td rowspan="2"><spring:message code="label.plotno"/></td>
								<td rowspan="2"><spring:message code="label.totalplotarea"/></td>
								<td colspan="2"><spring:message code="label.panchanama"/></td>
								<td rowspan="2"><spring:message code="label.owner"/></td>
								<td rowspan="2"><spring:message code="label.presentworking"/></td>
								<td rowspan="2"><spring:message code="label.approvedarea"/></td>
							</tr>
							<tr>
								<td><spring:message code="label.km"/></td>
								<td><spring:message code="label.srno"/></td>
							</tr>
							<tr>
								<td>1</td>
								<td><input type="text" size="5"/></td>
								<td><input type="text" size="5"/></td>
								<td><input type="text" size="4"/></td>
								<td><input type="text" size="4"/></td>
								<td><input type="text" size="10"/></td>
								<td><input type="text" size="10"/></td>
								<td><input type="text" size="10"/></td>
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
						<table id="home" class="table table-bordered text-center" style="background:white; width:auto; margin-top: -50px;">
							<tr>
								<td colspan="2"><spring:message code="label.farmcountedarea"/></td>
								<td rowspan="2"><spring:message code="label.crop"/></td>
								<td colspan="2"><spring:message code="label.waterchargeper"/></td>
								<td rowspan="2"><spring:message code="label.perfarmwatercost"/></td>
								<td rowspan="2"><spring:message code="label.perworkercost"/></td>
								<td rowspan="2"><spring:message code="label.localsubtax"/></td>
								<td rowspan="2"><spring:message code="label.remarks"/></td>
							</tr>
							<tr>
								<td>hctr</td>
								<td>Aar</td>
								<td>Rs.</td>
								<td>Paise</td>
							</tr>
							<tr>
							<td><input type="text" size="3"/></td>
							<td><input type="text" size="3"/></td>
							<td><input type="text" size="10"/></td>
							<td><input type="text" size="3"/></td>
							<td><input type="text" size="3"/></td>
							<td><input type="text" size="10"/></td>
							<td><input type="text" size="10"/></td>
							<td><input type="text" size="10"/></td>
							<td><input type="text" size="10"/></td>
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
		<!-- Legal Application section -->

		<!-- Illegal Application section -->
		<div class="row hide" id="illegalForm">
			<div class="col-sm-6" align="center">
				<div id="illegal_home">
					<br/>
					<table class="table table-bordered text-center" style="background:white; width:auto;">
						<tr>
							<td rowspan="2">Sr. No.</td>
							<td rowspan="2">Name of Occupancy</td>
							<td rowspan="2">Name of Village</td>
							<td rowspan="2">Plot Sr. No.</td>
							<td rowspan="2">Crop</td>
							<td colspan="4">Panchanama's Reason and Area</td>
							<td rowspan="2">Water Usage Date</td>
							<td rowspan="2">Panchanama Area's Inspection Date</td>
							<td rowspan="2">Panchanama Registration Date</td>
							<td rowspan="2">Remarks</td>
						</tr>
						<tr>
							<td>Without Squence</td>
							<td>Without Application</td>
							<td>Water Wastage</td>
							<td>Illegal Use</td>
						</tr>
						<tr>
							<td>1</td>
							<td><input type="text" size="5"/></td>
							<td><input type="text" size="4"/></td>
							<td><input type="text" size="4"/></td>
							<td><input type="text" size="5"/></td>
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
						<button name="save"> Save </button>
						<button name="submit"> Submit </button>
						<button name="reset"> Reset </button>
						<button name="cancel"> Cancel </button>
					</div>
				</div>
			</div>
		</div>
		<!-- Illegal Application section -->

	</div>
</body>
</html>