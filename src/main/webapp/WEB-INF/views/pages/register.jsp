<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../layout/header.jsp" />
<div class="content">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-7">
				<h3>User Registration From</h3>
				<form action="<c:url value="/userRegistration"/>" method="post">
					<div class="form-group">
						<label for="name">User name : </label> <input type="text"
							id="name" name="name" placeholder="Enter your name"
							class="form-control" />
					</div>
					<div class="form-group">
						<label for="fname">First Name : </label> <input type="text"
							name="fname" id="fname" placeholder="Enter your first name"
							class="form-control" />
					</div>
					<div class="form-group">
						<label for="lname">Last Name : </label> <input type="text"
							name="lname" id="lname" placeholder="Enter your last name"
							class="form-control" />
					</div>
					<div class="form-group">
						<label for="email">Email : </label> <input type="email" id="email"
							name="email" placeholder="Enter your email" class="form-control" />
					</div>
					<div class="form-group">
						<label for="pass">Password : </label> <input type="password"
							name="password" id="pass" placeholder="Enter your password"
							class="form-control" />
					</div>
					<div class="form-group">
						<label for="contact">Contact Number : </label> <input
							type="number" id="contact" name="contact"
							placeholder="Enter your contact number" class="form-control" />
					</div>
					<div class="form-group">
						<label for="gender">Gender : </label> <input type="radio"
							name="gender" id="gender" value="Male" checked /> Male <input
							type="radio" name="gender" id="gender" value="Female" /> Female
					</div>
					<div class="form-group">
						<label for="age">Age : </label> <input type="number" id="age"
							name="age" placeholder="Enter your age" class="form-control" />
					</div>
					<div class="form-group">
						<label for="address">Address : </label>
						<textarea id="address" placeholder="Enter your address"
							name="address" class="form-control"></textarea>
					</div>
					<div class="form-group">
						<input type="submit" value="Save" class="btn btn-success" />
					</div>

				</form>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../layout/footer.jsp" />





