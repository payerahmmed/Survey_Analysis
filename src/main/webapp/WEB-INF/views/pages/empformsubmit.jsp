<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../layout/header.jsp" />

<div class="content">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-10">
			<form action="<c:url value="/formsubmit"/>" method="post">
					<div class="form-group col-md-5">
						<label>Employee Id</label> 
						<select name="submitid" class="form-control">
							<option value="none" selected="" disabled="">Select
								empId</option>
							<c:forEach items="${employee}" var="emp">
								<option value="${emp.ename}">${emp.id}</option>
							</c:forEach>
						</select>
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
					<div class="form-group col-md-5">
						<label>From submit number</label> <input type="number" name="submitnum"
							class="form-control" placeholder="" />
					</div>
					<button type="submit" class="btn btn-primary">Save</button>
				</form>
			</div>
		</div>
	</div>
</div>

<jsp:include page="../layout/footer.jsp" />
