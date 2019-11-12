<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../layout/header.jsp" />

<div class="content">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<form action="<c:url value="/filterByDate"/>" method="post">
					<div class="form-group">
						<label for="fDate">First Date:</label> <input type="date"
							id="fDate" class="form-control" name="firstDate" />
					</div>

					<div class="form-group">
						<label for="lDate">Last Date:</label> <input type="date"
							id="lDate" class="form-control" name="lastDate" />
					</div>

					<div class="form-group">
						<label>Interview's Opinion</label> <select name="selectValue" >
							<option>Yes</option>
							<option>No</option>
						</select>
					</div>
					<button type="submit" class="btn btn-primary">Show</button>
				</form>
			</div>
		</div>
	</div>

	<hr>


	<div class="container">
		<div class="row">
			<div class="col-md-10">
				<table class="table table-bordered table-hover table-dark">
					<thead>
						<tr>
							<td>Id</td>
							<td>Name</td>
							<td>Gender</td>
							<td>Age</td>
							<td>Date</td>
							<td>Profession</td>
							<td>UseLuxSoap</td>
							<td>How Often</td>
							
							<td>Flavor Use</td>
							<td>Not Flavor</td>
							<td>Know Size</td>
							<td>Flavor</td>
							<td>Lux size</td>
							<td>KnowPrice</td>
							<td>AboutPrice</td>
							<td>OpinionPrice</td>
							<td>FamilyUse</td>
							<td>FamilySatisfied</td>
							<td>AdSee</td>
							<td>WhereAdSee</td>
							<td>OtherSoap</td>
							<td>WhyUse</td>
							<td>WhenUse</td>
							<td>Action</td>
							<td>Action</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="user" items="${userList}">
							<tr>
								<td>${user.id}</td>
								<td>${user.name}</td>
								<td>${user.gender}</td>
								<td>${user.age}</td>
								<td>${user.createdDate}</td>
								<td>${user.profession}</td>
								<td>${user.luxShop}</td>
								<td>${user.howOften}</td>
								<td>${user.flavorUse}</td>
								<td>${user.flavor}</td>
								<td>${user.notflavor}</td>
								<td>${user.luxSize}</td>
								<td>${user.namySize}</td>
								<td>${user.prices}</td>
								<td>${user.aboutPrice}</td>
								<td>${user.thinkprice}</td>
								<td>${user.familyUse}</td>
								<td>${user.satisfied}</td>
								<td>${user.seeAd}</td>
								<td>${user.whereSee}</td>
								<td>${user.likeUse}</td>
								<td>${user.whyU}</td>
								<td>${user.always}</td>
								<td><a class="btn btn-success"
									href="<c:url value="/productanalysis/edit/${user.id}"/>"><i
										class="fa fa-edit"></i></a></td>
								<td><a class="btn btn-danger"
									href="<c:url value="/productanalysis/delete/${user.id}"/>"><i
										class="fa fa-trash"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

<jsp:include page="../layout/footer.jsp" />