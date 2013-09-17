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
							<i class="icon-lock"></i> Login
						</div>

						<div class="widget-content">
							<div class="padd">
								<!-- Login form -->
								<form class="form-horizontal">
									<!-- Email -->
									<div class="control-group">
										<label class="control-label" for="inputEmail">Email</label>
										<div class="controls">
											<input id="inputEmail" placeholder="Email" type="text">
										</div>
									</div>
									<!-- Password -->
									<div class="control-group">
										<label class="control-label" for="inputPassword">Password</label>
										<div class="controls">
											<input id="inputPassword" placeholder="Password"
												type="password">
										</div>
									</div>
									<!-- Remember me checkbox and sign in button -->
									<div class="control-group">
										<div class="controls">
											<label class="checkbox"> <input type="checkbox">
												记住我
											</label> <br>
											<button type="submit" class="btn btn-danger">登陆</button>
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

</body>
</html>