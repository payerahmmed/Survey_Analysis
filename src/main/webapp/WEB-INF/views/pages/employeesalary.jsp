<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../layout/header.jsp" />
<div class="content">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-10">
				<form action="" method="post">
					<div class="form-group">
						<label>Search Employee</label> <input type="search" name="search"
							class="form-control" placeholder="Search Employee By Id" />
						<button type="submit" class="btn btn-success">Search</button>
					</div>
				</form>
				<form action="" method="post">
					<div class="form-group">
						<label>Employee Id</label> <input type="number" name="id"
							class="form-control" placeholder="" />
					</div>
					<div class="form-group">
						<label>Employee Name</label> <input type="text" name="eName"
							class="form-control" placeholder="Enter employee name" />
					</div>
					<div class="form-group">
						<label>Email address</label> <input type="email" name="eEmail"
							class="form-control" placeholder="Enter employee email" />
					</div>
					<div class="form-group">
						<label>Address</label> 
						<textarea placeholder="Enter your address"	name="eaddress" class="form-control"></textarea>					
					</div>
					<div class="form-group">
						<label>Basic Salary</label> <input type="number" name="eBasicSalary"
							class="form-control" placeholder="" />
					</div>
					<div class="form-group">
						<label>Extra From</label> <input type="number" name="eExtra"
							class="form-control" placeholder="" />
					</div>
					<div class="form-group">
						<label>Transport Cost</label> <input type="number" name="eTrans"
							class="form-control" placeholder="" />
					</div>
					<div class="form-group">
						<label>Lunch Cost</label> <input type="number" name="eLunch"
							class="form-control" placeholder="" />
					</div>
					<div class="form-group">
						<label>Others Cost</label> <input type="number" name="eOthers"
							class="form-control" placeholder="" />
					</div>
					<button type="submit" class="btn btn-primary">Calculate</button>
				</form>
			</div>
		</div>
	</div>
</div>

<jsp:include page="../layout/footer.jsp" />