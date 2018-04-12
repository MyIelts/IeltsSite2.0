<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
<style>
body {
	height: 100%;
	margin: 0;
}
</style>
<style>
.textbox {
	BACKGROUND: #BFCEDC;
	BORDER-TOP: #7F9DB9 1px solid;
	BORDER-LEFT: #7F9DB9 1px solid;
	BORDER-RIGHT: #7F9DB9 1px solid;
	BORDER-BOTTOM: #7F9DB9 1px solid;
	FONT-FAMILY: "宋体", "Verdana", "Arial", "Helvetica";
	FONT-SIZE: 16px;
	TEXT-ALIGN: LIFT;
	height: 400px;
	width: 860px;
	margin-top: 20px;
	margin-bottom: 20px;
	resize: none;
}
</style>
<style type="text/css">
.foot {
	width: 100%;
	height: 30px;
	text-align: center;
}

.foot ul {
	display: inline;
	margin-left: -60px;
}

.foot ul li {
	display: inline-block;
	margin-left: 20px;
	line-height: 30px;
}
</style>
<style>
#mytime {
	text-align: center;
}
</style>
<script>
	function two_char(n) {
		return n >= 10 ? n : "0" + n;
	}
	function time_fun() {
		var sec = 0;
		setInterval(function() {
			sec++;
			var date = new Date(0, 0)
			date.setSeconds(sec);
			var h = date.getHours(), m = date.getMinutes(), s = date
					.getSeconds();
			document.getElementById("mytime").innerText = two_char(h) + ":"
					+ two_char(m) + ":" + two_char(s);
		}, 1000);

	}
	function stopTimer() {
		clearTimeout(mytime);
	}
</script>
</head>
<body onload="time_fun()">
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
				<li class="active"><a href="StudentEnrollmentWithStruts">主页</a></li>
				<li><a href="signup.jsp">注册</a></li>
				<li><a href="login.jsp">登录</a></li>

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

					<div class="col-lg-9">
						<ol class="breadcrumb">
							<li><a href="#">主页</a></li>
							<li><a href="#">写作练习</a></li>
							<li class="active">曲线图</li>
						</ol>
						<s:form id="myForm" action="proessScript" theme="bootstrap"
							validate="true" cssClass="bs-example form-horizontal"
							method="post">
							<fieldset>
								<div>
									<h3>写作练习题目</h3>
								</div>
								<hr />
								<%-- <s:if test="#session.user=null"> --%>
								<div style="text-align: center;">
									<img src="assets/img/linegraph.jpg" alt="LineGraph" width="600"
										height="400">
								</div>
								</br>
								<%-- </s:if>
								<s:else>
									<li><a href="logout-input">退出登录</a></li>
								</s:else> --%>
								<div>
									<p style="font-size: 18px; line-height: 24px">Consumers are
										faced with increasing numbers of advertisements from competing
										companies. To what extent do you think are consumers
										influenced by advertisements? What measures can be taken to
										protect them?</p>
								</div>
								<hr />
								<h2 id="mytime">00:00:00</h2>
								<textarea cols=40 rows=10 name=usertext class="textbox"><s:property
										value="#parameters.t" /> </textarea>
								<%-- 	<s:textfield label="用户名" name="username" cssClass="col-lg-12"
									placeholder="User Name" /> --%>

								<%-- <s:textfield label="文本" name="usertext" cssClass="col-lg-12"
									placeholder="User Name" /> --%>
								<s:property value="password"></s:property>
								<div class="foot">
									<ul>
										<li><s:submit onclick="myStopFunction()"
												cssClass="btn btn-default" value="取消" /></li>
										<li><s:submit onclick="stopTimer()"
												cssClass="btn btn-primary" value="提交" /></li>
									</ul>
								</div>

							</fieldset>
						</s:form>
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
	<%--  <script>
		$(function() {
			$.ajax({  
			      url : "",  
			      type : 'post',  
			      success : function(data) {  
			             console.info(data.usertext.info);  
			      }  
			}); 
		})
	</script> --%>
	<script>
		$(function() {
			$("#audioId").audioPlayer();
		})

		<script src="jquery-1.8.3.js">
	</script>
	<script src="audioplayer.js">
		
	</script>

	<script>
		function myStopFunction() {
			clearInterval(document.getElementById("mytime").innerText);
		}
	</script>
</body>
</html>
