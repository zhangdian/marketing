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

						<div class="span6">

							<div class="widget worange">
								<div class="widget-head">
									<div class="pull-left">SC设置</div>
									<div class="widget-icons pull-right">
										<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
									</div>
									<div class="clearfix"></div>
								</div>

								<div class="widget-content">
									<div class="padd">
										<div class="row-fluid">

											<div class="span12">
												<div class="form-horizontal">
													<!-- sc_webhook_address -->
													<div class="control-group">
			                                            <label class="control-label" for="sc_webhook_address">webhook地址</label>
			                                            <div class="controls">
			                                              <input type="text" class="input-large" id="sc_webhook_address" value="${ sc_webhook }" readonly="readonly">
			                                              <c:if test="${ sc_webhook eq null }">
				                                              <button class="btn btn-danger" type="button" id="create_sc_webhook">创建</button>
			                                              </c:if>
			                                              <c:if test="${ sc_webhook ne null }">
			                                              	  <!-- <button class="btn btn-danger" type="button" id="copy_to_clipboard">复制到剪贴板</button> -->
			                                              </c:if>
			                                            </div>
			                                      	</div>
			                                      	<!-- app_key -->
			                                      	<div class="control-group">
			                                            <label class="control-label" for="sc_webhook_address">app key</label>
			                                            <div class="controls">
			                                              <c:if test="${ sc_app_key eq null }">
				                                              <input type="text" class="input-large" id="sc_app_key" value="">
				                                              <button class="btn btn-danger" type="button" id="save_sc_app_key">保存</button>
			                                              </c:if>
			                                              <c:if test="${ sc_app_key ne null }">
			                                              	  <input type="text" class="input-large" id="sc_app_key" value="${ sc_app_key }" readonly="readonly">
			                                              </c:if>
			                                            </div>
			                                      	</div>
												</div>		                                      	
                                      		</div>	
                                      	</div>

									</div>
								</div>
							</div>
							
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


	<!-- Notification box starts -->

	<!-- Notification box ends -->

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
		
	$("#create_sc_webhook").click(function() {
		
		var surl = "/createSCWebhook.do";
		$.ajax({
			type : "POST",
			timeout : 2000,
			url : surl,
			dataType : "text",
			data : "",	
			cache : false,
			async : true,
			global : false,
			success : function(data) {
				data = $.trim(data);
				if (data == "error") {
					$("#sc_webhook_address").val("创建失败，请重新创建");
				} else {
					window.location.reload();
				}

			},
			error : function(t, v) {
				$("#sc_webhook_address").val("系统错误");
			}
		});
		
	});
	
	$("#save_sc_app_key").click(function() {
		
		var sc_app_key = $("#sc_app_key").val();
		
		/*TODO: 参数检查*/
		
		var params = "sc_app_key="+sc_app_key;
		var surl = "/saveSCAppKey.do";
		$.ajax({
			type : "POST",
			timeout : 2000,
			url : surl,
			dataType : "text",
			data : params,	
			cache : false,
			async : true,
			global : false,
			success : function(data) {
				data = $.trim(data);
				if (data == "error") {
					$("#sc_app_key").val("参数错误，请检查参数后提交");
				} else if (data == "fail") {
					$("#sc_app_key").val("保存失败，请重新保存");
				} else {
					window.location.reload();
				}

			},
			error : function(t, v) {
				$("#sc_app_key").val("系统错误");
			}
		});
		
	});
	
	$("#copy_to_clipboard").click(function() {
		var val = $("#sc_webhook_address").val();
		alert(val);
		window.clipboardData.setData('text', val); 
	});
	
		$(function() {

			/* Bar Chart starts */

			var d1 = [];
			for ( var i = 0; i <= 30; i += 1)
				d1.push([ i, parseInt(Math.random() * 30) ]);

			var d2 = [];
			for ( var i = 0; i <= 30; i += 1)
				d2.push([ i, parseInt(Math.random() * 30) ]);

			var stack = 0, bars = true, lines = false, steps = false;

			function plotWithOptions() {
				$.plot($("#bar-chart"), [ d1, d2 ], {
					series : {
						stack : stack,
						lines : {
							show : lines,
							fill : true,
							steps : steps
						},
						bars : {
							show : bars,
							barWidth : 0.8
						}
					},
					grid : {
						borderWidth : 0,
						hoverable : true,
						color : "#777"
					},
					colors : [ "#52b9e9", "#0aa4eb" ],
					bars : {
						show : true,
						lineWidth : 0,
						fill : true,
						fillColor : {
							colors : [ {
								opacity : 0.9
							}, {
								opacity : 0.8
							} ]
						}
					}
				});
			}

			plotWithOptions();

			$(".stackControls input").click(function(e) {
				e.preventDefault();
				stack = $(this).val() == "With stacking" ? true : null;
				plotWithOptions();
			});
			$(".graphControls input").click(function(e) {
				e.preventDefault();
				bars = $(this).val().indexOf("Bars") != -1;
				lines = $(this).val().indexOf("Lines") != -1;
				steps = $(this).val().indexOf("steps") != -1;
				plotWithOptions();
			});

			/* Bar chart ends */

		});

		/* Curve chart starts */

		$(function() {
			var sin = [], cos = [];
			for ( var i = 0; i < 14; i += 0.5) {
				sin.push([ i, Math.sin(i) ]);
				cos.push([ i, Math.cos(i) ]);
			}

			var plot = $.plot($("#curve-chart"), [ {
				data : sin,
				label : "sin(x)"
			}, {
				data : cos,
				label : "cos(x)"
			} ], {
				series : {
					lines : {
						show : true,
						fill : true,
						fillColor : {
							colors : [ {
								opacity : 0.05
							}, {
								opacity : 0.01
							} ]
						}
					},
					points : {
						show : true
					}
				},
				grid : {
					hoverable : true,
					clickable : true,
					borderWidth : 0
				},
				yaxis : {
					min : -1.2,
					max : 1.2
				},
				colors : [ "#fa3031", "#43c83c" ]
			});

			function showTooltip(x, y, contents) {
				$('<div id="tooltip">' + contents + '</div>').css({
					position : 'absolute',
					display : 'none',
					top : y + 5,
					width : 100,
					left : x + 5,
					border : '1px solid #000',
					padding : '2px 8px',
					color : '#ccc',
					'background-color' : '#000',
					opacity : 0.9
				}).appendTo("body").fadeIn(200);
			}

			var previousPoint = null;
			$("#curve-chart")
					.bind(
							"plothover",
							function(event, pos, item) {
								$("#x").text(pos.x.toFixed(2));
								$("#y").text(pos.y.toFixed(2));

								if (item) {
									if (previousPoint != item.dataIndex) {
										previousPoint = item.dataIndex;

										$("#tooltip").remove();
										var x = item.datapoint[0].toFixed(2), y = item.datapoint[1]
												.toFixed(2);

										showTooltip(item.pageX, item.pageY,
												item.series.label + " of " + x
														+ " = " + y);
									}
								} else {
									$("#tooltip").remove();
									previousPoint = null;
								}
							});

			$("#curve-chart")
					.bind(
							"plotclick",
							function(event, pos, item) {
								if (item) {
									$("#clickdata").text(
											"You clicked point "
													+ item.dataIndex + " in "
													+ item.series.label + ".");
									plot.highlight(item.series, item.datapoint);
								}
							});

		});

		/* Curve chart ends */
	</script>


	<div id="ui-datepicker-div"
		class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
</body>
</html>