<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../layout/header.jsp" />
<div class="content">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-10">
				<form action="<c:url value="/show-emp"/>" method="post">
					<div class="form-group col-md-5">
						<label>Search Employee</label> <input type="text" name="id"
							class="form-control" placeholder="Search Employee By Id" >
							</div>
							<div class="form-group col-md-5">
						<label>Month</label> 
						<select name="selectValue" class="form-control">
							<option value="January">January</option>
							<option value="February">February</option>
							<option value="March">March</option>
							<option value="April">April</option>
							<option value="May">May</option>
							<option value="June">June</option>
							<option value="July">July</option>
							<option value="August">August</option>
							<option value="September">September</option>
							<option value="October">October</option>
							<option value="November">November</option>
							<option value="December">December</option>							
						</select>
						</div>
					<div>
						<button type="submit" class="btn btn-success">Search</button>
					</div>
				</form>
				<form action="<c:url value="/totalsalary"/>" method="post">
					<div class="form-group">
						<label>Employee Id</label> <input type="number" name="id"
							class="form-control" placeholder="" value="${employee.id}"/>
					</div>
					<div class="form-group">
						<label>Employee Name</label> <input type="text" name="eName"
							class="form-control" placeholder="Enter employee name" value="${employee.ename}"/>
					</div>
					<div class="form-group">
						<label>Email address</label> <input type="email" name="eEmail"
							class="form-control" placeholder="Enter employee email" value="${employee.email}"/>
					</div>
					<div class="form-group">
						<label>Address</label> 
						<textarea placeholder="Enter your address"	name="eaddress" class="form-control" >"${employee.address}"</textarea>					
					</div>
					<div class="form-group">
						<label>Basic Salary</label> <input type="number" name="eBasicSalary"
							class="form-control" placeholder="" value="${employee.salary}"/>
					</div>
					<div class="form-group">
						<label>Extra From</label> <input type="number" name="eExtra"
							class="form-control" placeholder="" value="${frombonus}"/>
					</div>
					<div class="form-group">
						<label>Extra From fee</label> <input type="number" name="eExtrafromfee"
							class="form-control" placeholder="" value="${fromfee}"/>
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