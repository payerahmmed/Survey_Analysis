<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<jsp:include page="../layout/header.jsp" />
<div class="content">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-7">
				<h3>Registration Update From</h3>
				<form action="/userupdate" method="post">
					<div class="form-group">
						<label for="name">User name : </label> <input type="text"
							id="name" name="name" class="form-control"
							value="${userEntity.username}" /> <input type="hidden"
							id="userId" name="userId" value="${userEntity.id}" />
					</div>
					<div class="form-group">
						<label for="fname">First Name : </label> <input type="text"
							name="fname" id="fname" class="form-control"
							value="${userEntity.firstname}" />
					</div>
					<div class="form-group">
						<label for="lname">Last Name : </label> <input type="text"
							name="lname" id="lname" class="form-control"
							value="${userEntity.lastname}" />
					</div>
					<div class="form-group">
						<label for="email">Email : </label> <input type="email" id="email"
							name="email" class="form-control" value="${userEntity.email}" />
					</div>
					<div class="form-group">
						<label for="pass">Password : </label> <input type="password"
							name="password" id="pass" class="form-control"
							value="${userEntity.password}" />
					</div>
					<div class="form-group">
						<label for="contact">Contact Number : </label> <input
							type="number" id="contact" name="contact" class="form-control"
							value="${userEntity.contact}" />
					</div>
					<c:set var="male" value="${userEntity.gender}"/>
					<div class="form-group">
						<label for="gender">Gender : </label> 
						<input type="radio"
							name="gender" id="gender" value="Male" /> Male 
							<input
							type="radio" name="gender" id="gender"
							value="Female" /> Female
					</div>
					<div class="form-group">
						<label for="age">Age : </label> <input type="number" id="age"
							name="age" class="form-control" value="${userEntity.age}" />
					</div>
					<div class="form-group">
						<label for="address">Address : </label>
						<textarea id="address" placeholder="Enter your address"
							name="address" class="form-control">"${userEntity.address}"</textarea>
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





