<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>

<head>
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
<link rel="stylesheet"
	href="bootstrap\css\font-awesome-4.7.0\css\font-awesome.css">
<link rel="stylesheet" type="text/css" href="bootstrap\css\css.css" />
<style>
body {
	height: 100%;
	margin: 0;
}
</style>
<style>
.title {
	font-family: 'Raleway', sans-serif;
	font-size: 15px;
	padding-left: 0;
	margin-left: 0;
}
</style>
<style>
.test1 {
	border: 1px solid #ccc !important;
	padding: 14px;
	border-radius: 15px !important;
}
</style>
<style>
ul.testtest {
	width: 840px;
	height: auto;
	list-style-type: none;
	margin: 5px 5px;
	padding: 0;
}

ul.testtest li {
	width: 380px;
	float: left;
	display: inline;
	margin: 15px 5px;
	height: 100px;
}

ul.testtest p {
	overflow: hidden;
}
</style>
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
							<h1 class="page-header">
								<i class="fa fa-cog fa-spin"></i>&nbsp;欢迎来到听力练习模块

								<!-- 载入左侧菜单指向的jsp（或html等）页面内容 -->
							</h1>
							<div class="tittle">
								<p>根据您的测评结果，我们为您显示中级听力练习</p>
								<p>如果您想练习其他等级内容 请选择</p>


								<ul class="sonarmenu">

									<li><a href="displayTopics?levelname=Rookie">初级</a></li>
									<li><a href="displayTopics?levelname=Mediate">中级</a></li>
									<li><a href="displayTopics?levelname=Advanced">中高级</a></li>
									<li><a href="displayTopics?levelname=Elite">高级</a></li>
								</ul>

							</div>
							<hr />



							<s:if test="#parameters.i1=null">
								<div class="test1">
									<ul class="testtest">

										<li class="title"><a href="getListenMaterial?title="><s:property
													value="#parameters.i1" /></a>
											<div class="fr ml10 menu_detail">
												<p class="intro">
													<s:property value="#parameters.t1" />
												</p>
											</div></li>
										<li class="title"><a href="#"><s:property
													value="#parameters.i2" /></a>
											<div class="fr ml10 menu_detail">
												<p class="intro">
													<s:property value="#parameters.t2" />
												</p>
											</div></li>

										<li class="title"><a href="#"><s:property
													value="#parameters.i3" /></a>
											<div class="fr ml10 menu_detail">
												<p class="intro">
													<s:property value="#parameters.t3" />
												</p>
											</div></li>
										<li class="title"><a href="#"><s:property
													value="#parameters.i4" /></a>
											<div class="fr ml10 menu_detail">
												<p class="intro">
													<s:property value="#parameters.t4" />
												</p>
											</div></li>
										<div style="clear: both;"></div>

									</ul>


								</div>
							</s:if>
							<s:else>
								<%
									String i1 = "";
										String i2 = "";
										String i3 = "";
										String i4 = "";
										String t1="";
										String t2="";
										String t3="";
										String t4="";
										if (request.getParameter("i1") != null) {
											i1 = request.getParameter("i1");
											i1 = new String(i1.getBytes("iso8859-1"), "utf-8");
											i1 = java.net.URLDecoder.decode(i1, "utf-8");
											i2 = request.getParameter("i2");
											i2 = new String(i2.getBytes("iso8859-1"), "utf-8");
											i2 = java.net.URLDecoder.decode(i2, "utf-8");
											i3 = request.getParameter("i3");
											i3 = new String(i3.getBytes("iso8859-1"), "utf-8");
											i3 = java.net.URLDecoder.decode(i3, "utf-8");
											i4 = request.getParameter("i4");
											i4 = new String(i4.getBytes("iso8859-1"), "utf-8");
											i4 = java.net.URLDecoder.decode(i4, "utf-8");
											t1 = request.getParameter("t1");
											t1 = new String(t1.getBytes("iso8859-1"), "utf-8");
											t1 = java.net.URLDecoder.decode(t1, "utf-8");
											t2 = request.getParameter("t2");
											t2 = new String(t2.getBytes("iso8859-1"), "utf-8");
											t2 = java.net.URLDecoder.decode(t2, "utf-8");
											t3 = request.getParameter("t3");
											t3 = new String(t3.getBytes("iso8859-1"), "utf-8");
											t3 = java.net.URLDecoder.decode(t3, "utf-8");
											t4 = request.getParameter("t4");
											t4 = new String(t4.getBytes("iso8859-1"), "utf-8");
											t4 = java.net.URLDecoder.decode(t4, "utf-8");
										}
								%>
								<div class="test1">
									<ul class="testtest">

										<li class="title"><a href="getListenMaterial?title=<%=i1%>"><%=i1%></a>
											<div class="fr ml10 menu_detail">
												<p class="intro">
													<%=t1%>
												</p>
											</div></li>
										<li class="title"><a href="#"><%=i2%></a>
											<div class="fr ml10 menu_detail">
												<p class="intro">
													<%=t2%>
												</p>
											</div></li>

										<li class="title"><a href="#"><%=i3%></a>
											<div class="fr ml10 menu_detail">
												<p class="intro">
													<%=t3%>
												</p>
											</div></li>
										<li class="title"><a href="#"><%=i4%></a>
											<div class="fr ml10 menu_detail">
												<p class="intro">
													<%=t4%>
												</p>
											</div></li>
										<div style="clear: both;"></div>

									</ul>


								</div>
							</s:else>

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
		$(function() {
			$("#audioId").audioPlayer();
		})

		<script src="jquery-1.8.3.js">
	</script>
	<script src="audioplayer.js">
		
	</script>
</body>
</html>
