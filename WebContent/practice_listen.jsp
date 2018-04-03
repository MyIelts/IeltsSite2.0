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
	FONT-SIZE: 14px;
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

			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="StudentEnrollmentWithStruts">主页</a></li>
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
					<div class="col-lg-6">

						<!-- <div>
							<h3>听写题目</h3>
						</div>
						<hr />
						<div>
							<h4>
								听写内容：</br> </br> 距离2016里约奥运会开幕式还有三个月左右的时间，里约准备好了吗？
							</h4>
						</div>
						<hr />
						<audio id="audioId" src="assets/audio/test.mp3"
							controls="controls" preload="auto">
						</audio>
						<textarea cols=40 rows=10 name=listenText class="textbox"></textarea>

						<div class="col-lg-offset-7" text-align:center>

							<button type="button">提交</button>
						</div> -->



						<%
							String title = "";
							String intro = "";
							String path = "";
							if (request.getParameter("i") != null) {
								intro = request.getParameter("i");
								intro = new String(intro.getBytes("iso8859-1"), "utf-8");
								intro = java.net.URLDecoder.decode(intro, "utf-8");
								title = request.getParameter("t");
								title = new String(title.getBytes("iso8859-1"), "utf-8");
								title = java.net.URLDecoder.decode(title, "utf-8");
								path = request.getParameter("p");
								session.setAttribute("listenM",title);
							}
						%>


						<s:form id="myForm" action="proessScript" theme="bootstrap"
							validate="true" cssClass="bs-example form-horizontal"
							method="post">
							<fieldset>
								<div>
								
									<h3 name=mtitle><%=title%></h3>
								</div>
								<hr />
								<div>
									<h4>
										听写内容：</br> </br><%=intro%>
									</h4>
								</div>
								<hr />
								<audio id="audioId" src="assets/audio/test.mp3"
									controls="controls" preload="auto">
								</audio>



								<textarea cols=40 rows=10 name=usertext class="textbox"><s:property
										value="#parameters.score" /> </textarea>
								
								
								<div class="foot">
									<ul>
										<li><s:submit onclick="myStopFunction()"
												cssClass="btn btn-default" value="取消" /></li>
										<li><s:submit onclick="myStopFunction()"
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
</body>
</html>
