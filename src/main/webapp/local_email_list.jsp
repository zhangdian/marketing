<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jstl/fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta charset="utf-8">
<!-- Title and other stuffs -->
<title>营销工具</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">

<!-- Stylesheets -->
<link href="./css/bootstrap.css" rel="stylesheet">
<!-- Font awesome icon -->
<link rel="stylesheet" href="./css/font-awesome.css">
<!-- jQuery UI -->
<link rel="stylesheet" href="./css/jquery-ui.css">
<!-- Calendar -->
<link rel="stylesheet" href="./css/fullcalendar.css">
<!-- prettyPhoto -->
<link rel="stylesheet" href="./css/prettyPhoto.css">
<!-- Star rating -->
<link rel="stylesheet" href="./css/rateit.css">
<!-- Date picker -->
<link rel="stylesheet" href="./css/bootstrap-datetimepicker.min.css">
<!-- jQuery Gritter -->
<link rel="stylesheet" href="./css/jquery.gritter.css">
<!-- CLEditor -->
<link rel="stylesheet" href="./css/jquery.cleditor.css">
<!-- Bootstrap toggle -->
<link rel="stylesheet" href="./css/bootstrap-toggle-buttons.css">
<!-- Main stylesheet -->
<link href="./css/style.css" rel="stylesheet">
<!-- Widgets stylesheet -->
<link href="./css/widgets.css" rel="stylesheet">
<!-- Responsive style (from Bootstrap) -->
<link href="./css/bootstrap-responsive.css" rel="stylesheet">

<!-- HTML5 Support for IE -->
<!--[if lt IE 9]>
  <script src="js/html5shim.js"></script>
  <![endif]-->

<!-- Favicon -->
<link rel="shortcut icon" href="./img/favicon.png">
<style type="text/css">
.jqstooltip {
	position: absolute;
	left: 0px;
	top: 0px;
	visibility: hidden;
	background: rgb(0, 0, 0) transparent;
	background-color: rgba(0, 0, 0, 0.6);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,
		endColorstr=#99000000);
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
	color: white;
	font: 10px arial, san serif;
	text-align: left;
	white-space: nowrap;
	padding: 5px;
	border: 1px solid white;
	z-index: 10000;
}

.jqsfield {
	color: white;
	font: 10px arial, san serif;
	text-align: left;
}
</style>
</head>

