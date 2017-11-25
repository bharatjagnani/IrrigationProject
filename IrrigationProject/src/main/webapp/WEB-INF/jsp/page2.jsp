 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page contentType="text/html; charset=UTF-8"%>
	<meta charset =UTF-8></meta>
 <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%-- 
<%@ include file="/WEB-INF/templates/Page2.html" %> 
--%>

<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/page2.js"></script>
<style>
select {
	height:30px;
}
</style>
</head>
<body style="background-image: url('/images/background.jpg');background-size: cover;">	
	<%@ include file="/WEB-INF/jsp/header.jsp" %>
	<div class="container">
		<div class="jumbotron" style="background: border-box;">
			<div class="myheader text-center"><h2 style="color:white;"><spring:message code="label.header"/></h2></div>
		</div>
		<div class="row">
			<div class="col-sm-12" align="center">
			<table class="table table-bordered" style="width:fit-content; background:white;">
				<tr>
					<td><spring:message code="label.division"/></td>
					<td>
						<select>
							<option value="">--<spring:message code="label.select"/>--</option>
							<option value="1"><spring:message code="label.dhomirrigationdivisionsatara"/></option>
						</select>
					</td>
				</tr>
				<tr>
					<td><spring:message code="label.subdivision"/></td>
					<td>
						<select>
							<option value="">--<spring:message code="label.select"/>--</option>
							<option value="1"><spring:message code="label.irrigationsubdivisionmasur"/></option>
						</select>
					</td>
				</tr>
				<tr>
					<td><spring:message code="label.branch"/></td>
					<td>
						<select>
							<option value="">--<spring:message code="label.select"/>--</option>
							<option value="1"><spring:message code="label.araphalirrigationmasur3"/></option>
						</select>
					</td>
				</tr>
				<tr>
					<td><spring:message code="label.season"/></td>
					<td>
						<select>
							<option value="">--<spring:message code="label.select"/>--</option>
							<option value="kharif"><spring:message code="label.rabi"/></option>
							<option value="kharif"><spring:message code="label.kharif"/></option>
							<option value="kharif"><spring:message code="label.halfyearly"/></option>
							<option value="kharif"><spring:message code="label.yearly"/></option>
							<option value="other"><spring:message code="label.other"/></option>
						</select>
						<input type="text" class="hide" id="other_season" name="other_season" />
					</td>
				</tr>
				<tr>
					<td><spring:message code="label.year"/></td>
					<td>
						<select>
							<option value="0">--<spring:message code="label.select"/>--</option>
							<%
							for(int i=1978; i<2018; i++)
								out.println("<option value=\""+i+"\">"+i+" - "+(i+1)+"</option>");
							%>
						</select>
					</td>
				</tr>
				<tr>
					<td><spring:message code="label.nameofvillage"/></td>
					<td><input type="text" id="nameOfVillageYear" /></td>
				</tr>
				<tr>
					<td><spring:message code="label.source"/></td>
					<td>
						<select>
							<option value="0">--<spring:message code="label.select"/>--</option>
							<option value="canal"><spring:message code="label.canal"/></option>
							<option value="well"><spring:message code="label.well"/></option>
							<option value="river"><spring:message code="label.river"/></option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="<spring:message code="label.newapp"/>" id="newapp" onclick="location.href='/irrigation/page3';"/>
						<input type="button" value="<spring:message code="label.searchapp"/>" id="search" />
					</td>
				</tr>
			</table>
			</div>			
		</div>
	</div>
</body>
</html>