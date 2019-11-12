<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../layout/header.jsp" />

<div class="content">
	<div class="row justify-content-center">
		<div class="col-md-10">
			<h3>Customer Survey</h3>
			<form action="<c:url value="/productAnalysis"/>" method="post">

				<div class="form-row ">
					<div class="form-group col-md-5">
						<label for="name">Name : </label> 
						<input id="name" type="text" name="name" placeholder="Enter your name" class="form-control" />
					</div>

					<div class="form-group col-md-5">
						<label for="gender">Gender : </label> <br />
						 <input type="radio" name="gender" id="gender" value="Male" checked /> Male
						  <input type="radio" name="gender" id="gender" value="Female" /> Female
					</div>
				</div>

				<div class="form-row ">
					<div class="form-group col-md-5">
						<label for="age">Age : </label> 
						<input type="number" id="age" name="age" placeholder="Enter your contact age" class="form-control" />
					</div>

					<div class="form-group col-md-5">
						<label for="qualification">Profession : </label>
						 <input	name="profession" type="text" id="qualification" placeholder="Enter your contact profession"
							class="form-control" />
					</div>
				</div>

				<div class="form-row ">
					<div class="form-group col-md-5">
						<label>Do you use Lux soap ? </label> <br />
						 <input type="radio" name="luxShop" value="Yes" /> Yes
						  <input type="radio" name="luxShop" value="No" /> No
					</div>

					<div class="form-group col-md-5">
						<label for="douse">How often do you use it ? </label>
						 <input	name="howOften" id="douse" type="text" placeholder="Enter your do use" class="form-control" />
					</div>
				</div>


				<div class="form-group">
					<label>Which flavor do you use ? </label> <br />
					 <input	type="checkbox" value="White Impress" name="flavorUse[]" /> White impress
					 <input type="checkbox" value="Soft Touch" name="flavorUse[]" /> Soft Touch
					 <input type="checkbox" value="Hypnotic Rose" name="flavorUse[]" /> Hypnotic Rose 
					 <input type="checkbox"	value="Iconic Iris" name="flavorUse[]" /> Iconic Iris
					 <input type="checkbox" value="Velvet Touch" name="flavorUse[]" /> Velvet Touch					
				</div>

				<div class="form-row ">
					<div class="form-group col-md-5">
						<label>Why do you use this flavor ? </label>
						<textarea class="form-control" name="flavor"></textarea>
					</div>


					<div class="form-group col-md-5">
						<label>Why not use this Flavor ? </label>
						<textarea class="form-control" name="notflavor"></textarea>
					</div>
				</div>

				<div class="form-row ">
					<div class="form-group col-md-5">
						<label>Do you know the size of this ? </label> <br /> <input
							type="radio" name="luxSize" value="Yes" /> Yes <input
							type="radio" name="luxSize" value="No" /> No
					</div>

					<div class="form-group col-md-5">
						<label>How many grams of lux soap do you find convenient?</label><br /> 
						<input type="checkbox" name="namySize[]" value="Mini Size" /> Mini Size
						 <input type="checkbox" name="namySize[]"	value="Small Size" /> Small Size
						  <input type="checkbox" value="Family Size" name="namySize[]" /> Family Size
					</div>
				</div>

				<div class="form-row ">
					<div class="form-group col-md-5">
						<label>Do you know anything about soap tar prices?</label><br />
						<input type="radio" value="Yes" name="prices" /> Yes <input
							type="radio" value="No" name="prices" /> No
					</div>

					<div class="form-group col-md-5">
						<label>How do you feel about the price of soap ? </label><br />
						<input type="checkbox" name="aboutPrice[]" value="The price is higher" /> The price is higher Size
						 <input	type="checkbox" name="aboutPrice[]" value="The price is low " /> The price is low
						 <input type="checkbox" name="aboutPrice[]"	value="The price is satisfactory" /> The price is satisfactory
					</div>
				</div>

				<div class="form-row ">
					<div class="form-group col-md-5">
						<label>How do you think the price will be better? </label>
						<textarea class="form-control" name="thinkprice"></textarea>
					</div>

					<div class="form-group col-md-5">
						<label>Do others in your family use lux soap?</label><br />
						 <input	type="radio" value="Yes" name="familyUse" /> Yes
						  <input type="radio" value="No" name="familyUse" /> No
					</div>
				</div>
				<div class="form-row ">
					<div class="form-group col-md-5">
						<label>How satisfied are others in the family using it? </label><br />
						<input type="checkbox" value="Satisfied[]" name="satisfied[]" /> Satisfied
						 <input type="checkbox" value="Not satisfied[]" name="satisfied[]" /> Not satisfied 
						 <input type="checkbox"	value="Low satisfied[]" name="satisfied[]" /> Low satisfied
					</div>

					<div class="form-group col-md-5">
						<label>When have you seen Lux's ad?</label><br /> 
						<input type="radio" value="Yes" name="seeAd" /> Yes
						 <input type="radio" value="No" name="seeAd" /> No
					</div>
				</div>

				<div class="form-row ">
					<div class="form-group col-md-5">
						<label>Where did you see the ad? </label><br /> 
						<input name="whereSee[]" type="checkbox" value="TV" /> TV 
						<input type="checkbox" name="whereSee[]" value="Radio" /> Radio
						 <input type="checkbox"	name="whereSee[]" value="Bill Board" /> Bill Board 
						 <input	type="checkbox" value="News Paper" name="whereSee[]" /> News Paper
					</div>

					<div class="form-group col-md-5">
						<label> Do you use any soap other than Lux soap? </label>
						<textarea class="form-control" name="likeUse"></textarea>
					</div>
				</div>

				<div class="form-row ">
					<div class="form-group col-md-5">
						<label>Why do you use other soap?</label>
						<textarea class="form-control" name="whyU"></textarea>
					</div>

					<div class="form-group col-md-5">
						<label>When do you use soap? </label><br />
						 <input type="radio" value="Yes" name="always" /> Always
						  <input type="radio" value="No" name="always" /> Sometime
					</div>
				</div>

				<div class="form-group">
					<label> <b>Thank you for your valuable feedback</b>
					</label>
				</div>
				<button class="btn btn-primary">Submit</button>

			</form>
		</div>
	</div>
</div>
<jsp:include page="../layout/footer.jsp" />