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
	      <h2 class="pull-left">SendCloud任务
          <!-- page meta -->
          <span class="page-meta"></span>
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
	                    <a href="#create_sc_task" role="button" class="btn btn-danger" data-toggle="modal">创建任务</a>
	                    <!-- Modal -->
	                    <div id="create_sc_task" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	                      <div class="modal-header">
	                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	                        <h3 id="myModalLabel">创建任务</h3>
	                      </div>
	                      <div class="modal-body">
			              	<form id="sc_create_task_form" class="form-horizontal" action="createTask.do" method="post">
		                      <div class="control-group">
		                        <label class="control-label" for="sc_task_name">任务名称</label>
		                        <div class="controls">
		                          <input type="text" id="sc_task_name" name="sc_task_name" placeholder="">
		                          <span class="help-inline"></span>
		                        </div>
		                      </div>
		                      <div class="control-group">
		                        <label class="control-label" for="sc_task_model_name">模板名称</label>
		                        <div class="controls">
		                        	<input type="text" id="sc_task_model_name" name="sc_task_model_name" placeholder="">
		                        	<span class="help-inline"></span>
		                        </div>
		                      </div>
		                      <div class="control-group">
		                        <label class="control-label" for="sc_task_label_id">标签ID</label>
		                        <div class="controls">
		                          <input type="text" id="sc_task_label_id" name="sc_task_label_id">
		                          <span class="help-inline"></span>
		                        </div>
		                      </div>
		                      <div class="control-group">
		                        <label class="control-label" for="sc_task_alias_address">邮件列表别名地址</label>
		                        <div class="controls">
		                          <input type="text" id="sc_task_alias_address" name="sc_task_alias_address">
		                          <span class="help-inline"></span>
		                        </div>
		                      </div>
		                      <div class="control-group">
		                        <label class="control-label" for="sc_task_from">发信人</label>
		                        <div class="controls">
		                          <input type="text" id="sc_task_from" name="sc_task_from">
		                          <span class="help-inline"></span>
		                        </div>
		                      </div>
		                      <div class="control-group">
		                        <label class="control-label" for="sc_task_subject">主题</label>
		                        <div class="controls">
		                          <input type="text" id="sc_task_subject" name="sc_task_subject">
		                          <span class="help-inline"></span>
		                        </div>
		                      </div>
		                      <div class="control-group">
		                        <label class="control-label" for="sc_task_subaccount">子账号</label>
		                        <div class="controls">
		                          <input type="text" id="sc_task_subaccount" name="sc_task_subaccount">
		                          <span class="help-inline"></span>
		                        </div>
		                      </div>
		                      <div class="control-group">
		                        <label class="control-label" for="sc_task_psw">子账号密码</label>
		                        <div class="controls">
		                          <input type="password" id="sc_task_psw" name="sc_task_psw">
		                          <span class="help-inline"></span>
		                        </div>
		                      </div>
		                      <hr>
		                    </form>
	                      </div>
	                      <div class="modal-footer">
	                      	<button class="btn btn-primary" data-dismiss="modal" aria-hidden="true" id="sc_create_tesk_submit">保存</button>
	                        <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
	                      </div>
	                    </div>
                        <hr />
                        <table class="table   table-bordered">
                          <thead>
                            <tr>
                              <th>#</th>
                              <th>任务名称</th>
                              <th>标签ID</th>
                              <th>请求个数</th>
                              <th>状态</th>
                              <th>提交时间</th>
                              <th>更新时间</th>
                              <th>操作</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>1</td>
                              <td>Sony Xperia Pro X1242</td>
                              <td>5</td>
                              <td>$534</td>
                              <td>12.5%</td>
                              <td>$2424</td>
                              <td>$2424</td>
                              <td>
                              	<!-- Button to trigger modal -->
			                    <a href="#myModal" role="button" class="btn btn-success" data-toggle="modal">查看</a>
			                    <!-- Modal -->
			                    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			                      <div class="modal-header">
			                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			                        <h3 id="myModalLabel">任务1</h3>
			                      </div>
			                      <div class="modal-body">
			                        <p>One fine body…</p>
			                      </div>
			                      <div class="modal-footer">
			                        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
			                      </div>
			                    </div>
                              </td>
                            </tr>     
                            <tr>
                              <td>2</td>
                              <td>Samsung Galaxy Pro</td>
                              <td>2</td>
                              <td>$244</td>
                              <td>12.5%</td>
                              <td>$5342</td>
                              <td>$2424</td>
                              <td><button type="submit" class="btn btn-info">查看</button></td>
                            </tr>  
                            <tr>
                              <td>3</td>
                              <td>Apple iPhone 5G - Black</td>
                              <td>7</td>
                              <td>$434</td>
                              <td>12.5%</td>
                              <td>$34524</td>
                              <td>$2424</td>
                              <td><button type="submit" class="btn btn-info">查看</button></td>
                            </tr>  
                            <tr>
                              <td>4</td>
                              <td>Nokia Lumina Tipo</td>
                              <td>4</td>
                              <td>$754</td>
                              <td>12.5%</td>
                              <td>$8866</td>
                              <td>$2424</td>
                              <td><button type="submit" class="btn btn-info">查看</button></td>
                            </tr>  
                            <tr>
                              <td>5</td>
                              <td>Motorola Defy 29323</td>
                              <td>5</td>
                              <td>$644</td>
                              <td>12.5%</td>
                              <td>$88865</td>
                              <td>$2424</td>
                              <td><button type="submit" class="btn btn-info">查看</button></td>
                            </tr>  
                            <tr>
                              <td>6</td>
                              <td>Micromax Funbook</td>
                              <td>9</td>
                              <td>$434</td>
                              <td>12.5%</td>
                              <td>$53535</td>
                              <td>$2424</td>
                              <td><button type="submit" class="btn btn-info">查看</button></td>
                            </tr>                                                                                                                                                                
                            <tr>  
                              <td></td>
                              <td></td>
                              <td></td>
                              <td></td>
                              <td><strong>Total</strong></td>
                              <td><strong>$2405</strong></td>
                              <td>$2424</td>
                              <td>$2424</td>
                            </tr>
                          </tbody>
                        </table>

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

$("#sc_create_tesk_submit").click(function() {
	$("#sc_create_task_form").submit();
}) ;

</script>


<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div></body></html>