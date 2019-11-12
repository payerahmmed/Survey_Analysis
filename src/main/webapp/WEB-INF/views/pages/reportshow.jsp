<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../layout/header.jsp" />

<div class="content">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-7">
				<form action="<c:url value="/report"/>" method="post">
					<div class="form-group col-md-5">
						<label for="name">Registration from report </label> <input type="text"
							id="name" name="username" placeholder="Enter your name"
							class="form-control" />
					</div>					
					<div class="form-group">
						<input type="submit" value="Show" class="btn btn-success" />
					</div>
				</form>
				<form action="<c:url value="/pdf"/>" method="post">
					<div class="form-group">
						<label for="name">Product analysis report</label> 
					</div>					
					<div class="form-group">
						<input type="submit" value="Show" class="btn btn-success" />
					</div>
				</form>
				<form action="<c:url value="/salaryre"/>" method="post">
					<div class="form-group">
						<label for="name">Employee salary report</label> 
					</div>					
					<div class="form-group">
						<input type="submit" value="Show" class="btn btn-success" />
					</div>
				</form>
				<form action="<c:url value="/employe"/>" method="post">
					<div class="form-group col-md-7">
						<label for="name">Employee Registration Report </label> <input type="text"
							id="name" name="userId" placeholder="Enter employee id"
							class="form-control" />
					</div>					
					<div class="form-group">
						<input type="submit" value="Show" class="btn btn-success" />
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<jsp:include page="../layout/footer.jsp" />