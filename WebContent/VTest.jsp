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
<link rel="stylesheet" href="css/bootstrap.min1.css">

<style>
body {
	height: 100%;
	margin: 0;
}
</style>
<style type="text/css">
.demo {
	padding: 2em 0;
	background: linear-gradient(to right, #2c3b4e, #4a688a, #2c3b4e);
}

.progress {
	height: 25px;
	background: #262626;
	padding: 5px;
	overflow: visible;
	border-radius: 20px;
	border-top: 1px solid #000;
	border-bottom: 1px solid #7992a8;
	margin-top: 50px;
}

.progress .progress-bar {
	border-radius: 20px;
	position: relative;
	animation: animate-positive 2s;
}

.progress .progress-value {
	display: block;
	padding: 3px 7px;
	font-size: 13px;
	color: #fff;
	border-radius: 4px;
	background: #191919;
	border: 1px solid #000;
	position: absolute;
	top: -40px;
	right: -10px;
}

.progress .progress-value:after {
	content: "";
	border-top: 10px solid #191919;
	border-left: 10px solid transparent;
	border-right: 10px solid transparent;
	position: absolute;
	bottom: -6px;
	left: 26%;
}

.progress-bar.active {
	animation: reverse progress-bar-stripes 0.40s linear infinite,
		animate-positive 2s;
}

@
-webkit-keyframes animate-positive { 0% {
	width: 0;
}

}
@
keyframes animate-positive { 0% {
	width: 0;
}
}
</style>

<style>
/*-- 使用 cleafix 清除浮动 -- */
.row1:before, .row1:after {
	content: "";
	display: table;
	clear: both;
}

.half1 {
	float: left;
	min-height: 1px;
	/*-- 设置列的左右间隙 -- */
	padding: 12px;
	text-align: center;
	width: 50%;
	font-family: 'Raleway', sans-serif;
	font-size: 20px;
}

.half2 {
	float: left;
	min-height: 1px;
	/*-- 设置列的左右间隙 -- */
	padding: 12px;
	text-align: left;
	width: 50%;
	font-family: 'Raleway', sans-serif;
	font-size: 18px;
}

/*-- 列的额外内容样式 --*/
[class*='half']>p {
	padding: 0;
	margin: 0;
	text-align: center;
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
							<div class="progress progress-striped">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="60" aria-valuemin="0"
									aria-valuemax="100" style="width: 90%;">
									<span class="sr-only">90% 完成（成功）</span>
								</div>
							</div>
							<div class="row1">
								<div class="half1">
									<p>dddddddddddddddd</p>
								</div>
								<div class="half2">
									<form runat="server">
										<p>
											&nbsp;选择单词正确的含义 <br> <input style="margin: 15px 10px"
												id="r1" name="col" type="radio" runat="server">A:</input> <br>
											<input id="r2" style="margin: 15px 10px" name="col"
												type="radio" runat="server">B:</input> <br> <input
												style="margin: 15px 10px" id="r3" name="col" type="radio"
												runat="server">C:</input><br> <input
												style="margin: 15px 10px 20px 10px" id="r4" name="col"
												type="radio" runat="server">D:</input> <br> <span
												class="button-wrap"> <a
												href="http://www.bootcss.com/" class="button button-pill ">下一题&nbsp;<i
													class="fa fa-arrow-right"></i></a>
											</span>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	</div>
	<div style="text-align: center; clear: both;">
		<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
		<script src="/follow.js" type="text/javascript"></script>
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

	<script runat="server">
	Sub submit(Source As Object, e As EventArgs)
		if r1.Checked=True then
  			 p1.InnerHtml="Your favorite color is red"
		else
  		if r2.Checked=True then
    		 p1.InnerHtml="Your favorite color is green"
  		else
   	  	if r3.Checked=True then
       		p1.InnerHtml="Your favorite color is blue"
     	end if
   		end if
		end if
   End Sub
</script>
</body>
</html>
