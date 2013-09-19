<%@page import="com.bd17kaka.marketing.constant.ConstatVar"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%@page import="com.bd17kaka.marketing.po.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jstl/fn"%>
<%
UserInfo userInfo = (UserInfo) request.getSession().getAttribute(ConstatVar.LOGIN_SESSION);
%>
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
      <a href="http://blog.bd17kaka.net" class="brand"><span class="bold">Anthor</span></a>

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
	           	<% if(null != userInfo) {%>
	            	<li><a href="#"><i class="icon-user"></i>我的信息</a></li>
	              	<li><a href="logout.do"><i class="icon-off"></i>退出</a></li>
            	<% } else {%>
	              	<li><a href="login.jsp"><i class="icon-off"></i>登陆</a></li>
	              	<li><a href="register.jsp"><i class="icon-off"></i>注册</a></li>
            	<% }%>
            </ul>
          </li>
          
        </ul>
        
      </div>
    </div>
  </div>
</div>