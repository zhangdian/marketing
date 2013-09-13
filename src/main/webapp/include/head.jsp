<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jstl/fn"%>
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
              <li><a href="#"><i class="icon-user"></i>我的信息</a></li>
              <li><a href="#"><i class="icon-cogs"></i>设置</a></li>
              <li><a href="#"><i class="icon-off"></i>退出</a></li>
              <li><a href="#"><i class="icon-off"></i>注册</a></li>
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