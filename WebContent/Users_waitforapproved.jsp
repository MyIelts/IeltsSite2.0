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
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="box col-md-12">
			<div class="box-inner">
				<div id="main-container">
					<div class="container-fluid"></div>
				</div>
				<div class="col-md-10 column">


					<div>
						<ul class="breadcrumb">
							<li><a href="#">个人主页</a></li>
							<li><a href="#">写作任务列表</a></li>
							<li><a href="#">待分配任务列表</a></li>
						</ul>
					</div>
					<table
						class="table table-striped table-bordered bootstrap-datatable datatable responsive">
						<thead>
							<tr>
								<th>用户Id</th>
								<th>教师用户名</th>
								<th>申请日期</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>123456</td>
								<td>David R</td>
								<td class="center">2012/01/01</td>
								<td class="center"><a class="btn btn-success" href="#">
										<i class="fa fa-search fa-fw"></i> 审核
								</a> </td>
							</tr>
							<tr>
								<td>123456</td>
								<td>Chris Jack</td>
								<td class="center">2012/01/01</td>
								<td class="center"><a class="btn btn-success" href="#">
										<i class="fa fa-search fa-fw"></i> 审核
								</a> </td>
							</tr>
							<tr>
								<td>123456</td>
								<td>Jack Chris</td>
								<td class="center">2012/01/01</td>
								<td class="center"><a class="btn btn-success" href="#">
										<i class="fa fa-search fa-fw"></i> 审核
								</a></td>
							</tr>
							<tr>
								<td>123456</td>
								<td>Muhammad Usman</td>
								<td class="center">2012/01/01</td>
								<td class="center"><a class="btn btn-success" href="#">
										<i class="fa fa-search fa-fw"></i> 审核
								</a></td>
							</tr>
							<tr>
								<td>123456</td>
								<td>Sheikh Heera</td>
								<td class="center">2012/02/01</td>
								
								<td class="center"><a class="btn btn-success" href="#">
										<i class="fa fa-search fa-fw"></i> 审核
								</a> </td>
							</tr>
							<tr>
								<td>123456</td>
								<td>Helen Garner</td>
								<td class="center">2012/02/01</td>
								<td class="center"><a class="btn btn-success" href="#">
										<i class="fa fa-search fa-fw"></i> 审核
								</a> </td>
							</tr>
							<tr>
								<td>123456</td>
								<td>Saruar Ahmed</td>
								<td class="center">2012/03/01</td>				
								<td class="center"><a class="btn btn-success" href="#">
										<i class="fa fa-search fa-fw"></i> 审核
								</a> </td>
							</tr>
							<tr>
								<td>123456</td>
								<td>Ahemd Saruar</td>
								<td class="center">2012/03/01</td>								
								<td class="center"><a class="btn btn-success" href="#">
										<i class="fa fa-search fa-fw"></i> 审核
								</a> </td>
							</tr>
							<tr>
								<td>123456</td>
								<td>Habib Rizwan</td>
								<td class="center">2012/01/21</td>								
								<td class="center"><a class="btn btn-success" href="#">
										<i class="fa fa-search fa-fw"></i> 审核
								</a> </td>
							</tr>
							<tr>
								<td>123456</td>
								<td>Rizwan Habib</td>
								<td class="center">2012/01/21</td>								
								<td class="center"><a class="btn btn-success" href="#">
										<i class="fa fa-search fa-fw"></i> 审核
								</a></td>
							</tr>
							<tr>
								<td>123456</td>
								<td>Amrin Sana</td>
								<td class="center">2012/08/23</td>								
								<td class="center"><a class="btn btn-success" href="#">
										<i class="fa fa-search fa-fw"></i> 审核
								</a></td>
							</tr>
							<tr>
								<td>123456</td>
								<td>Sana Amrin</td>
								<td class="center">2012/08/23</td>							
								<td class="center"><a class="btn btn-success" href="#">
										<i class="fa fa-search fa-fw"></i> 审核
								</a> </td>
							</tr>
							<tr>
								<td>123456</td>
								<td>Ifrah Jannat</td>
								<td class="center">2012/06/01</td>								
								<td class="center"><a class="btn btn-success" href="#">
										<i class="fa fa-search fa-fw"></i> 审核
								</a></td>
							</tr>
							<tr>
								<td>123456</td>
								<td>Jannat Ifrah</td>
								<td class="center">2012/06/01</td>								
								<td class="center"><a class="btn btn-success" href="#">
										<i class="fa fa-search fa-fw"></i> 审核
								</a></td>
							</tr>
							<tr>
								<td>123456</td>
								<td>Robert</td>
								<td class="center">2012/03/01</td>								
								<td class="center"><a class="btn btn-success" href="#">
										<i class="fa fa-search fa-fw"></i> 审核
								</a> </td>
							</tr>
							
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!--/span-->

	</div>



	<!-- CSS goes in the document HEAD or added to your external stylesheet -->


	<!-- Table goes in the document BODY -->
	<script src="bootstrap\bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- library for cookie management -->
	<script src="js/jquery.cookie.js"></script>
	<!-- calender plugin -->
	<script src='bootstrap\bower_components/moment/min/moment.min.js'></script>
	<script src='bootstrap\bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
	<!-- data table plugin -->
	<script src='js/jquery.dataTables.min.js'></script>


	<!-- plugin for gallery image view -->
	<script src="bootstrap\bower_components/colorbox/jquery.colorbox-min.js"></script>
	<!-- library for making tables responsive -->
	<script src="bootstrap\bower_components/responsive-tables/responsive-tables.js"></script>
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