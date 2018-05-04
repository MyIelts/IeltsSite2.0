<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="bootstrap\css\css.css" />
<link rel="stylesheet" href="bootstrap\css\button.css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="WebContent/assets/css/styles.css">
<link id="bs-css" href="boostrap/css/bootstrap-cerulean.min.css"
	rel="stylesheet">
<style>
body {
	height: 100%;
	margin: 0;
}
</style>

<style>
.tittle {
	font-family: 'Raleway', sans-serif;
	font-weight: bold;
	font-size: 25px;
	padding-left: 0;
	margin-left: 0;
}
</style>

<style>
.content {
	font-family: 'Raleway', sans-serif;
	font-weight: lighter;
	font-size: 16px;
	padding-left: 0;
	margin-left: 0;
	margin-bottom: 15px;
}
</style>

</head>
<body>
	<div class="navbar navbar-default">

		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-responsive-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>

		<div class="navbar-collapse collapse navbar-responsive-collapse">
			<form class="navbar-form navbar-right">
				<input type="text" class="form-control" placeholder="Search">
			</form>
			<ul class="nav navbar-nav navbar-left">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">能力测评<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">词汇量测试</a></li>
						<li class="divider"></li>
						<li><a href="#">听力等级测试</a></li>
					</ul></li>

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">写作练习<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">分Task写作练习</a></li>
						<li class="divider"></li>
						<li><a href="#">分话题写作练习</a></li>
					</ul></li>
				<li><a href="listening">听力练习</a></li>

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">口语练习<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">真题模拟练习</a></li>
						<li class="divider"></li>
						<li><a href="#">分话题练习</a></li>
					</ul></li>

			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="StudentEnrollmentWithStruts">主页</a></li>
				<s:if test="#session.user=null">
					<li><a href="signup-input">注册</a></li>
					<li><a href="login-input">登录</a></li>
				</s:if>
				<s:else>
					<li><a href="logout-input">退出登录</a></li>
				</s:else>

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">更多<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">联系我们</a></li>
						<li class="divider"></li>
						<li><a href="#">更多内容</a></li>
					</ul></li>
			</ul>
		</div>

	</div>

	<div class="col-lg-6 col-lg-offset-3">
		<div class="well">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="col-md-9 column">
							<div class="creditCardForm">
								<h2 class="page-header">确认订单信息</h2>
								<div class="box-content">
									<table
										class="table table-striped table-bordered bootstrap-datatable datatable responsive">
										<thead>
											<tr>
												<th>商品</th>
												<th>单价</th>
												<th>数量</th>
												<th>小计</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>作文细致批改</td>
												
												<td><s:property value="#parameters.sum" /> </td>
												<td>1</td>
												<td><s:property value="#parameters.sum" /> </td>
											</tr>
										</tbody>
									</table>
								</div>
							
								<div style="text-align: right;" id="pay-now">
									<a href="Order_Payment.jsp" ><button type="submit"
										class="btn btn-primary" style="height: 40px; width: 220px;"
										id="triggerBtn">确定无误，继续</button></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script src="jquery-1.8.3.js">
		
	</script>

	<script src="bootstrap/js/bootstrap.js"></script>

	<script>
		function tz() {
			window.location.href = '目标网址';
		}
	</script>
</body>
</html>
