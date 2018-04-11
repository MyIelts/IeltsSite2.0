<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
<link rel="stylesheet"
	href="bootstrap\css\font-awesome-4.7.0\css\font-awesome.css">
<link rel="stylesheet" type="text/css" href="bootstrap\css\css.css" />
<link rel="stylesheet" href="bootstrap\css\button.css">
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
	font-size: 20px;
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
							<div class="col-md-10 column">
								<h1 class="page-header">
									<i class="fa fa-spinner fa-pulse"></i>&nbsp;听力等级测评<small>&nbsp;&nbsp;&nbsp;欢迎来到听力等级测评</small>

									<!-- 载入左侧菜单指向的jsp（或html等）页面内容 -->
									<div id="content">

										<h1></h1>
								</h1>

								<p class="tittle">测评说明：</p>
								<br/>
								<div class="content">
									<p>本次听力等级测评将花费您10-15分钟的时间。</p>
									<p>为得到客观的听力等级测评结果，请勿在测评过程中使用词典。</p>
									<p>本测试仅供参考。</p>
								</div>
								<span class="button-wrap"> <a
									href="LTest.jsp" class="button button-pill ">开始测评&nbsp;<i
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

	<!-- /.nav-collapse -->

	<!-- <div class="container">
		<div class="jumbotron">
			<div>
				<h1>#</h1>
				<p>To get started, you need to enter your details to enroll with
					us. Or login to access your details, if you are already enrolled.</p>
			</div>

			<a class="btn btn-primary" href="signup-input">Signup ?</a> <a
				class="btn btn-primary" href="login-input">Login ?</a>
		</div>

		<div></div>
	</div> -->
	<script src="jquery-1.8.3.js">
		
	</script>

	<script src="bootstrap/js/bootstrap.js">
		
	</script>
	<script>
		function tz() {
			window.location.href = '目标网址';
		}
	</script>
	<script>
		$(function() {
			$("#audioId").audioPlayer();
		})

		<script src="jquery-1.8.3.js">
	</script>
	<script src="audioplayer.js">
		
	</script>
</body>
</html>
