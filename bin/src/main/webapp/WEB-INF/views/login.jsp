<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<link href="/assets/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-5">
				<form action="/login" method="post">
					<h3>Login</h3>
					<div class="form-group">
						<label>Username</label> <input type="text" name="username"
							placeholder="Enter your name" class="form-control" />
					</div>
					<div class="form-group">
						<label>Password</label> <input type="password" name="password"
							class="form-control" placeholder="Enter your password" />
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-success" value="Submit" />
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>