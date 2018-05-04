<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content_son="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="bootstrap\css\font-awesome-4.7.0\css\font-awesome.css">
<link rel="stylesheet" href="css/index.css">
<link id="bs-css" href="css/bootstrap-cerulean.min.css" rel="stylesheet">
<link
	href='bootstrap/bower_components/responsive-tables/responsive-tables.css'
	rel='stylesheet'>
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
}

a {
	text-decoration: none;
}

.nav1 {
	width: 80%;
	height: 40px;
	margin: 0 auto;
	list-style-type: none;
}

.nav1 li {
	float: left;
}

.nav1 li a {
	padding: 0 30px;
	color: #aaa;
	line-height: 40px;
	display: block;
}

.nav1 li a:hover {
	background: #333;
	color: #fff;
}

.nav1 li a.on {
	background: #333;
	color: #fff;
}
</style>
</head>
<body>
	<div class="row">
		<div class="box col-md-12">
			<div class="box-inner">
				<div id="main-container">
					<div class="container-fluid"></div>
				</div>
				<div class="col-md-10 column">

					<div>
						<ul class="breadcrumb">
							<li><a href="#">个人主页</a></li>
							<li><a href="#">写作任务列表</a></li>
						</ul>
					</div>
					<div class="navbar-collapse collapse navbar-responsive-collapse">
						<ul class="nav1" style="display: inline">
							<!-- 一级菜单 -->
							<li style="display: inline"><a href="###"
								onclick="showAtRight('personalinformation.jsp')"><i
									class="fa fa-envelope-square fa-fw fa-2x"></i>&nbsp;全部写作任务</a></li>
							<li style="display: inline"><a href="###"
								onclick="showAtRight('Tasklist_wwait.jsp')"><i
									class="fa fa-envelope-square fa-fw fa-2x"></i>&nbsp;待批改的任务</a></li>

							<li style="display: inline"><a href="###"
								onclick="showAtRight('personalinformation.jsp')"><i
									class="fa fa-yen fa-fw fa-2x"></i>&nbsp;批改中的任务</a></li>

							<li style="display: inline"><a href="###"
								onclick="showAtRight('personalinformation.jsp')"><i
									class="fa fa-pie-chart fa-fw fa-2x"></i>&nbsp;已批改的任务</a></li>
						</ul>
					</div>

				</div>
			</div>
		</div>

		<div class="col-md-10 column">
			<div id="content_son">
				<div class="box-content">
					<table
						class="table table-striped table-bordered bootstrap-datatable datatable responsive">
						<%
			  HttpSession s = request.getSession(); 
			  
				String driverName = "com.mysql.jdbc.Driver";

				String userName = "root";

				String userPasswd = "";

				String dbName = "ielts";

				
				String url = "jdbc:mysql://localhost:3306/" + dbName + "?user=" + userName + "&password=" + userPasswd;
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				Connection connection = DriverManager.getConnection(url);
				Statement statement = connection.createStatement();
				String sql = "select WR.RecordID,WR.UserName, PM.PaymentTime,WR.`status` from writingrecords AS WR LEFT JOIN payment PM ON WR.RecordId=PM.TaskId";
				ResultSet rs = statement.executeQuery(sql);
			
			%>
						<thead>
							<tr>
								<th>任务Id</th>
								<th>学生用户名</th>
								<th>提交日期</th>
								<th>任务状态</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<%
        while (rs.next()) {
    %>
							<tr>
								<td><%
                out.print(rs.getString(1));
            %></td>
								<td><%
                out.print(rs.getString(2));
            %></td>
								<td class="center"><%
                out.print(rs.getString(3));
            %></td>
								<td class="center"><span
									class="label-success label label-default"><%
                out.print(rs.getString(4));
            %></span></td>
								<td class="center"><a class="btn btn-success" href="#">
										<i class="fa fa-search fa-fw"></i> 查看
								</a> </td>
							</tr>


						</tbody>
						<%
        }
    %>
					</table>

				</div>
				<!-- /.main-container -->
			</div>
		</div>
	</div>
	</div>
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

						document.getElementById("content_son").innerHTML = xmlHttp.responseText; //重设页面中id="content"的div里的内容
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



	<!-- CSS goes in the document HEAD or added to your external stylesheet -->


	<!-- Table goes in the document BODY -->
	<script
		src="bootstrap\bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- library for cookie management -->
	<script src="js/jquery.cookie.js"></script>
	<!-- calender plugin -->
	<script src='bootstrap\bower_components/moment/min/moment.min.js'></script>
	<script
		src='bootstrap\bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
	<!-- data table plugin -->
	<script src='js/jquery.dataTables.min.js'></script>


	<!-- plugin for gallery image view -->
	<script
		src="bootstrap\bower_components/colorbox/jquery.colorbox-min.js"></script>
	<!-- library for making tables responsive -->
	<script
		src="bootstrap\bower_components/responsive-tables/responsive-tables.js"></script>
	<!-- tour plugin -->
	<!-- star rating plugin -->
	<script src="js/jquery.raty.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script src="js/jquery.iphone.toggle.js"></script>
	<!-- autogrowing textarea plugin -->
	<script src="js/jquery.autogrow-textarea.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="js/jquery.history.js"></script>
	<!-- application script for Charisma demo -->
	<script src="js/charisma.js"></script>


	<script src="JS/Order.js" type="text/javascript"></script>
</body>

</html>