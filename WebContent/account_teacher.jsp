<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%-- 在IE运行最新的渲染模式 --%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%-- 初始化移动浏览显示 --%>
<meta name="Author" content="Dreamer-1.">
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet"
	href="bootstrap\css\font-awesome-4.7.0\css\font-awesome.css">
<link rel="stylesheet" href="css/index.css">
<!-- 修改自Bootstrap官方Demon，你可以按自己的喜好制定CSS样式 -->
<link rel="stylesheet" href="css/font-change.css">

<style>
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
		<!-- /.nav-collapse -->
	</div>
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

	<!-- 左侧菜单选项========================================= -->
	<div id="main-container">
		<div class="container-fluid">
			<div class="row-fluie">
				<div class="col-sm-3 col-md-2 sidebar">
					<ul class="nav nav-sidebar">
						<!-- 一级菜单 -->
						<li><a href="###"
							onclick="showAtRight('personalinformation.jsp')"><i
								class="fa fa-pencil fa-fw fa-2x"></i>&nbsp;查看/修改个人信息</a></li>
						<!-- 二级菜单 -->
						<!-- 注意一级菜单中<a>标签内的href="#……"里面的内容要与二级菜单中<ul>标签内的id="……"里面的内容一致 -->

						<li><a href="###"
							onclick="showAtRight('Tasklist_writing.jsp')"><i
								class="fa fa-language fa-fw fa-2x"></i>&nbsp;写作任务列表</a></li>

						<li><a href="###"
							onclick="showAtRight('Tasklist_speaking.jsp')"><i
								class="fa fa-commenting-o fa-fw fa-2x"></i>&nbsp;口语任务列表</a></li>

						<li><a href="###"
							onclick="showAtRight('personalinformation.jsp')"><i
								class="fa fa-wpforms fa-fw fa-2x"></i>&nbsp;工资流水单</a></li>

						<li><a href="###"
							onclick="showAtRight('personalinformation.jsp')"><i
								class="fa fa-rss-square fa-fw fa-2x"></i>&nbsp;反馈记录</a></li>

					</ul>

				</div>
			</div>
		</div>
		<div class="col-md-10 column">
			<h1 class="page-header">
				<i class="fa fa-cog fa-spin"></i>&nbsp;教师个人主页<small>&nbsp;&nbsp;&nbsp;欢迎来到教师个人主页</small>

				<!-- 载入左侧菜单指向的jsp（或html等）页面内容 -->


				<h1>
					<s:property value="#session.user"></s:property>

				</h1>
			</h1>
			<div id="content">
				<h4>
					<strong>使用指南：</strong><br> <br> <br>默认页面内容……
				</h4>

			</div>
			<!-- /.main-container -->
		</div>


		<script type="text/javascript">
			/*
			 * 对选中的标签激活active状态，对先前处于active状态但之后未被选中的标签取消active
			 * （实现左侧菜单中的标签点击后变色的效果）
			 */
			$(document).ready(function() {
				$('ul.nav > li').click(function(e) {
					//e.preventDefault();    加上这句则导航的<a>标签会失效
					$('ul.nav > li').removeClass('active');
					$(this).addClass('active');
				});
			});

			/*
			 * 解决ajax返回的页面中含有javascript的办法：
			 * 把xmlHttp.responseText中的脚本都抽取出来，不管AJAX加载的HTML包含多少个脚本块，我们对找出来的脚本块都调用eval方法执行它即可
			 */
			function executeScript(html) {

				var reg = /<script[^>]*>([^\x00]+)$/i;
				//对整段HTML片段按<\/script>拆分
				var htmlBlock = html.split("<\/script>");
				for ( var i in htmlBlock) {
					var blocks;//匹配正则表达式的内容数组，blocks[1]就是真正的一段脚本内容，因为前面reg定义我们用了括号进行了捕获分组
					if (blocks = htmlBlock[i].match(reg)) {
						//清除可能存在的注释标记，对于注释结尾-->可以忽略处理，eval一样能正常工作
						var code = blocks[1].replace(/<!--/, '');
						try {
							eval(code) //执行脚本
						} catch (e) {
						}
					}
				}
			}

			/*
			 * 利用div实现左边点击右边显示的效果（以id="content"的div进行内容展示）
			 * 注意：
			 *   ①：js获取网页的地址，是根据当前网页来相对获取的，不会识别根目录；
			 *   ②：如果右边加载的内容显示页里面有css，必须放在主页（即例中的index.jsp）才起作用
			 *   （如果单纯的两个页面之间include，子页面的css和js在子页面是可以执行的。 主页面也可以调用子页面的js。但这时要考虑页面中js和渲染的先后顺序 ）
			 */
			function showAtRight(url) {
				var xmlHttp;

				if (window.XMLHttpRequest) {
					// code for IE7+, Firefox, Chrome, Opera, Safari
					xmlHttp = new XMLHttpRequest(); //创建 XMLHttpRequest对象
				} else {
					// code for IE6, IE5
					xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
				}

				xmlHttp.onreadystatechange = function() {
					//onreadystatechange — 当readystate变化时调用后面的方法

					if (xmlHttp.readyState == 4) {
						//xmlHttp.readyState == 4    ——    finished downloading response

						if (xmlHttp.status == 200) {
							//xmlHttp.status == 200        ——    服务器反馈正常            

							document.getElementById("content").innerHTML = xmlHttp.responseText; //重设页面中id="content"的div里的内容
							executeScript(xmlHttp.responseText); //执行从服务器返回的页面内容里包含的JavaScript函数
						}
						//错误状态处理
						else if (xmlHttp.status == 404) {
							alert("出错了☹   （错误代码：404 Not Found），……！");
							/* 对404的处理 */
							return;
						} else if (xmlHttp.status == 403) {
							alert("出错了☹   （错误代码：403 Forbidden），……");
							/* 对403的处理  */
							return;
						} else {
							alert("出错了☹   （错误代码：" + request.status + "），……");
							/* 对出现了其他错误代码所示错误的处理   */
							return;
						}
					}

				}

				//把请求发送到服务器上的指定文件（url指向的文件）进行处理
				xmlHttp.open("GET", url, true); //true表示异步处理
				xmlHttp.send();
			}
		</script>
</body>
</html>

