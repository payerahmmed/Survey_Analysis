<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../layout/header.jsp" />

<div class="content">
	<div class="container">
		<div class="row ">
			<div class="col-md-10">
				<table class="table table-bordered table-dark table-hover">
					<thead>
						<tr>
							<td>ID</td>
							<td>User name</td>
							<td>First name</td>
							<td>Last name</td>
							<td>Email</td>
							<td>Password</td>
							<td>Contact</td>
							<td>Gender</td>
							<td>Age</td>
							<td>Address</td>
							<td>Action</td>
							<td>Action</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="user" items="${userList}">
							<tr>
								<td>${user.id}</td>
								<td>${user.username}</td>
								<td>${user.firstname}</td>
								<td>${user.lastname}</td>
								<td>${user.email}</td>
								<td>${user.password}</td>
								<td>${user.contact}</td>
								<td>${user.gender}</td>
								<td>${user.age}</td>
								<td>${user.address}</td>
								<td>
								<a class="btn btn-success" href="<c:url value="/registration/edit/${user.id}"/>"><i class="fa fa-edit"></i></a>
								</td>
								<td>
								<a class="btn btn-danger" href="<c:url value="/registration/delete/${user.id}"/>"><i class="fa fa-trash"></i></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

<jsp:include page="../layout/footer.jsp" />