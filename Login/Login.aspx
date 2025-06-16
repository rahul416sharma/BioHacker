<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login_Login" %>

<!DOCTYPE html>

<html xmlns="https://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Login</title>
<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&amp;display=swap" rel="stylesheet"/>
	<link rel="stylesheet" href="../../../../stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/A.style.css.pagespeed.cf.Qh1-GdQdyh.css"/>

	<script src="../Angular/Angular.js"></script>
	<script src="../Angular/Websitecontroller.js"></script>
</head>
<body ng-app="Website">
	<section class="ftco-section" ng-controller="Login">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
					<div class="wrap d-md-flex">
						<div class="img" style="background-image:url(../assets/logo-black-admin.jpg);width:500px;height:475px">
						</div>
						<div class="login-wrap p-4 p-md-5">
							<div class="d-flex">
								<div class="w-100">
									<h3 class="mb-4">Admin Login</h3>
								</div>
							</div>
							<form action="#" class="signin-form">
								<div class="form-group mb-3">
									<label class="label" for="name">Username</label>
									<input type="text" class="form-control" ng-model="UName" placeholder="Username" name="username" required/>
								</div>
								<div class="form-group mb-3">
									<label class="label" for="password">Password</label>
									<input type="password" class="form-control" ng-model="Upwd" placeholder="Password" name="password" required/>
								</div>
								<div class="form-group">
									<input type="button" class="form-control btn btn-primary rounded px-3" ng-click="clickme()" value="{{jackbtn}}"/>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script src="js/jquery.min.js"></script>
</body>
</html>
