<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
<link rel="stylesheet" href="bootstrap\css\button.css">
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
    .foot{width: 100%; height: 30px; text-align: center;}
    .foot ul{display: inline; margin-left: -60px;}
    .foot ul li{display: inline-block; margin-left: 20px; line-height: 30px;}
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
						<li><a href="VTest_welcome.jsp">词汇量测试</a></li>
						<li class="divider"></li>
						<li><a href="#">听力等级测试</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">写作练习<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="write_tasks.jsp">分Task写作练习</a></li>
						<li class="divider"></li>
						<li><a href="write_topics.jsp">分话题写作练习</a></li>
					</ul></li>
				<li><a href="listen_topics.jsp">听力练习</a></li>

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
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><i class="fa fa-bell fa-fw"></i>&nbsp;消息<b
						class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">口语评分提示</a></li>
						<li class="divider"></li>
						<li><a href="#">作文批改结果</a></li>
					</ul></li>
			</ul>
		</div>
	</div>

	<div class="col-lg-6 col-lg-offset-3">
		<div class="well">
			<div class="container">
				<div class="row">
					<div class="col-lg-9">

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


 
  
     
   
						<s:form id="myForm" action="proessScript" theme="bootstrap"
							validate="true" cssClass="bs-example form-horizontal"
							method="post">
							<fieldset>
								<div>
									<h3>写作练习</h3>
								</div>
								<hr />
								<div>
									<p style="font-size:18px;line-height:24px">
										写作题目：</br> </br> Consumers are faced with increasing numbers of advertisements from competing companies. To what extent do you think are consumers influenced by advertisements? What measures can be taken to protect them?
									</p>
								</div>
								<hr />
								
							<span class="button-wrap"> <a
									href="practice_write.jsp" class="button button-pill ">开始练习&nbsp;<i
										class="fa fa-arrow-right"></i></a>
								</span>

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
