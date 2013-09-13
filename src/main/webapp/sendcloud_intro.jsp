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
       	<jsp:param value="sendcloud_intro" name="selected_item"/>
 	</jsp:include>
 	<!-- Sidebar ends -->

  	<!-- Main bar -->
  	<div class="mainbar">
      
	    <!-- Page heading -->
	    <div class="page-head">
        <!-- Page heading -->
	      <h2 class="pull-left">SendCloud简介 
          <!-- page meta -->
          <span class="page-meta">专业的触发邮发送平台</span>
        </h2>

        <!-- Breadcrumb -->
        <div class="bread-crumb pull-right">
          <a href="index.jsp"><i class="icon-home"></i> 主页</a> 
          <!-- Divider -->
          <span class="divider">/</span> 
          <a href="sendcloud_intro.jsp" class="bread-current">sendcloud</a>
        </div>

        <div class="clearfix"></div>

	    </div>
	    <!-- Page heading ends -->
	    
	    <!-- Matter -->

	    <div class="matter">
        <div class="container-fluid">

          <div class="row-fluid">

            <div class="span8">

              <!-- Widget -->
              <div class="widget wred">
                <!-- Widget title -->
                <div class="widget-head">
                  <div class="pull-left">功能</div>
                  <div class="widget-icons pull-right">
                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
                  </div>
                  <div class="clearfix"></div>
                </div>

                <div class="widget-content">
                  <!-- Widget content -->
                  <div class="padd">
                    <div class="support-faq">
                                <div class="clearfix"></div>
                                  <!-- Lists -->
                                  <ol id="slist">
                                      <!-- List #1 -->
                                      <li>
                                         <!-- Title. Link title is used for filteration. -->
                                         <a href="#">节约时间与金钱的不二选择</a>
                                         <!-- Para -->
                                         <p>SendCloud专注邮件发送领域，ESP白名单确认、发送频率控制、邮件发送追踪，每一个细节都确保无误，让开发者有更多时间专注开发！</p>
                                      </li>
                                      <!-- List #2 and so on.... -->
                                      <li>
                                         <a href="#">保证邮件高效送达</a>
                                         <p>SendCloud为邮件提供DKIM签名及SPF、负责发送过程中ESP门户申诉与白名单确认，多重措施确保您的邮件高效送达。</p>
                                      </li>
                                      <li>
                                         <a href="#">实时、精准的数据分析</a>
                                         <p>SendCloud拥有的数据追踪功能，可以统计邮件送达过程中各种数据，并以多种图表形式呈现，一目了然。</p>
                                      </li>                                   
                                 </ol>
                             </div>
                  </div>
                </div>
                  <!-- Widget footer -->
                  <div class="widget-foot">
                    <p><a href="http://send.sohu.com/">SendCloud官网</a></p>
                  </div>

              </div>
              <div class="widget wgreen">
                <!-- Widget title -->
                <div class="widget-head">
                  <div class="pull-left">邮件类型</div>
                  <div class="widget-icons pull-right">
                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
                  </div>
                  <div class="clearfix"></div>
                </div>

                <div class="widget-content">
                  <!-- Widget content -->
                  <div class="padd">
                    <div class="support-faq">
                                <div class="clearfix"></div>
                                  <!-- Lists -->
                                  <ol id="slist">
                                      <!-- List #1 -->
                                      <li>
                                         <a href="#">SendCloud平台只接入触发邮件和会员的批量邮件发送，陌生人营销、广告营销邮件不能接入平台发送。</a>
                                      </li>                                   
                                      <li>
                                         <!-- Title. Link title is used for filteration. -->
                                         <a href="#">触发邮定义</a>
                                         <!-- Para -->
                                         <p>和用户在网站和app中行为相关的邮件。如注册、社交消息、生日提醒等。<br />与用户的某个明确动作无关，但是是用户在网站积累的行为产生的内容。比如信用卡账单、用户定制的个性化内容精选。</p>
                                      </li>
                                      <!-- List #2 and so on.... -->
                                      <li>
                                         <a href="#">批量发送定义</a>
                                         <p>批量发送是指内容度极度相似，且和用户在网站或者app行为无关的，大批量发送行为。</p>
                                      </li>
                                 </ol>
                             </div>
                  </div>
                </div>
                  <!-- Widget footer -->
                  <div class="widget-foot">
                    <p><a href="http://send.sohu.com/">SendCloud官网</a></p>
                  </div>

              </div>  

            </div>
            <div class="span4">

              <!-- Widget -->
              <div class="widget wblue">
                <!-- Widget title -->
                <div class="widget-head">
                  <div class="pull-left">Contact</div>
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
                                <i class="icon-phone"></i> 电话<strong>:</strong> 027-86655996-4045
                                <hr />
                                <i class="icon-envelope-alt"></i> 邮件<strong>:</strong> sendcloud-service@sohu-inc.com
                                <hr />
                                <i class="icon-home"></i> 官方咨询群<strong>:</strong> 203716493
                                <hr />
                                <i class="icon-home"></i> QQ<strong>:</strong> 2481785559
                                <hr />
                                <i class="icon-time"></i> 客服的服务时间<strong>:</strong> 5*9小时线上及时服务（周一至周五 09:00-18:00） 7*14小时电话响应（8:30-22:30）
                                <hr />
                                <!-- Button -->
                                <a href="mailto:sendcloud-service@sohu-inc.com" class="btn btn-danger">联系SendCloud</a> <a href="http://send.sohu.com/help" target="_blank" class="btn btn-success">SendCloud FAQ</a>
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