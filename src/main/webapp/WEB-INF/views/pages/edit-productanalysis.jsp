<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="../layout/header.jsp" />

<div class="content">
	<div class="row justify-content-center">
		<div class="col-md-10">
			<h3>Update Customer Survey</h3>
			<form action="/productAnalysisUpdate" method="post">

				<div class="form-row ">
					<div class="form-group col-md-5">
						<label for="name">Name : </label> 
						<input id="name" type="text" name="name"  class="form-control" value="${userEntity.name}" />
						<input type="hidden" id="userId" name="userId" value="${userEntity.id}" />
					</div>

					<div class="form-group col-md-5">
						<label for="gender">Gender : </label> <br />
						 <input type="radio" name="gender" id="gender"  value="${userEntity.gender}" /> Male
						  <input type="radio" name="gender" id="gender" value="${userEntity.gender}" /> Female
					</div>
				</div>

				<div class="form-row ">
					<div class="form-group col-md-5">
						<label for="age">Age : </label> 
						<input type="number" id="age" name="age"  class="form-control" value="${userEntity.age}" />
					</div>

					<div class="form-group col-md-5">
						<label for="qualification">Profession : </label>
						 <input	name="profession" type="text" id="qualification"  value="${userEntity.profession}"
							class="form-control" />
					</div>
				</div>

				<div class="form-row ">
					<div class="form-group col-md-5">
						<label>Do you use Lux soap ? </label> <br />
						 <input type="radio" name="luxShop"  value="${userEntity.luxShop}" /> Yes
						  <input type="radio" name="luxShop"  value="${userEntity.luxShop}" /> No
					</div>

					<div class="form-group col-md-5">
						<label for="douse">How often do you use it ? </label>
						 <input	name="howOften" id="douse" type="text" value="${userEntity.howOften}" class="form-control" />
					</div>
				</div>


				<div class="form-group">
					<label>Which flavor do you use ? </label> <br />
					 <input	type="checkbox"  name="flavorUse[]" value="${userEntity.flavorUse}" /> White impress
					 <input type="checkbox"  name="flavorUse[]"  value="${userEntity.flavorUse}" /> Soft Touch
					 <input type="checkbox" name="flavorUse[]" value="${userEntity.flavorUse}" /> Hypnotic Rose 
					 <input type="checkbox"	name="flavorUse[]" value="${userEntity.flavorUse}" /> Iconic Iris
					 <input type="checkbox"  name="flavorUse[]" value="${userEntity.flavorUse}" /> Velvet Touch					
				</div>

				<div class="form-row ">
					<div class="form-group col-md-5">
						<label>Why do you use this flavor ? </label>
						<textarea class="form-control" name="flavor">value="${userEntity.flavor}"</textarea>
					</div>


					<div class="form-group col-md-5">
						<label>Why not use this Flavor ? </label>
						<textarea class="form-control" name="notflavor">value="${userEntity.notflavor}"</textarea>
					</div>
				</div>

				<div class="form-row ">
					<div class="form-group col-md-5">
						<label>Do you know the size of this ? </label> <br /> <input value="${userEntity.luxSize}"
							type="radio" name="luxSize"  /> Yes <input value="${userEntity.luxSize}"
							type="radio" name="luxSize"  /> No
					</div>

					<div class="form-group col-md-5">
						<label>How many grams of lux soap do you find convenient?</label><br /> 
						<input type="checkbox" name="namySize[]"  value="${userEntity.namySize}" /> Mini Size
						 <input type="checkbox" name="namySize[]"	 value="${userEntity.namySize}" /> Small Size
						  <input type="checkbox" name="namySize[]" value="${userEntity.namySize}" /> Family Size
					</div>
				</div>

				<div class="form-row ">
					<div class="form-group col-md-5">
						<label>Do you know anything about soap tar prices?</label><br />
						<input type="radio" name="prices" value="${userEntity.prices}" /> Yes <input
							type="radio" name="prices" value="${userEntity.prices}" /> No
					</div>

					<div class="form-group col-md-5">
						<label>How do you feel about the price of soap ? </label><br />
						<input type="checkbox" name="aboutPrice[]"  value="${userEntity.aboutPrice}" /> The price is higher Size
						 <input	type="checkbox" name="aboutPrice[]"  value="${userEntity.aboutPrice}" /> The price is low
						 <input type="checkbox" name="aboutPrice[]" value="${userEntity.aboutPrice}" /> The price is satisfactory
					</div>
				</div>

				<div class="form-row ">
					<div class="form-group col-md-5">
						<label>How do you think the price will be better? </label>
						<textarea class="form-control" name="thinkprice">value="${userEntity.thinkprice}"</textarea>
					</div>

					<div class="form-group col-md-5">
						<label>Do others in your family use lux soap?</label><br />
						 <input	type="radio"  name="familyUse" value="${userEntity.familyUse}" /> Yes
						  <input type="radio"  name="familyUse" value="${userEntity.familyUse}" /> No
					</div>
				</div>
				<div class="form-row ">
					<div class="form-group col-md-5">
						<label>How satisfied are others in the family using it? </label><br />
						<input type="checkbox"  name="satisfied[]" value="${userEntity.satisfied}" /> Satisfied
						 <input type="checkbox" name="satisfied[]" value="${userEntity.satisfied}"/> Not satisfied 
						 <input type="checkbox" name="satisfied[]" value="${userEntity.satisfied}"/> Low satisfied
					</div>

					<div class="form-group col-md-5">
						<label>When have you seen Lux's ad?</label><br /> 
						<input type="radio"  name="seeAd" value="${userEntity.seeAd}" /> Yes
						 <input type="radio" name="seeAd" value="${userEntity.seeAd}" /> No
					</div>
				</div>

				<div class="form-row ">
					<div class="form-group col-md-5">
						<label>Where did you see the ad? </label><br /> 
						<input name="whereSee[]" type="checkbox" value="${userEntity.whereSee}" /> TV 
						<input type="checkbox" name="whereSee[]" value="${userEntity.whereSee}" /> Radio
						 <input type="checkbox"	name="whereSee[]" value="${userEntity.whereSee}" /> Bill Board 
						 <input	type="checkbox" name="whereSee[]" value="${userEntity.whereSee}" /> News Paper
					</div>

					<div class="form-group col-md-5">
						<label> Do you use any soap other than Lux soap? </label>
						<textarea class="form-control" name="likeUse">value="${userEntity.likeUse}"</textarea>
					</div>
				</div>

				<div class="form-row ">
					<div class="form-group col-md-5">
						<label>Why do you use other soap?</label>
						<textarea class="form-control" name="whyU">value="${userEntity.whyU}"</textarea>
					</div>

					<div class="form-group col-md-5">
						<label>When do you use soap? </label><br />
						 <input type="radio"  name="always" value="${userEntity.always}" /> Always
						  <input type="radio" name="always" value="${userEntity.always}" /> Sometime
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