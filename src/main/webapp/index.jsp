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

<div class="navbar navbar-fixed-top navbar-inverse">
  <div class="navbar-inner">
    <div class="container">
      <!-- Menu button for smallar screens -->
      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
      </a>
      <!-- Site name for smallar screens -->
      <a href="http://blog.bd17kaka.net" class="brand"><span class="bold">bd17kaka</span></a>

      <!-- Navigation starts -->
      <div class="nav-collapse collapse">        

        <!-- Links -->
        <ul class="nav pull-right">
          <li class="dropdown pull-right">            
            <a data-toggle="dropdown" class="dropdown-toggle" href="http://responsivewebinc.com/premium/metroking/#">
              <img src="./img/user.jpg" alt="" class="nav-user-pic"> Admin <b class="caret"></b>              
            </a>
            
            <!-- Dropdown menu -->
            <ul class="dropdown-menu">
              <li><a href="#"><i class="icon-user"></i> 个人资料</a></li>
              <li><a href="#"><i class="icon-cogs"></i> 设置</a></li>
              <li><a href="#"><i class="icon-off"></i> 退出</a></li>
            </ul>
          </li>
          
        </ul>

        <!-- Notifications -->
        <ul class="nav pull-right">
          
          <!-- Comment button with number of latest comments count -->
            <li class="dropdown dropdown-big">
              <a class="dropdown-toggle" href="http://responsivewebinc.com/premium/metroking/#" data-toggle="dropdown">
                <i class="icon-comments"></i> Chats <span class="badge badge-info">6</span> 
              </a>

                <ul class="dropdown-menu">
                  <li>
                    <!-- Heading - h5 -->
                    <h5><i class="icon-comments"></i> Chats</h5>
                    <!-- Use hr tag to add border -->
                    <hr>
                  </li>
                  <li>
                    <!-- List item heading h6 -->
                    <a href="http://responsivewebinc.com/premium/metroking/#">Hi :)</a> <span class="label label-warning pull-right">10:42</span>
                    <div class="clearfix"></div>
                    <hr>
                  </li>
                  <li>
                    <a href="http://responsivewebinc.com/premium/metroking/#">How are you?</a> <span class="label label-warning pull-right">20:42</span>
                    <div class="clearfix"></div>
                    <hr>
                  </li>
                  <li>
                    <a href="http://responsivewebinc.com/premium/metroking/#">What are you doing?</a> <span class="label label-warning pull-right">14:42</span>
                    <div class="clearfix"></div>
                    <hr>
                  </li>                  
                  <li>
                    <div class="drop-foot">
                      <a href="http://responsivewebinc.com/premium/metroking/#">View All</a>
                    </div>
                  </li>                                    
                </ul>
            </li>

            <!-- Message button with number of latest messages count-->
            <li class="dropdown dropdown-big">
              <a class="dropdown-toggle" href="http://responsivewebinc.com/premium/metroking/#" data-toggle="dropdown">
                <i class="icon-envelope-alt"></i> Inbox <span class="badge badge-important">6</span> 
              </a>

                <ul class="dropdown-menu">
                  <li>
                    <!-- Heading - h5 -->
                    <h5><i class="icon-envelope-alt"></i> Messages</h5>
                    <!-- Use hr tag to add border -->
                    <hr>
                  </li>
                  <li>
                    <!-- List item heading h6 -->
                    <a href="http://responsivewebinc.com/premium/metroking/#">Hello how are you?</a>
                    <!-- List item para -->
                    <p>Quisque eu consectetur erat eget  semper...</p>
                    <hr>
                  </li>
                  <li>
                    <a href="http://responsivewebinc.com/premium/metroking/#">Today is wonderful?</a>
                    <p>Quisque eu consectetur erat eget  semper...</p>
                    <hr>
                  </li>
                  <li>
                    <div class="drop-foot">
                      <a href="http://responsivewebinc.com/premium/metroking/#">View All</a>
                    </div>
                  </li>                                    
                </ul>
            </li>

            <!-- Members button with number of latest members count -->
            <li class="dropdown dropdown-big">
              <a class="dropdown-toggle" href="http://responsivewebinc.com/premium/metroking/#" data-toggle="dropdown">
                <i class="icon-user"></i> Users <span class="badge badge-success">6</span> 
              </a>

                <ul class="dropdown-menu">
                  <li>
                    <!-- Heading - h5 -->
                    <h5><i class="icon-user"></i> Users</h5>
                    <!-- Use hr tag to add border -->
                    <hr>
                  </li>
                  <li>
                    <!-- List item heading h6-->
                    <a href="http://responsivewebinc.com/premium/metroking/#">Ravi Kumar</a> <span class="label label-warning pull-right">Free</span>
                    <div class="clearfix"></div>
                    <hr>
                  </li>
                  <li>
                    <a href="http://responsivewebinc.com/premium/metroking/#">Balaji</a> <span class="label label-important pull-right">Premium</span>
                    <div class="clearfix"></div>
                    <hr>
                  </li>
                  <li>
                    <a href="http://responsivewebinc.com/premium/metroking/#">Kumarasamy</a> <span class="label label-warning pull-right">Free</span>
                    <div class="clearfix"></div>
                    <hr>
                  </li>                  
                  <li>
                    <div class="drop-foot">
                      <a href="http://responsivewebinc.com/premium/metroking/#">View All</a>
                    </div>
                  </li>                                    
                </ul>
            </li> 

        </ul>

      </div>

    </div>
  </div>
