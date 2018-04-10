<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="java.sql.*"%>
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
.leftdiv {
	float: left;
	width: 800px;
	margin: 5px;
}

.leftdiv dl {
	display: block;
	border-bottom: 1px solid #EEE;
	padding-bottom: 6px;
	overflow: hidden;
}

.leftdiv dl dt {
	display: block;
	float: left;
	width: 100px;
	text-align: center;
	font-size: 18px;
	height: 30px;
	line-height: 22px;
	padding-left: 6px;
	padding-top: 7px;
	padding-bottom: 6px;
}

.leftdiv dl dd {
	display: inline-block;
	overflow: hidden;
	width: 700px;
	padding-bottom: 5px;
}

.leftdiv dl dd a {
	display: block;
	float: left;
	border-left: 1px solid #CCC;
	color: #737373;
	font-size: 11pt;
	padding: 8px 8px;
	height: 30px;
	line-height: 14px;
	margin: 5px 0px 5px 10px;
}

.leftdiv dl dd a:hover {
	background-color: #555;
	color: white;
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
	border: 1px solid #ccc;
	padding: 14px;
	border-radius: 15px;
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
					<div class="col-lg-12">
						<div class="col-md-9 column">
							<h1 class="page-header">
								<i class="fa fa-cog fa-spin"></i>&nbsp;欢迎来到分Topic写作练习模块
							</h1>
							<div class="whole">
								<div class="leftdiv">
									<dl>
										<dt>Topics</dt>
										<dd>
											<a href="getWritingTopics?levelname=education"><i
												class="fa fa-graduation-cap fa-fw"></i>&nbsp;教育类</a> <a href="#"><i
												class="fa fa-university fa-fw"></i>&nbsp;政府类</a> <a href="#"><i
												class="fa fa-users fa-fw"></i>&nbsp;社会类</a> <a href="#"><i
												class="fa fa-heartbeat fa-fw"></i>&nbsp;健康类</a> <a href="#"><i
												class="fa fa-youtube-play fa-fw"></i>&nbsp;媒体类</a> <a href="#"><i
												class="fa fa-recycle fa-fw"></i>&nbsp;环保类</a> <a href="#"><i
												class="fa fa-plane fa-fw"></i>&nbsp;科技发明类</a> <a href="#"><i
												class="fa fa-legal fa-fw"></i>&nbsp;犯罪法律类</a> <a href="#"><i
												class="fa fa-language fa-fw"></i>&nbsp;文化类</a>
										</dd>
									</dl>
								</div>
							</div>

							<%
								HttpSession s = request.getSession();
								String currentCategory = (String) s.getAttribute("writingCategory");
								System.out.println(currentCategory);
								
									currentCategory = "environment";
								
								String driverName = "com.mysql.jdbc.Driver";

								String userName = "root";

								String userPasswd = "";

								String dbName = "ielts";

								String tableName = "writingmaterials";
								String url = "jdbc:mysql://localhost:3306/" + dbName + "?user=" + userName + "&password=" + userPasswd;
								Class.forName("com.mysql.jdbc.Driver").newInstance();
								Connection connection = DriverManager.getConnection(url);
								Statement statement = connection.createStatement();
								String sql = "SELECT * FROM " + tableName + " WHERE category='" + currentCategory + "'";
								ResultSet rs = statement.executeQuery(sql);
							%>
							<%
								while (rs.next()) {
							%>
							<tr>

								<a href="###"> <%out.print(rs.getString(1));%>
								</a>
								<td>
									<%
										out.print(rs.getString(2));
									%>&nbsp;&nbsp;&nbsp;&nbsp;
								</td>
								
								<br>
							</tr>
							</tbody>
							<%
								}
							%>


							<div class="test1">
								<ul class="testtest">

									<li class="title"><a href="#">BBC新闻</a>
										<div class="fr ml10 menu_detail">
											<p class="intro">
												我是谁？世界从何而来？每个曾对生命怀抱好奇的心灵，都应该翻开《苏菲的世界》。挪威作家乔斯坦·贾德所著哲学史小说《苏菲的世界》将会唤醒每个人内心深处对生命的赞叹与对人生终极意义的关怀和好奇。</p>
										</div></li>
									<li class="title"><a href="#">BBC新闻</a>
										<div class="fr ml10 menu_detail">
											<p class="intro">
												我是谁？世界从何而来？每个曾对生命怀抱好奇的心灵，都应该翻开《苏菲的世界》。挪威作家乔斯坦·贾德所著哲学史小说《苏菲的世界》将会唤醒每个人内心深处对生命的赞叹与对人生终极意义的关怀和好奇。</p>
										</div></li>

									<li class="title"><a href="#">BBC新闻</a>
										<div class="fr ml10 menu_detail">
											<p class="intro">
												我是谁？世界从何而来？每个曾对生命怀抱好奇的心灵，都应该翻开《苏菲的世界》。挪威作家乔斯坦·贾德所著哲学史小说《苏菲的世界》将会唤醒每个人内心深处对生命的赞叹与对人生终极意义的关怀和好奇。</p>
										</div></li>
									<li class="title"><a href="#">BBC新闻</a>
										<div class="fr ml10 menu_detail">
											<p class="intro">
												我是谁？世界从何而来？每个曾对生命怀抱好奇的心灵，都应该翻开《苏菲的世界》。挪威作家乔斯坦·贾德所著哲学史小说《苏菲的世界》将会唤醒每个人内心深处对生命的赞叹与对人生终极意义的关怀和好奇。</p>
										</div></li>
									<div style="clear: both;"></div>
								</ul>
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
		$(function() {
			$("#audioId").audioPlayer();
		})

		<script src="jquery-1.8.3.js">
	</script>
	<script src="audioplayer.js">
		
	</script>
	<script>
     function getTopics(s){
    	 HttpSession s = request.getSession(); 
    	 s.setAttribute("writingCategory", s)
     }
    </script>




</body>
</html>
