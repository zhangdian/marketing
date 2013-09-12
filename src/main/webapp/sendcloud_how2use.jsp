<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
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
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>

<body>

<jsp:include page="./include/head.jsp"></jsp:include>

<!-- Main content starts -->

<div class="content">

	<!-- Sidebar -->
	<jsp:include page="./include/left_slidebar.jsp">
       	<jsp:param value="sendcloud_how2use" name="selected_item"/>
 	</jsp:include>
 	<!-- Sidebar ends -->

  	<!-- Main bar -->
  	<div class="mainbar">
      
	    <!-- Page heading -->
	    <div class="page-head">
        <!-- Page heading -->
	      <h2 class="pull-left">SendCloud使用介绍
          <!-- page meta -->
          <span class="page-meta">使用我们接入SendCloud</span>
        </h2>


        <!-- Breadcrumb -->
        <div class="bread-crumb pull-right">
          <a href="http://responsivewebinc.com/premium/metroking/index.html"><i class="icon-home"></i> Home</a> 
          <!-- Divider -->
          <span class="divider">/</span> 
          <a href="http://responsivewebinc.com/premium/metroking/#" class="bread-current">Dashboard</a>
        </div>

        <div class="clearfix"></div>

	    </div>
	    <!-- Page heading ends -->
	    
	    <!-- Matter -->

	    <div class="matter">
        <div class="container-fluid">

          <div class="row-fluid">

            <div class="span12">

			  <div class="widget wred">
                <!-- Widget title -->
                <div class="widget-head">
                  <div class="pull-left">注册使用SendCloud</div>
                  <div class="widget-icons pull-right">
                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
                  </div>
                  <div class="clearfix"></div>
                </div>

                <div class="widget-content">
                  <!-- Widget content -->
                  <div class="padd">
					 <!-- Contact box -->
                     <div class="support-contact">
                        <!-- Phone, email and address with font awesome icon -->
                        <p></p>
                        <hr />
                        <p>1.注册：登陆SendCloud官网注册账号，填写触发和批量两个发信域名 </p>
                        <hr />
                        <p>2.设置自由域名：配置上一步设置的两个域名的相关信息，详见官方文档<a href="http://blog.sendcloud.org/?p=131" target="_blank">自由域名配置</a></p>
                        <hr />
                        <p>3.创建子账号：自由域名配置成功之后，根据邮件类型，创建相应类型的子账号，具体见<a href="http://send.sohu.com/help" target="_blank">子账号管理</a></p>
                        <hr />
                        <p>4.使用合适的接入方式，进行邮件发送，具体见<a href="http://sendcloud.sohu.com/sendcloud/api-doc/sc-send-mail" target="_blank">接入SendCloud服务</a>。我们提供了对SendCloud批量发送服务的封装，具体见TODO</p>
                        <hr />
                     </div>
                  </div>
                </div>

              </div> 

			  <div class="widget wgreen">
                <!-- Widget title -->
                <div class="widget-head">
                  <div class="pull-left">使用我们接入SendCloud</div>
                  <div class="widget-icons pull-right">
                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
                  </div>
                  <div class="clearfix"></div>
                </div>

                <div class="widget-content">
                  <!-- Widget content -->
                  <div class="padd">
					 <!-- Contact box -->
                     <div class="support-contact">
                        <!-- Phone, email and address with font awesome icon -->
                        <p></p>
                        <hr />
                        <p>1.登陆进入<a href="http://send.sohu.com/" target="_blank">SendCloud</a>，付费成为付费用户</p>
                        <hr />
                        <p>2.邮件模板：进入<a href="http://send.sohu.com/templates.do">我的模板</a>，创建您需要的模板，后续我们将要使用<strong>“调用名称”</strong>作为参数</p>
                        <hr />
                        <p>3.标签：进入<a href="http://send.sohu.com/label.do">我的标签</a>，创建您需要的标签，后续我们将要使用<strong>“标签代号”</strong>作为参数</p>
                        <hr />
                        <p>4.邮件列表：进入<a href="http://sendcloud.sohu.com/mail_list.do">邮件列表</a>，创建您需要的邮件列表，后续我们将要使用<strong>“别称地址”</strong>作为参数</p>
                        <hr />
                        <p>5.Webhook：我们会分配给您一个接受SendCloud的Webhook消息的URL地址，您需要进入<a href="http://send.sohu.com/webhooks.do">Webhook</a>，创建一个Webhook，然后勾选所有的事件，然后在POST到URL中输入我们分配给你的URL地址，保存即可。这样，我们就可以统计您发送邮件的状态信息</p>
                        <hr />
                        <p>6.任务：进入我们的任务页面，创建一个任务，填写必要的信息，发送即可。TODO</p>
                        <hr />
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
<span class="totop" style="display: none;"><a href="http://responsivewebinc.com/premium/metroking/#"><i class="icon-chevron-up"></i></a></span> 

