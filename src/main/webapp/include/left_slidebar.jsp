<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jstl/fn"%>
<%
String selected_item = request.getParameter("selected_item");
%>
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

			<!-- Menu with sub menu -->
            <li class="has_submenu nred<%if(selected_item.startsWith("sendcloud")) {%> current open<% }%>">
              <a href="#">
                <!-- Menu name with icon -->
                <i class="icon-th"></i> SendCloud
                <!-- Icon for dropdown -->
                <span class="pull-right"><i class="icon-angle-right"></i></span>
              </a>

              <ul>
                <li><a href="./sendcloud_intro.jsp">简介</a></li>
                <li><a href="./sendcloud_how2use.jsp">使用介绍</a></li>
                <li><a href="./initSCTask.do">任务</a></li>
                <li><a href="./initSCSetting.do">设置</a></li>
              </ul>
            </li>

            <!-- Menu with sub menu -->
            <li class="has_submenu nlightblue<%if("QQ".equals(selected_item)) {%> current open<% }%>">
              <a href="#">
                <!-- Menu name with icon -->
                <i class="icon-th"></i> Widgets 
                <!-- Icon for dropdown -->
                <span class="pull-right"><i class="icon-angle-right"></i></span>
              </a>

              <ul>
                <li><a href="./qq.jsp">Widgets #1</a></li>
                <li><a href="widgets2.html">Widgets #2</a></li>
              </ul>
            </li>
			
		  </ul>

        </div>

    </div>

<!-- Sidebar ends -->
