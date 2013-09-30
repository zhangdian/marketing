<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<!-- Title and other stuffs -->
<title>登陆</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">

<!-- Stylesheets -->
<link href="./css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="login_files/font-awesome.css">
<link href="./css/style.css" rel="stylesheet">
<link href="./css/bootstrap-responsive.css" rel="stylesheet">

<!-- HTML5 Support for IE -->
<!--[if lt IE 9]>
  <script src="js/html5shim.js"></script>
  <![endif]-->

<!-- Favicon -->
<link rel="shortcut icon" href="./img/favicon.png">
</head>

<body>

	<!-- Form area -->
	<div class="admin-form">
		<div class="container-fluid">

			<div class="row-fluid">
				<div class="span12">
					<!-- Widget starts -->
					<div class="widget worange">
						<!-- Widget head -->
						<div class="widget-head">
							<i class="icon-lock"></i> 登陆
						</div>

						<div class="widget-content">
							<div class="padd">
								<!-- Login form -->
								<form class="form-horizontal" id="login_form">
									<div class="alert alert-error" style="display: none;" id="alert_msg">
                    				</div>
									<!-- UserName -->
									<div class="control-group">
										<label class="control-label" for="user_name">用户名</label>
										<div class="controls">
											<input id="user_name" name="user_name" placeholder="" type="text">
										</div>
									</div>
									<!-- Password -->
									<div class="control-group">
										<label class="control-label" for="passwd">密码</label>
										<div class="controls">
											<input id="passwd" name="passwd" placeholder="" type="password">
										</div>
									</div>
									<!-- Remember me checkbox and sign in button -->
									<div class="control-group">
										<div class="controls">
											<label class="checkbox"> <input type="checkbox">
												记住我
											</label> <br>
											<button type="button" class="btn btn-danger" id="login_submit" name="login_submit">登陆</button>
											<button type="reset" class="btn">重置</button>
										</div>
									</div>
								</form>

							</div>
						</div>
						<div class="widget-foot">
							没有注册? <a href="register.jsp">去注册</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- JS -->
	<script src="./js/jquery.js"></script>
	<script src="./js/bootstrap.js"></script>
	<script type="text/javascript">
	
		$("#login_submit").click(function() {
			
			var user_name = $("#login_form #user_name").val();
			var passwd = $("#login_form #passwd").val();
			
			/* TODO: 参数检查 */
			
			var params = "user_name="+user_name+"&passwd="+passwd;
			var surl = "/login.do";
			$.ajax({
				type : "POST",
				timeout : 60000,
				url : surl,
				dataType : "text",
				data : params,	
				cache : false,
				async : true,
				global : false,
				success : function(data) {
					data = $.trim(data);
					if (data == "success") {
						window.location.href = "index.jsp";
						return;
					} else if (data == "fail") {
						$("#login_form #alert_msg").html("登陆失败，请重新登陆");
					} else if (data == "error") {
						$("#login_form #alert_msg").html("参数错误，请检查参数后提交");
					} 
					$("#login_form #alert_msg").show();

				},
				error : function(t, v) {
					$("#login_form #alert_msg").html("系统错误"+t+v);
					$("#login_form #alert_msg").show();
				}
			});
			
		});
	</script>
</body>
</html>