</div>


<!-- Main content starts -->

<div class="content">

	<!-- Sidebar -->
	<jsp:include page="./include/left_slidebar.jsp">
       	<jsp:param value="SendCloud" name="selected_item"/>
 	</jsp:include>
 	<!-- Sidebar ends -->

  	<!-- Main bar -->
  	<div class="mainbar">
      
	    <!-- Page heading -->
	    <div class="page-head">
        <!-- Page heading -->
	      <h2 class="pull-left">Dashboard 
          <!-- page meta -->
          <span class="page-meta">Something Goes Here</span>
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
            <div class="span6">
              <div class="widget wblue">
                <div class="widget-head">
                  <div class="pull-left">Curve Chart</div>
                  <div class="widget-icons pull-right">
                    <a href="http://responsivewebinc.com/premium/metroking/#" class="wminimize"><i class="icon-chevron-up"></i></a> 
                    <a href="http://responsivewebinc.com/premium/metroking/#" class="wclose"><i class="icon-remove"></i></a>
                  </div>
                  <div class="clearfix"></div>
                </div>

                <div class="widget-content">
                  <div class="padd">
                    
                    <!-- Curve chart -->

                    <div id="curve-chart" style="padding: 0px; position: relative;"><canvas class="base" width="463" height="250"></canvas><canvas class="overlay" width="463" height="250" style="position: absolute; left: 0px; top: 0px;"></canvas><div class="tickLabels" style="font-size:smaller"><div class="xAxis x1Axis" style="color:#545454"><div class="tickLabel" style="position:absolute;text-align:center;left:-2px;top:227px;width:57px">0</div><div class="tickLabel" style="position:absolute;text-align:center;left:62px;top:227px;width:57px">2</div><div class="tickLabel" style="position:absolute;text-align:center;left:126px;top:227px;width:57px">4</div><div class="tickLabel" style="position:absolute;text-align:center;left:190px;top:227px;width:57px">6</div><div class="tickLabel" style="position:absolute;text-align:center;left:254px;top:227px;width:57px">8</div><div class="tickLabel" style="position:absolute;text-align:center;left:318px;top:227px;width:57px">10</div><div class="tickLabel" style="position:absolute;text-align:center;left:382px;top:227px;width:57px">12</div></div><div class="yAxis y1Axis" style="color:#545454"><div class="tickLabel" style="position:absolute;text-align:right;top:192px;right:442px;width:21px">-1.0</div><div class="tickLabel" style="position:absolute;text-align:right;top:147px;right:442px;width:21px">-0.5</div><div class="tickLabel" style="position:absolute;text-align:right;top:102px;right:442px;width:21px">0.0</div><div class="tickLabel" style="position:absolute;text-align:right;top:56px;right:442px;width:21px">0.5</div><div class="tickLabel" style="position:absolute;text-align:right;top:11px;right:442px;width:21px">1.0</div></div></div><div class="legend"><div style="position: absolute; width: 55px; height: 50px; top: 9px; right: 9px; background-color: rgb(255, 255, 255); opacity: 0.85;"> </div><table style="position:absolute;top:9px;right:9px;;font-size:smaller;color:#545454"><tbody><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(250,48,49);overflow:hidden"></div></div></td><td class="legendLabel">sin(x)</td></tr><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(67,200,60);overflow:hidden"></div></div></td><td class="legendLabel">cos(x)</td></tr></tbody></table></div></div>

                    <hr>
                    <!-- Hover location -->
                    <div id="hoverdata">Mouse hovers at
                    (<span id="x">0</span>, <span id="y">0</span>). <span id="clickdata"></span></div>          

                    <!-- Skil this line. <div class="uni"><input id="enableTooltip" type="checkbox">Enable tooltip</div> -->

                  </div>
                </div>
                <div class="widget-foot">
                    <!-- Footer goes here -->
                </div>
              </div> 
            </div>
            <div class="span6">
              <div class="widget wgreen">
                <div class="widget-head">
                  <div class="pull-left">Quick Post</div>
                  <div class="widget-icons pull-right">
                    <a href="http://responsivewebinc.com/premium/metroking/#" class="wminimize"><i class="icon-chevron-up"></i></a> 
                    <a href="http://responsivewebinc.com/premium/metroking/#" class="wclose"><i class="icon-remove"></i></a>
                  </div>  
                  <div class="clearfix"></div>
                </div>
                
                <div class="widget-content">
                  <div class="padd">
                    
                      <div class="form quick-post">
                                      <!-- Edit profile form (not working)-->
                                      <form class="form-horizontal">
                                          <!-- Title -->
                                          <div class="control-group">
                                            <label class="control-label" for="title">Title</label>
                                            <div class="controls">
                                              <input type="text" class="input-large" id="title">
                                            </div>
                                          </div>   
                                          <!-- Content -->
                                          <div class="control-group">
                                            <label class="control-label" for="content">Content</label>
                                            <div class="controls">
                                              <textarea class="input-large" id="content"></textarea>
                                            </div>
                                          </div>                           
                                          <!-- Cateogry -->
                                          <div class="control-group">
                                            <label class="control-label">Category</label>
                                            <div class="controls">                               
                                                <select>
                                                  <option value="">- Choose Cateogry -</option>
                                                  <option value="1">General</option>
                                                  <option value="2">News</option>
                                                  <option value="3">Media</option>
                                                  <option value="4">Funny</option>
                                                </select>  
                                            </div>
                                          </div>              
                                          <!-- Tags -->
                                          <div class="control-group">
                                            <label class="control-label" for="tags">Tags</label>
                                            <div class="controls">
                                              <input type="text" class="input-large" id="tags">
                                            </div>
                                          </div>
                                          
                                          <!-- Buttons -->
                                          <div class="form-actions">
                                             <!-- Buttons -->
                                            <button type="submit" class="btn btn-info">Publish</button>
                                            <button type="submit" class="btn">Save Draft</button>
                                            <button type="reset" class="btn">Reset</button>
                                          </div>
                                      </form>
                                    </div>
                  

                  </div>
                </div>

                <div class="widget-foot">
                    <!-- Footer goes here -->
                </div>

              </div> 
            </div>            
          </div>  


        </div>
		  </div>

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

window.location.href="sendcloud_intro.jsp";

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