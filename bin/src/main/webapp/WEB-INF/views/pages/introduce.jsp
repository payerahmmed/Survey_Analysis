<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../layout/header.jsp" />

<div class="content">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-7">
				<h3>Send email</h3>
				<form action="<c:url value="sendEmail"/>" method="post">
					<div class="form-group">
						<label>To</label> <input type="text" name="email"
							class="form-control" />
					</div>

					<div class="form-group">
						<label>Subject</label> <input type="text" name="sub"
							class="form-control" />
					</div>
					<div class="form-group">
						<label>Message</label>
						<textarea rows="10" cols="50" name="body"></textarea>
					</div>
					<div class="form-group">
						<input type="submit" value="Send" class="btn btn-success" />
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<jsp:include page="../layout/footer.jsp" />