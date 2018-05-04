
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Failure</title>
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
<link rel="stylesheet"
	href="bootstrap\css\font-awesome-4.7.0\css\font-awesome.css">
<link rel="stylesheet" type="text/css" href="bootstrap\css\css.css" />
<link rel="stylesheet" href="bootstrap\css\button.css">
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
	font-size: 20px;
	padding-left: 0;
	margin-left: 0;
	margin-bottom: 15px;
}
</style>
</head>
<body>
	<script src="jquery-1.8.3.js">
		
	</script>

	<script src="bootstrap/js/bootstrap.js">
		
	</script>

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
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/StudentEnrollmentWithStruts">主页</a></li>
				<li><a href="signup.jsp">注册</a></li>
				<li class="active"><a href="login.jsp">登录</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">更多<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">联系我们</a></li>
						<li class="divider"></li>
						<li><a href="#">更多内容</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.nav-collapse -->
	</div>

	<!-- 
	<legend>Student Enrollment Login Success</legend>
	 -->
	<div class="col-lg-6 col-lg-offset-3">
		<div class="well">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="col-md-9 column">
							<div class="col-md-10 column">
								<h1 class="page-header">
									<i class="fa fa-warning"></i>&nbsp;登录失败<small>&nbsp;&nbsp;&nbsp;</small>

									<!-- 载入左侧菜单指向的jsp（或html等）页面内容 -->
									<div id="content">

										<h1></h1>
								</h1>

								<p class="tittle">请注意：</p>
								<br/>
								<div class="content">
									<p>您的账户名或登录密码有错误，请重新输入。</p>
								</div>
								<span class="button-wrap"> <a
									href="login.jsp" class="button button-pill ">返回登录页面&nbsp;<i
										class="fa fa-arrow-right"></i></a>
								</span>
								
								
							</div>

						</div>

					</div>

				</div>
			</div>
		</div>
	</div>
		<!-- <div class="panel panel-danger">
		<div class="panel-heading">
			<h3 class="panel-title">您的登录密码有误，无法登入系统</h3>
		</div>
		<div class="panel-body">
			<div class="alert alert-dismissable alert-danger">
				<button type="button" class="close" data-dismiss="alert">×</button>
				<strong>oh不！！</strong> 请您重新输入再试
			</div>
		</div>
		<div></div>
		<div></div>
		<a class="btn btn-primary" href="login.jsp">点击跳转进入登录页面</a>
	</div> -->
</body>
</html>