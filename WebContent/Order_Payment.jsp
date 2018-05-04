<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="bootstrap\css\css.css" />
<link rel="stylesheet" href="bootstrap\css\button.css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="WebContent/assets/css/styles.css">

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
	font-size: 16px;
	padding-left: 0;
	margin-left: 0;
	margin-bottom: 15px;
}
</style>
<style>
.select {
	padding: 10px;
	margin-right: 15px;
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
							<div class="creditCardForm">
								<h2 class="page-header">请选择支付方式</h2>

								<h3>信用卡/借记卡</h3>

								<div>
									<div class="content col-md-8">
										<p>
											<strong>添加信用卡</strong>
											使用主流信用卡安全支付。（暂不支持除招行及中行以外其他国内银行发行的单标Visa卡及American Express卡）
											(了解更多)
										</p>
									</div>
									<div class="content col-md-4">
										<img src="assets/img/payment.png" alt="支付方式" />
									</div>

								</div>
								<br>

								<hr />
								<hr align="center" width="100%" noshade
									style="FILTER: alpha(opacity = 100, finishopacity = 0, style = 3)">

								<%-- <span class="button-wrap"> <a href="VTest.jsp"
								class="button button-pill ">开始测评&nbsp;<i
									class="fa fa-arrow-right"></i></a> --%>
								<%-- 	</span> --%>
								<s:form id="myForm" action="CCPayment" theme="bootstrap"
									validate="true" cssClass="bs-example form-horizontal"
									method="post">
									<div>
										<p>输入您的卡信息：</p>
									</div>
									<div class="payment">
										<div class="col-md-4">
											<s:textfield label="持卡人姓名  " name="cardname"
												cssClass="col-lg-12" placeholder="Card Holder" />

										</div>
										<div class="col-md-4">

											<s:textfield label="信用卡号码" name="ccnumber"
												cssClass="col-lg-12" placeholder="Credit Card Number" />

										</div>

										<div class="form-group" id="expiration-date">
											<label>信用卡有效期</label> <br /> <select style="height: 30px;">
												<option value="01">January</option>
												<option value="02">February</option>
												<option value="03">March</option>
												<option value="04">April</option>
												<option value="05">May</option>
												<option value="06">June</option>
												<option value="07">July</option>
												<option value="08">August</option>
												<option value="09">September</option>
												<option value="10">October</option>
												<option value="11">November</option>
												<option value="12">December</option>
											</select> <select style="width: 100px; height: 30px;">
												<option value="18">2018</option>
												<option value="19">2019</option>
												<option value="20">2020</option>
												<option value="21">2021</option>
												<option value="22">2022</option>
												<option value="23">2023</option>
											</select>
										</div>
										<div style="text-align: left; width: 300px; font-size: 16px;">
											付款金额:
											<s:property value="#parameters.sum" />
										</div>
										<div style="text-align: right;">
											<s:submit cssClass="btn btn-primary" value="选择用信用卡支付，继续" />

										</div>
										<!-- 模态框（Modal） -->
										<div class="modal fade" id="myModal" tabindex="-1"
											role="dialog" aria-labelledby="myModalLabel"
											aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal"
															aria-hidden="true">&times;</button>
														<h4 class="modal-title" id="myModalLabel">提交订单</h4>
													</div>
													<div class="modal-body">付款完成前请不要关闭此窗口。完成付款后请根据您您的情况点击下面的按钮。</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-default"
															data-dismiss="modal">支付失败，选择其他支付方式</button>
														<button type="button" class="btn btn-primary">我已成功支付，返回原页面</button>
													</div>
												</div>
												<!-- /.modal-content -->
											</div>
											<!-- /.modal -->
										</div>
									</div>
									<hr />



								</s:form>
								<form>
									<div class="payment">
										<h3>其他付款选项</h3>
										<input style="margin: 15px 10px;" id="r1" name="col"
											type="radio" runat="server">微信支付 请在 6 个小时内完成付款</input> <br>
										<input id="r2" style="margin: 15px 10px" name="col"
											type="radio" runat="server">支付宝 请在 6 个小时内完成付款</input> <br>
									</div>
									<div style="text-align: right;">
										<s:submit cssClass="btn btn-primary" value="选择微信/支付宝支付，继续" />

									</div>
									<!-- 模态框（Modal） -->
									<div class="modal fade" id="myModal" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel"
										aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">&times;</button>
													<h4 class="modal-title" id="myModalLabel">支付</h4>
												</div>
												<div class="modal-body">付款完成前请不要关闭此窗口。完成付款后请根据您您的情况点击下面的按钮。</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default"
														data-dismiss="modal">支付失败，选择其他支付方式</button>
													<button type="button" class="btn btn-primary">我已成功支付，返回原页面</button>
												</div>
											</div>
											<!-- /.modal-content -->
										</div>
										<!-- /.modal -->
									</div>
								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


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
