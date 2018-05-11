<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="bootstrap\css\font-awesome-4.7.0\css\font-awesome.css">
<link rel="stylesheet" href="css/index.css">
<link id="bs-css" href="css/bootstrap-cerulean.min.css" rel="stylesheet">
<link
	href='bootstrap/bower_components/responsive-tables/responsive-tables.css'
	rel='stylesheet'>
<link rel="stylesheet" href="bootstrap\css\button.css">
<title>Insert title here</title>
<style>
.subtotals {
	font-family: 'Raleway', sans-serif;
	font-size: 20px;
	padding-left: 0;
	margin-bottom: 10px;
}
</style>
<style>
.itemform-left {
	font-family: 'Raleway', sans-serif;
	font-size: 20px;
	padding-left: 0;
	margin-bottom: 15px;
	text-alient: left;
}
</style>
<style>
.itemform-right {
	font-family: 'Raleway', sans-serif;
	font-size: 20px;
	padding-left: 0;
	margin-bottom: 15px;
	text-alient: right;
}
</style>
</head>
<body>
	<div>
		<ul class="breadcrumb">
			<li><a href="#">个人主页</a></li>
			<li><a href="#">网站资金流水</a></li>
		</ul>
	</div>
	<div class="col-lg-5">
		<div class="well">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="col-md-9 column">
							<div class="col-md-8 column">
								<h1 class="page-header">
									本月收入<!-- <small>&nbsp;&nbsp;&nbsp;欢迎来到词汇量测评</small> -->
								</h1>

								<div class="box-content">

									<div class="subtotals">
										<div>
											<div class="itemform-left col-md-6">
												<strong>商品名称</strong>
											</div>
											<div class="itemform-right col-md-6">
												<strong>商品成交额</strong>
											</div>
										</div>
										<div>
											<div class="itemform-left col-md-6">大作文批改</div>
											<div class="itemform-right col-md-6">￥ 100.00</div>
										</div>
										<div>
											<div class="itemform-left col-md-6">小作文批改</div>
											<div class="itemform-right col-md-6">￥ 80.00</div>
										</div>
										<HR align=center width="100%" color=#987cb9 SIZE=3>
										<div
											class="a-row a-size-medium a-spacing-block-top grand-total-row a-color-price">
											<div class="itemform-left col-md-6">
												<strong>订单总计：</strong>
											</div>
											<div class="itemform-right col-md-6">
												<strong>￥ 180.00</strong>
											</div>
										</div>
										<div align="right">
											<span class="button-wrap"> <a href="VTest.jsp"
												class="button button-pill ">查看订单列表&nbsp;<i
													class="fa fa-arrow-right"></i></a>
											</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="col-lg-5">
		<div class="well">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="col-md-9 column">
							<div class="col-md-8 column">
								<h1 class="page-header">
									本月教师工资流水<!-- <small>&nbsp;&nbsp;&nbsp;欢迎来到词汇量测评</small> -->
								</h1>

								<div class="box-content">

									<div class="subtotals">
										<div>
											<div class="itemform-left col-md-6">
												<strong>教师</strong>
											</div>
											<div class="itemform-right col-md-6">
												<strong>作文批改收入</strong>
											</div>
										</div>
										<div>
											<div class="itemform-left col-md-6">屁桃</div>
											<div class="itemform-right col-md-6">￥ 40.00</div>

										</div>
										<div>
											<div class="itemform-left col-md-6">梨子</div>
											<div class="itemform-right col-md-6">￥ 40.00</div>

										</div>
										<HR align=center width="100%" color=#987cb9 SIZE=3>
										<div
											class="a-row a-size-medium a-spacing-block-top grand-total-row a-color-price">
											<div class="itemform-left col-md-6">
												<strong>支付工资总计：</strong>
											</div>
											<div class="itemform-right col-md-6">
												<strong>￥ 80.00</strong>
											</div>
										</div>
										<div align="right">
											<span class="button-wrap"> <a href="VTest.jsp"
												class="button button-pill ">查看往月教师工资表&nbsp;<i
													class="fa fa-arrow-right"></i></a>
											</span>
										</div>
									</div>
									<!-- <table
						class="table table-striped table-bordered bootstrap-datatable ">
						<thead>
							<tr>
								<th>商品类型</th>
								<th>金额</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>小作文批改</td>
								<td>100</td>
							</tr>
							<tr>
								<td>大作文批改</td>
								<td>180</td>
							</tr>
							<tr>
								<td>总计</td>
								<td>280</td>
							</tr>
							
						</tbody>
					</table> -->
								</div>


							</div>

						</div>

					</div>

				</div>
			</div>
		</div>
	</div>


	<!-- CSS goes in the document HEAD or added to your external stylesheet -->


	<!-- Table goes in the document BODY -->
	<script
		src="bootstrap\bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- library for cookie management -->
	<script src="js/jquery.cookie.js"></script>
	<!-- calender plugin -->
	<script src='bootstrap\bower_components/moment/min/moment.min.js'></script>
	<script
		src='bootstrap\bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
	<!-- data table plugin -->
	<script src='js/jquery.dataTables.min.js'></script>


	<!-- plugin for gallery image view -->
	<script
		src="bootstrap\bower_components/colorbox/jquery.colorbox-min.js"></script>
	<!-- library for making tables responsive -->
	<script
		src="bootstrap\bower_components/responsive-tables/responsive-tables.js"></script>
	<!-- tour plugin -->
	<!-- star rating plugin -->
	<script src="js/jquery.raty.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script src="js/jquery.iphone.toggle.js"></script>
	<!-- autogrowing textarea plugin -->
	<script src="js/jquery.autogrow-textarea.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="js/jquery.history.js"></script>
	<!-- application script for Charisma demo -->
	<script src="js/charisma.js"></script>


	<script src="JS/Order.js" type="text/javascript"></script>
</body>

</html>