<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
	<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style>
</head>
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
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
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
                    <a href="#">Hi :)</a> <span class="label label-warning pull-right">10:42</span>
                    <div class="clearfix"></div>
                    <hr>
                  </li>
                  <li>
                    <a href="#">How are you?</a> <span class="label label-warning pull-right">20:42</span>
                    <div class="clearfix"></div>
                    <hr>
                  </li>
                  <li>
                    <a href="#">What are you doing?</a> <span class="label label-warning pull-right">14:42</span>
                    <div class="clearfix"></div>
                    <hr>
                  </li>                  
                  <li>
                    <div class="drop-foot">
                      <a href="#">View All</a>
                    </div>
                  </li>                                    
                </ul>
            </li>

            <!-- Message button with number of latest messages count-->
            <li class="dropdown dropdown-big">
              <a class="dropdown-toggle" href="#" data-toggle="dropdown">
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
                    <a href="#">Hello how are you?</a>
                    <!-- List item para -->
                    <p>Quisque eu consectetur erat eget  semper...</p>
                    <hr>
                  </li>
                  <li>
                    <a href="#">Today is wonderful?</a>
                    <p>Quisque eu consectetur erat eget  semper...</p>
                    <hr>
                  </li>
                  <li>
                    <div class="drop-foot">
                      <a href="#">View All</a>
                    </div>
                  </li>                                    
                </ul>
            </li>

            <!-- Members button with number of latest members count -->
            <li class="dropdown dropdown-big">
              <a class="dropdown-toggle" href="#" data-toggle="dropdown">
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
                    <a href="#">Ravi Kumar</a> <span class="label label-warning pull-right">Free</span>
                    <div class="clearfix"></div>
                    <hr>
                  </li>
                  <li>
                    <a href="#">Balaji</a> <span class="label label-important pull-right">Premium</span>
                    <div class="clearfix"></div>
                    <hr>
                  </li>
                  <li>
                    <a href="#">Kumarasamy</a> <span class="label label-warning pull-right">Free</span>
                    <div class="clearfix"></div>
                    <hr>
                  </li>                  
                  <li>
                    <div class="drop-foot">
                      <a href="#">View All</a>
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
    <div class="sidebar">
        <div class="sidebar-dropdown"><a href="#">Navigation</a></div>

        <div class="sidebar-inner">



          <!-- Search form -->
          <div class="sidebar-widget">
            <form class="form-inline">
              <div class="input-append row-fluid">
                <input type="text" class="span8" placeholder="Search">
                <button type="submit" class="btn btn-info">Search</button>
              </div>
            </form>
          </div>

          <!--- Sidebar navigation -->
          <!-- If the main navigation has sub navigation, then add the class "has_submenu" to "li" of main navigation. -->
          <ul class="navi">

            <!-- Use the class nred, ngreen, nblue, nlightblue, nviolet or norange to add background color. You need to use this in <li> tag. -->

            <li class="nred current"><a href="#"><i class="icon-desktop"></i> Dashboard</a></li>

            <!-- Menu with sub menu -->
            <li class="has_submenu nlightblue">
              <a href="#">
                <!-- Menu name with icon -->
                <i class="icon-th"></i> Widgets 
                <!-- Icon for dropdown -->
                <span class="pull-right"><i class="icon-angle-right"></i></span>
              </a>

              <ul>
                <li><a href="http://responsivewebinc.com/premium/metroking/widgets1.html">Widgets #1</a></li>
                <li><a href="http://responsivewebinc.com/premium/metroking/widgets2.html">Widgets #2</a></li>
              </ul>
            </li>

          </ul>

          <!-- Date -->

          <div class="sidebar-widget">
            <div id="todaydate" class="hasDatepicker"><div class="ui-datepicker-inline ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" style="display: block;"><div class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-all"><a class="ui-datepicker-prev ui-corner-all" data-handler="prev" data-event="click" title="Prev"><span class="ui-icon ui-icon-circle-triangle-w">Prev</span></a><a class="ui-datepicker-next ui-corner-all" data-handler="next" data-event="click" title="Next"><span class="ui-icon ui-icon-circle-triangle-e">Next</span></a><div class="ui-datepicker-title"><span class="ui-datepicker-month">September</span>&nbsp;<span class="ui-datepicker-year">2013</span></div></div><table class="ui-datepicker-calendar"><thead><tr><th class="ui-datepicker-week-end"><span title="Sunday">Su</span></th><th><span title="Monday">Mo</span></th><th><span title="Tuesday">Tu</span></th><th><span title="Wednesday">We</span></th><th><span title="Thursday">Th</span></th><th><span title="Friday">Fr</span></th><th class="ui-datepicker-week-end"><span title="Saturday">Sa</span></th></tr></thead><tbody><tr><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">1</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">2</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">3</a></td><td class=" ui-datepicker-days-cell-over  ui-datepicker-current-day ui-datepicker-today" data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default ui-state-highlight ui-state-active ui-state-hover" href="http://responsivewebinc.com/premium/metroking/#">4</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">5</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">6</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">7</a></td></tr><tr><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">8</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">9</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">10</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">11</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">12</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">13</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">14</a></td></tr><tr><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">15</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">16</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">17</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">18</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">19</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">20</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">21</a></td></tr><tr><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">22</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">23</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">24</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">25</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">26</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">27</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">28</a></td></tr><tr><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">29</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="8" data-year="2013"><a class="ui-state-default" href="http://responsivewebinc.com/premium/metroking/#">30</a></td><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td><td class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td></tr></tbody></table></div></div>
          </div>

        </div>

    </div>

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

          <!-- Today status. jQuery Sparkline plugin used. -->

          <div class="row-fluid">
            <div class="span12"> 
              <!-- List starts -->
              <ul class="today-datas">

                <!-- List #1 -->
                <li class="bred">
                  <!-- Graph -->
                  <div class="pull-left"><span id="todayspark1" class="spark"><canvas width="103" height="50" style="display: inline-block; width: 103px; height: 50px; vertical-align: top;"></canvas></span></div>
                  <!-- Text -->
                  <div class="datas-text pull-right"><span class="bold">12,000</span> Visitors/Day</div>

                  <div class="clearfix"></div>
                </li>

                <li class="bgreen">
                  <!-- Graph -->
                  <div class="pull-left"><i class="icon-group"></i></div>
                  <!-- Text -->
                  <div class="datas-text pull-right"><span class="bold">30,000</span> Members</div>

                  <div class="clearfix"></div>
                </li>

                <li class="blightblue">
                  <!-- Graph -->
                  <div class="pull-left"><span id="todayspark2" class="spark"><canvas width="103" height="50" style="display: inline-block; width: 103px; height: 50px; vertical-align: top;"></canvas></span></div>
                  <!-- Text -->
                  <div class="datas-text pull-right"><span class="bold">15.66%</span> Bounce Rate</div>

                  <div class="clearfix"></div>
                </li>

                <li class="bviolet">
                  <!-- Graph -->
                  <div class="pull-left"><span id="todayspark3" class="spark"><canvas width="170" height="50" style="display: inline-block; width: 170px; height: 50px; vertical-align: top;"></canvas></span></div>
                  <!-- Text -->
                  <div class="datas-text pull-right"><span class="bold">$22,000</span> Total Profit</div>

                  <div class="clearfix"></div>
                </li> 
 
              </ul> 
            </div>
          </div>

          <!-- Today status ends -->

          <!-- Dashboard Graph starts -->

          <div class="row-fluid">
            <div class="span8">

              <!-- Widget -->
              <div class="widget wlightblue">
                <!-- Widget head -->
                <div class="widget-head">
                  <div class="pull-left">Dashboard</div>
                  <div class="widget-icons pull-right">
                    <a href="http://responsivewebinc.com/premium/metroking/#" class="wminimize"><i class="icon-chevron-up"></i></a> 
                    <a href="http://responsivewebinc.com/premium/metroking/#" class="wclose"><i class="icon-remove"></i></a>
                  </div>
                  <div class="clearfix"></div>
                </div>             

                <!-- Widget content -->
                <div class="widget-content">
                  <div class="padd">

                    <!-- Bar chart (Blue color). jQuery Flot plugin used. -->
                    <div id="bar-chart" style="padding: 0px; position: relative;"><canvas class="base" width="637" height="283"></canvas><canvas class="overlay" width="637" height="283" style="position: absolute; left: 0px; top: 0px;"></canvas><div class="tickLabels" style="font-size:smaller"><div class="xAxis x1Axis" style="color:#777"><div class="tickLabel" style="position:absolute;text-align:center;left:-20px;top:260px;width:79px">0</div><div class="tickLabel" style="position:absolute;text-align:center;left:79px;top:260px;width:79px">5</div><div class="tickLabel" style="position:absolute;text-align:center;left:179px;top:260px;width:79px">10</div><div class="tickLabel" style="position:absolute;text-align:center;left:279px;top:260px;width:79px">15</div><div class="tickLabel" style="position:absolute;text-align:center;left:378px;top:260px;width:79px">20</div><div class="tickLabel" style="position:absolute;text-align:center;left:478px;top:260px;width:79px">25</div><div class="tickLabel" style="position:absolute;text-align:center;left:578px;top:260px;width:79px">30</div></div><div class="yAxis y1Axis" style="color:#777"><div class="tickLabel" style="position:absolute;text-align:right;top:244px;right:623px;width:14px">0</div><div class="tickLabel" style="position:absolute;text-align:right;top:202px;right:623px;width:14px">10</div><div class="tickLabel" style="position:absolute;text-align:right;top:160px;right:623px;width:14px">20</div><div class="tickLabel" style="position:absolute;text-align:right;top:118px;right:623px;width:14px">30</div><div class="tickLabel" style="position:absolute;text-align:right;top:76px;right:623px;width:14px">40</div><div class="tickLabel" style="position:absolute;text-align:right;top:34px;right:623px;width:14px">50</div><div class="tickLabel" style="position:absolute;text-align:right;top:-7px;right:623px;width:14px">60</div></div></div></div>


                  </div>
                </div>
                <!-- Widget ends -->

              </div>
            </div>

            <div class="span4">

              <div class="widget wblue">

                <div class="widget-head">
                  <div class="pull-left">Today Status</div>
                  <div class="widget-icons pull-right">
                    <a href="http://responsivewebinc.com/premium/metroking/#" class="wminimize"><i class="icon-chevron-up"></i></a> 
                    <a href="http://responsivewebinc.com/premium/metroking/#" class="wclose"><i class="icon-remove"></i></a>
                  </div>
                  <div class="clearfix"></div>
                </div>             

                <div class="widget-content">
                  <div class="padd">

                    <!-- Visitors, pageview, bounce rate, etc., Sparklines plugin used -->
                    <ul class="current-status">
                      <li>
                        <span id="status1"><canvas width="80" height="20" style="display: inline-block; width: 80px; height: 20px; vertical-align: top;"></canvas></span> <span class="bold">Visits : 2000</span> <i class="icon-arrow-up green"></i>
                      </li>
                      <li>
                        <span id="status2"><canvas width="80" height="20" style="display: inline-block; width: 80px; height: 20px; vertical-align: top;"></canvas></span> <span class="bold">Unique Visitors : 1,345</span> <i class="icon-arrow-down red"></i>
                      </li>
                      <li>
                        <span id="status3"><canvas width="80" height="20" style="display: inline-block; width: 80px; height: 20px; vertical-align: top;"></canvas></span> <span class="bold">Pageviews : 2000</span> <i class="icon-arrow-up green"></i>
                      </li>
                      <li>
                        <span id="status4"><canvas width="80" height="20" style="display: inline-block; width: 80px; height: 20px; vertical-align: top;"></canvas></span> <span class="bold">Pages / Visit : 2000</span> <i class="icon-arrow-down red"></i>
                      </li>
                      <li>
                        <span id="status5"><canvas width="80" height="20" style="display: inline-block; width: 80px; height: 20px; vertical-align: top;"></canvas></span> <span class="bold">Avg. Visit Duration : 2000</span> <i class="icon-arrow-down red"></i>
                      </li>
                      <li>
                        <span id="status6"><canvas width="80" height="20" style="display: inline-block; width: 80px; height: 20px; vertical-align: top;"></canvas></span> <span class="bold">Bounce Rate : 2000</span> <i class="icon-arrow-up green"></i>
                      </li>   
                      <li>
                        <span id="status7"><canvas width="80" height="20" style="display: inline-block; width: 80px; height: 20px; vertical-align: top;"></canvas></span> <span class="bold">% New Visits : 2000</span> <i class="icon-arrow-up green"></i>
                      </li>                                                                                                            
                    </ul>

                  </div>
                </div>

              </div>

            </div>
          </div>
          <!-- Dashboard graph ends -->

          <!-- Chats, File upload and Recent Comments -->
          <div class="row-fluid">

            <div class="span4">
              
              <!-- Chat Widget -->
              <div class="widget wgreen">
                <!-- Widget title -->
                <div class="widget-head">
                  <div class="pull-left">Chats</div>
                  <div class="widget-icons pull-right">
                    <a href="http://responsivewebinc.com/premium/metroking/#" class="wminimize"><i class="icon-chevron-up"></i></a> 
                    <a href="http://responsivewebinc.com/premium/metroking/#" class="wclose"><i class="icon-remove"></i></a>
                  </div>
                  <div class="clearfix"></div>
                </div>

                <div class="widget-content">
                  <!-- Widget content -->
                  <div class="padd">
                    
                    <ul class="chats">

                      <!-- Chat by us. Use the class "by-me". -->
                      <li class="by-me">
                        <!-- Use the class "pull-left" in avatar -->
                        <div class="avatar pull-left">
                          <img src="./img/user.jpg" alt="">
                        </div>

                        <div class="chat-content">
                          <!-- In meta area, first include "name" and then "time" -->
                          <div class="chat-meta">Ashok <span class="pull-right">3 hours ago</span></div>
                          Vivamus diam elit diam, consectetur dapibus adipiscing elit.
                          <div class="clearfix"></div>
                        </div>
                      </li> 

                      <!-- Chat by other. Use the class "by-other". -->
                      <li class="by-other">
                        <!-- Use the class "pull-right" in avatar -->
                        <div class="avatar pull-right">
                          <img src="./img/user.jpg" alt="">
                        </div>

                        <div class="chat-content">
                          <!-- In the chat meta, first include "time" then "name" -->
                          <div class="chat-meta">3 hours ago <span class="pull-right">Ravi</span></div>
                          Vivamus diam elit diam, consectetur fconsectetur dapibus adipiscing elit.
                          <div class="clearfix"></div>
                        </div>
                      </li>   

                      <li class="by-me">
                        <div class="avatar pull-left">
                          <img src="./img/user.jpg" alt="">
                        </div>

                        <div class="chat-content">
                          <div class="chat-meta">Ashok <span class="pull-right">4 hours ago</span></div>
                          Vivamus diam elit diam, consectetur fermentum sed dapibus eget, Vivamus consectetur dapibus adipiscing elit.
                          <div class="clearfix"></div>
                        </div>
                      </li>  

                      <li class="by-other">
                        <!-- Use the class "pull-right" in avatar -->
                        <div class="avatar pull-right">
                          <img src="./img/user.jpg" alt="">
                        </div>

                        <div class="chat-content">
                          <!-- In the chat meta, first include "time" then "name" -->
                          <div class="chat-meta">3 hours ago <span class="pull-right">Ravi</span></div>
                          Vivamus diam elit diam, consectetur fermentum sed dapibus eget, Vivamus consectetur dapibus adipiscing elit.
                          <div class="clearfix"></div>
                        </div>
                      </li>                                                                                  

                    </ul>

                  </div>
                </div>


                  <!-- Widget footer -->
                  <div class="widget-foot">
                      
                    <!-- Chat input box -->
                      <form class="form-inline">
                        <div class="input-append row-fluid">
                          <input type="text" class="span9" placeholder="Type your message">
                          <button type="submit" class="btn btn-info">Send</button>
                        </div>
                      </form>

                  </div>

              </div>

            </div>


            <!-- File Upload widget -->
            <div class="span4">

              <div class="widget wviolet">
                <!-- Widget title -->
                <div class="widget-head">
                  <div class="pull-left">File Upload</div>
                  <div class="widget-icons pull-right">
                    <a href="http://responsivewebinc.com/premium/metroking/#" class="wminimize"><i class="icon-chevron-up"></i></a> 
                    <a href="http://responsivewebinc.com/premium/metroking/#" class="wclose"><i class="icon-remove"></i></a>
                  </div>
                  <div class="clearfix"></div>
                </div>

                <div class="widget-content">
                  <!-- Widget content -->
                  <!-- File upload list starts -->
                  <ul class="file-upload">

                    <li>
                      <!-- Icon with file name -->
                      <strong><i class="icon-upload-alt green"></i> File_Name_Here.Mp3</strong>
                      <!-- Progress bar -->
                      <div class="progress progress-animated progress-striped">
                        <div class="bar bar-success" data-percentage="100" style="width: 63%;">63%</div>
                      </div>
                      <!-- Upload details -->
                      <div class="file-meta">3.3 of 5MB - 5 mins - 1MB/Sec</div>
                      <!-- Buttons -->
                      <div class="btn-grou1p">
                        <button class="btn btn-mini btn-success"><i class="icon-play"></i> </button>
                        <button class="btn btn-mini btn-primary"><i class="icon-pause"></i> </button>
                        <button class="btn btn-mini btn-danger pull-right"><i class="icon-remove"></i> </button>
                      </div>
                    </li>

                    <li>
                      <strong><i class="icon-ok red"></i> Second_File.Mp3</strong>
                      <div class="file-meta">5MB - 5 mins - Completed</div>
                    </li>

                    <li>
                      <strong><i class="icon-ok red"></i> Third_File_Here.Mp3</strong>
                      <div class="file-meta">5MB - 5 mins - Stopped</div>
                    </li>
                                                           
                  </ul>

                </div>

                <div class="widget-foot">
                  <button class="btn pull-right">Clear All</button>
                  <div class="clearfix"></div>
                </div>

              </div>

              <div class="widget worange">
                <!-- Widget title -->
                <div class="widget-head">
                  <div class="pull-left">Browsers</div>
                  <div class="widget-icons pull-right">
                    <a href="http://responsivewebinc.com/premium/metroking/#" class="wminimize"><i class="icon-chevron-up"></i></a> 
                    <a href="http://responsivewebinc.com/premium/metroking/#" class="wclose"><i class="icon-remove"></i></a>
                  </div>
                  <div class="clearfix"></div>
                </div>

                <div class="widget-content referrer">
                  <!-- Widget content -->
                  
                  <table class="table  table-bordered ">
                    <tbody><tr>
                      <th><center>#</center></th>
                      <th>Browsers</th>
                      <th>Visits</th>
                    </tr>
                    <tr>
                      <td><img src="./img/chrome.png" alt="">
                      </td><td>Google Chrome</td>
                      <td>3,005</td>
                    </tr> 
                    <tr>
                      <td><img src="./img/firefox.png" alt="">
                      </td><td>Mozilla Firefox</td>
                      <td>2,505</td>
                    </tr> 
                    <tr>
                      <td><img src="./img/ie.png" alt="">
                      </td><td>Internet Explorer</td>
                      <td>1,405</td>
                    </tr> 
                    <tr>
                      <td><img src="./img/opera.png" alt="">
                      </td><td>Opera</td>
                      <td>4,005</td>
                    </tr> 
                    <tr>
                      <td><img src="./img/safari.png" alt="">
                      </td><td>Safari</td>
                      <td>505</td>
                    </tr>                                                                    
                  </tbody></table>

                </div>
                  <div class="widget-foot">
                  </div>
              </div>

            </div>


            <!-- Project widget -->
            <div class="span4">
              <div class="widget wred">
                <!-- Widget title -->
                <div class="widget-head">
                  <div class="pull-left">Project</div>
                  <div class="widget-icons pull-right">
                    <a href="http://responsivewebinc.com/premium/metroking/#" class="wminimize"><i class="icon-chevron-up"></i></a> 
                    <a href="http://responsivewebinc.com/premium/metroking/#" class="wclose"><i class="icon-remove"></i></a>
                  </div>
                  <div class="clearfix"></div>
                </div>

                <div class="widget-content">
                  <!-- Widget content -->
                  <!-- Task list starts -->
                  <ul class="project">

                    <li>
                      <p>
                        <!-- Checkbox -->
                        <input value="check1" type="checkbox"> 
                        <!-- Name -->
                        Hospital Management System
                      </p>

                      <p class="p-meta">
                        <!-- Due date & % Completed -->
                        <span>Due : 26/2/2012 - 80% Done</span> 
                      </p>

                      <div class="progress progress-striped">
                        <!-- Progress bar -->
                        <div class="bar bar-danger" style="width: 80%;"></div>
                      </div>
                    </li>


                    <li>
                      <p>
                        <!-- Checkbox -->
                        <input value="check1" type="checkbox">
                        <!-- Name -->
                        School Download System
                      </p>

                      <p class="p-meta">
                        <!-- Due date & % Completed -->
                        <span>Due : 26/2/2012 - 80% Done</span> 
                      </p>

                      <div class="progress progress-striped">
                        <!-- Progress bar -->
                        <div class="bar bar-success" style="width: 50%;"></div>
                      </div>
                    </li>

                    <li>
                      <p>
                        <!-- Checkbox -->
                        <input value="check1" type="checkbox"> 
                        <!-- Name -->
                        Question and Answers Script
                      </p>

                      <p class="p-meta">
                        <!-- Due date & % Completed -->
                        <span>Due : 26/2/2012 - 80% Done</span> 
                      </p>

                      <div class="progress progress-striped">
                        <!-- Progress bar -->
                        <div class="bar bar-success" style="width: 40%;"></div>
                      </div>
                    </li>                                                              

                  </ul>
                  <div class="clearfix"></div>  


                </div>
                <div class="widget-foot">

                </div>
              </div>
            </div>


            <!-- Server Status -->
            <div class="span4">
              <div class="widget wlightblue">
                <!-- Widget title -->
                <div class="widget-head">
                  <div class="pull-left">Server Status</div>
                  <div class="widget-icons pull-right">
                    <a href="http://responsivewebinc.com/premium/metroking/#" class="wminimize"><i class="icon-chevron-up"></i></a> 
                    <a href="http://responsivewebinc.com/premium/metroking/#" class="wclose"><i class="icon-remove"></i></a>
                  </div>
                  <div class="clearfix"></div>
                </div>

                <div class="widget-content">
                  <!-- Widget content -->
                  
                  <table class="table  table-bordered ">
                    <tbody><tr>
                      <td>Domain</td>
                      <td>sitedomain.com</td>
                    </tr> 
                    <tr>
                      <td>IP Address</td>
                      <td>192.425.2.4</td>
                    </tr> 
                    <tr>
                      <td>Disk Space</td>
                      <td>600GB / 60000GB</td>
                    </tr> 
                    <tr>
                      <td>Bandwidth</td>
                      <td>1000GB / 2000GB</td>
                    </tr> 
                    <tr>
                      <td>PHP Version</td>
                      <td>5.1.1</td>
                    </tr> 
                    <tr>
                      <td>MySQL Databases</td>
                      <td>10</td>
                    </tr>                                                                                                     
                  </tbody></table>

                </div>
              </div>
            </div>


          </div>


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

		<!-- Matter ends -->

    </div>

   <!-- Mainbar ends -->	    	
   <div class="clearfix"></div>

</div>
<!-- Content ends -->

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


<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div></body>
</html>