<!-- JS -->
<script src="./js/jquery.js"></script> <!-- jQuery -->
<script src="./js/bootstrap.js"></script> <!-- Bootstrap -->
<script src="./js/jquery-ui-1.10.2.custom.min.js"></script> <!-- jQuery UI -->
<script src="./js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
<script src="./js/jquery.rateit.min.js"></script> <!-- RateIt - Star rating -->
<script src="./js/jquery.prettyPhoto.js"></script> <!-- prettyPhoto -->

<!-- jQuery Flot -->
<script src="./js/excanvas.min.js"></script>
<script src="./js/jquery.flot.js"></script>
<script src="./js/jquery.flot.resize.js"></script>
<script src="./js/jquery.flot.pie.js"></script>
<script src="./js/jquery.flot.stack.js"></script>

<script src="./js/jquery.gritter.min.js"></script> <!-- jQuery Gritter -->
<script src="./js/sparklines.js"></script> <!-- Sparklines -->
<script src="./js/jquery.cleditor.min.js"></script> <!-- CLEditor -->
<script src="./js/bootstrap-datetimepicker.min.js"></script> <!-- Date picker -->
<script src="./js/jquery.toggle.buttons.js"></script> <!-- Bootstrap Toggle -->
<script src="./js/filter.js"></script> <!-- Filter for support page -->
<script src="./js/custom.js"></script> <!-- Custom codes -->
<script src="./js/charts.js"></script> <!-- Custom chart codes -->

<!-- Script for this page -->
<script type="text/javascript">
$(function () {

    /* Bar Chart starts */

    var d1 = [];
    for (var i = 0; i <= 30; i += 1)
        d1.push([i, parseInt(Math.random() * 30)]);

    var d2 = [];
    for (var i = 0; i <= 30; i += 1)
        d2.push([i, parseInt(Math.random() * 30)]);


    var stack = 0, bars = true, lines = false, steps = false;
    
    function plotWithOptions() {
        $.plot($("#bar-chart"), [ d1, d2 ], {
            series: {
                stack: stack,
                lines: { show: lines, fill: true, steps: steps },
                bars: { show: bars, barWidth: 0.8 }
            },
            grid: {
                borderWidth: 0, hoverable: true, color: "#777"
            },
            colors: ["#52b9e9", "#0aa4eb"],
            bars: {
                  show: true,
                  lineWidth: 0,
                  fill: true,
                  fillColor: { colors: [ { opacity: 0.9 }, { opacity: 0.8 } ] }
            }
        });
    }

    plotWithOptions();
    
    $(".stackControls input").click(function (e) {
        e.preventDefault();
        stack = $(this).val() == "With stacking" ? true : null;
        plotWithOptions();
    });
    $(".graphControls input").click(function (e) {
        e.preventDefault();
        bars = $(this).val().indexOf("Bars") != -1;
        lines = $(this).val().indexOf("Lines") != -1;
        steps = $(this).val().indexOf("steps") != -1;
        plotWithOptions();
    });

    /* Bar chart ends */

});


/* Curve chart starts */

$(function () {
    var sin = [], cos = [];
    for (var i = 0; i < 14; i += 0.5) {
        sin.push([i, Math.sin(i)]);
        cos.push([i, Math.cos(i)]);
    }

    var plot = $.plot($("#curve-chart"),
           [ { data: sin, label: "sin(x)"}, { data: cos, label: "cos(x)" } ], {
               series: {
                   lines: { show: true, 
                            fill: true,
                            fillColor: {
                              colors: [{
                                opacity: 0.05
                              }, {
                                opacity: 0.01
                              }]
                          }
                  },
                   points: { show: true }
               },
               grid: { hoverable: true, clickable: true, borderWidth:0 },
               yaxis: { min: -1.2, max: 1.2 },
               colors: ["#fa3031", "#43c83c"]
             });


    function showTooltip(x, y, contents) {
        $('<div id="tooltip">' + contents + '</div>').css( {
            position: 'absolute',
            display: 'none',
            top: y + 5,
            width: 100,
            left: x + 5,
            border: '1px solid #000',
            padding: '2px 8px',
            color: '#ccc',
            'background-color': '#000',
            opacity: 0.9
        }).appendTo("body").fadeIn(200);
    }

    var previousPoint = null;
    $("#curve-chart").bind("plothover", function (event, pos, item) {
        $("#x").text(pos.x.toFixed(2));
        $("#y").text(pos.y.toFixed(2));

            if (item) {
                if (previousPoint != item.dataIndex) {
                    previousPoint = item.dataIndex;
                    
                    $("#tooltip").remove();
                    var x = item.datapoint[0].toFixed(2),
                        y = item.datapoint[1].toFixed(2);
                    
                    showTooltip(item.pageX, item.pageY, item.series.label + " of " + x + " = " + y);
                }
            }
            else {
                $("#tooltip").remove();
                previousPoint = null;            
            }
    }); 

    $("#curve-chart").bind("plotclick", function (event, pos, item) {
        if (item) {
            $("#clickdata").text("You clicked point " + item.dataIndex + " in " + item.series.label + ".");
            plot.highlight(item.series, item.datapoint);
        }
    });

});

/* Curve chart ends */
</script>


<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div></body></html>