<body>

	<jsp:include page="./include/head.jsp"></jsp:include>

	<!-- Main content starts -->

	<div class="content">

		<!-- Sidebar -->
		<jsp:include page="./include/left_slidebar.jsp">
			<jsp:param value="local_email_list" name="selected_item" />
		</jsp:include>
		<!-- Sidebar ends -->

		<!-- Main bar -->
		<div class="mainbar">

			<!-- Page heading -->
			<div class="page-head">
				<!-- Page heading -->
				<h2 class="pull-left">
					邮件地址列表
					<!-- page meta -->
					<span class="page-meta"></span>
				</h2>

				<!-- Breadcrumb -->
				<div class="bread-crumb pull-right">
					<a href="http://responsivewebinc.com/premium/metroking/index.html"><i
						class="icon-home"></i> Home</a>
					<!-- Divider -->
					<span class="divider">/</span> <a
						href="http://responsivewebinc.com/premium/metroking/#"
						class="bread-current">Dashboard</a>
				</div>

				<div class="clearfix"></div>

			</div>
			<!-- Page heading ends -->

			<!-- Matter -->

			<div class="matter">
				<div class="container-fluid">

					<div class="row-fluid">

						<div class="span12">

							<div class="widget worange">
								<div class="widget-head">
									<div class="pull-left">创建邮件列表</div>
									<div class="widget-icons pull-right">
										<a href="#" class="wminimize"><i class="icon-chevron-down"></i></a>
									</div>
									<div class="clearfix"></div>
								</div>

								<div class="widget-content" style="display: none">
									<div class="padd">

										<div class="row-fluid">

											<div class="span12">
												
												<form id="local_create_email_list_form" class="form-horizontal">
													<div class="alert alert-error" style="display: none"
														id="alert_msg"></div>
													<div class="control-group">
														<label class="control-label" for="local_email_list_name">邮件列表名称</label>
														<div class="controls">
															<input type="text" id="local_email_list_name"
																name="local_email_list_name" placeholder=""> <span
																class="help-inline"></span>
														</div>
													</div>
													<div class="control-group">
														<label class="control-label" for="local_email_list_type">邮件列表类型</label>
														<div class="controls">
															<select id="local_email_list_type" name="local_email_list_type">
																<option value="0">默认</option>
															</select>
															<span class="help-inline"></span>
														</div>
													</div>
													<!-- Remember me checkbox and sign in button -->
													<div class="control-group">
														<div class="controls">
															<button type="button" class="btn btn-danger" id="local_create_email_list_submit" name="local_create_email_list_submit">创建</button>
															<button type="reset" class="btn">重置</button>
														</div>
													</div>
												</form>

											</div>

										</div>

									</div>
								</div>
							</div>
							
							<!-- 邮件地址列表 start -->
							<div class="widget wviolet">
								<div class="widget-head">
									<div class="pull-left">任务列表</div>
									<div class="widget-icons pull-right">
										<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
									</div>
									<div class="clearfix"></div>
								</div>

								<div class="widget-content">
									<div class="padd invoice">

										<div class="row-fluid">

											<div class="span12">
												<!-- Button to trigger modal -->
												<table class="table   table-bordered">
													<thead>
														<tr>
															<th>名称</th>
															<th>地址数量</th>
															<th>创建时间</th>
															<th>操作</th>
														</tr>
													</thead>
													<tbody>
														<c:if test="${ list ne null }">
															<c:forEach var="item" items="${list}">
																<tr>
																	<td>${ item.name }</td>
																	<td>${ item.count }</td>
																	<td>${ item.gmtCreated }</td>
																	<td>
																		<a href="#myModal" class="btn btn-info" data-toggle="modal">添加</a>					
																	</td>
																</tr>
															</c:forEach>
														</c:if>
													</tbody>
												</table>

											</div>

										</div>

									</div>
								</div>
							</div>
							<!-- 邮件地址列表  end -->
							
						</div>

					</div>

				</div>
			</div>

			<!-- Matter ends -->

		</div>

		<!-- Mainbar ends -->
		<div class="clearfix"></div>

	</div>
	<!-- Content ends -->

	<div id="myModal" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title">添加邮件地址</h4>
				</div>
				<div class="modal-body">
					<div class="widget-content">
						<!-- Widget content -->
						<p>你可以从以下方式添加邮件地址：</p>
						<p>
							<a target="_blank" href="gotoQQVerify.do"><img src="./img/qq_white_24X24.png" alt="qq_white_24X24.png"></a>
						</p>

					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal"
						aria-hidden="true">关闭</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Scroll to top -->
	<span class="totop" style="display: none;"><a
		href="#"><i
			class="icon-chevron-up"></i></a></span>

	<!-- JS -->
	<script src="./js/jquery.js"></script>
	<!-- jQuery -->
	<script src="./js/bootstrap.js"></script>
	<!-- Bootstrap -->
	<script src="./js/jquery-ui-1.10.2.custom.min.js"></script>
	<!-- jQuery UI -->
	<script src="./js/fullcalendar.min.js"></script>
	<!-- Full Google Calendar - Calendar -->
	<script src="./js/jquery.rateit.min.js"></script>
	<!-- RateIt - Star rating -->
	<script src="./js/jquery.prettyPhoto.js"></script>
	<!-- prettyPhoto -->

	<!-- jQuery Flot -->
	<script src="./js/excanvas.min.js"></script>
	<script src="./js/jquery.flot.js"></script>
	<script src="./js/jquery.flot.resize.js"></script>
	<script src="./js/jquery.flot.pie.js"></script>
	<script src="./js/jquery.flot.stack.js"></script>

	<script src="./js/jquery.gritter.min.js"></script>
	<!-- jQuery Gritter -->
	<script src="./js/sparklines.js"></script>
	<!-- Sparklines -->
	<script src="./js/jquery.cleditor.min.js"></script>
	<!-- CLEditor -->
	<script src="./js/bootstrap-datetimepicker.min.js"></script>
	<!-- Date picker -->
	<script src="./js/jquery.toggle.buttons.js"></script>
	<!-- Bootstrap Toggle -->
	<script src="./js/filter.js"></script>
	<!-- Filter for support page -->
	<script src="./js/custom.js"></script>
	<!-- Custom codes -->
	<script src="./js/charts.js"></script>
	<!-- Custom chart codes -->

	<!-- Script for this page -->
	<script type="text/javascript">
		
	$("#local_create_email_list_submit").click(function() {
		
		var local_email_list_name = $("#local_create_email_list_form #local_email_list_name").val();
		var local_email_list_type = $("#local_create_email_list_form #local_email_list_type").val();
		
		var params = "local_email_list_name="+local_email_list_name+"&local_email_list_type="+local_email_list_type;
		
		var surl = "/saveLocalEmailListMeta.do";
		$.ajax({
			type : "POST",
			timeout : 30000,
			url : surl,
			dataType : "text",
			data : params,	
			cache : false,
			async : true,
			global : false,
			success : function(data) {
				data = $.trim(data);
				if (data == "error") {
					$("#local_create_email_list_form #alert_msg").html("参数错误，请检查参数后提交");
					$("#local_create_email_list_form #alert_msg").show();
				} else if (data == "fail") {
					$("#local_create_email_list_form #alert_msg").html("注册失败，请重新注册");
					$("#local_create_email_list_form #alert_msg").show();
				} else if (data == "success") {
					window.location.href="listLocalEmailListMeta.do";
				}

			},
			error : function(t, v) {
				$("#local_create_email_list_form #alert_msg").html("系统错误");
				$("#local_create_email_list_form #alert_msg").show();
			}
		});
		
	});
	</script>


	<div id="ui-datepicker-div"
		class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
</body>
</html>