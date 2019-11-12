<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>

<link rel="stylesheet" href="<c:url value="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-5">
				<form action="<c:url value="/login"/>" method="post">
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