<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../layout/header.jsp" />

<div class="content">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-10">
				<h3>Employee Registration From</h3>
				<form action="<c:url value="/employeereg"/>" method="post">
					<div class="form-row ">
						<div class="form-group col-md-5">
							<label for="ename">Name : </label> 
							<input id="ename" type="text" name="ename" placeholder="Enter your employee name" class="form-control" />
						</div>
						<div class="form-group col-md-5">
							<label for="email">Email : </label> 
							<input id="email" type="email" name="email" placeholder="Enter email address" class="form-control" />
						</div>					
					</div>
					<div class="form-row ">
						<div class="form-group col-md-5">
							<label for="efather">Father name : </label> 
							<input id="efather" type="text" name="efather" placeholder="Enter your father name" class="form-control" />
						</div>
						<div class="form-group col-md-5">
							<label for="emother">Mother name : </label> 
							<input id="emother" type="text" name="emother" placeholder="Enter your mother name" class="form-control" />
						</div>					
					</div>
					<div class="form-row ">
						<div class="form-group col-md-5">
							<label for="gender">Gender : </label> <br />
							<input type="radio" name="gender" id="gender" value="Male" checked /> Male
							<input type="radio" name="gender" id="gender" value="Female" /> Female
						</div>
						<div class="form-group col-md-5">
							<label for="qualification">Qualification : </label> 
							<input id="qualification" type="text" name="qualification" placeholder="Enter your qualification" class="form-control" />
						</div>					
					</div>
					<div class="form-row ">
						<div class="form-group col-md-5">
							<label for="password">Password : </label> 
							<input id="password" type="password" name="password" placeholder="Enter your password" class="form-control" />
						</div>
						<div class="form-group col-md-5">
							<label for=eage>Age : </label> 
							<input id="eage" type="number" name="eage" placeholder="Enter your age" class="form-control" />
						</div>					
					</div>
					<div class="form-row ">
						<div class="form-group col-md-5">
							<label for="econtact">Contact number : </label> 
							<input id="econtact" type="number" name="econtact" placeholder="Enter your contact number" class="form-control" />
						</div>
						<div class="form-group col-md-5">
							<label for="econtact">Salary : </label> 
							<input id="econtact" type="number" name="salary" placeholder="Enter your salary" class="form-control" />
						</div>	
						</div>	
					<div class="form-row ">				
						<div class="form-group col-md-6" >
							<label for="eaddress">Address : </label> 
							<textarea id="eaddress" placeholder="Enter your address"	name="address" class="form-control"></textarea>
						</div>
					</div>
					<input type="submit" value="Save" class="btn btn-success" />
				</form>
			</div>	
		</div>
	</div>
</div>


<jsp:include page="../layout/footer.jsp" />