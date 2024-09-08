<%@include file="./base.jsp"%>
<div class="row mx-2 px-4 bg-info overflow-hidden">
	<div id="intro" class="col-md-12">
		<img class="logo position-relative" alt="productCartApp"
			src="<c:url value="/resources/images/trolley.png"/>" height=150
			width=150>
		<h1 class="d-inline-block px-2 position-relative">Welcome to
			Product Cart</h1>
	</div>
</div>
<div class="row m-2">
	<div class="col-10">
		<div class="row">
			<div class="bg-dark text-light rounded">
				<h2 class="pt-2 pl-2 d-inline-block">Available Products</h2>
				<a href="add-product"
					class="mr-2 position-relative float-right my-2"><img height=40
					width=40 alt="add new"
					src="<c:url value="/resources/images/add-button.png"/>" /></a>
			</div>
		</div>
		<div class="row">
			<c:forEach items="${products }" var="p">
				<div class="col-4 p-3">
					<div class="card products">
						<div class="card-body">
							<div class="row">
								<div class="col-8">
									<h4 class="card-title">${p.name }</h4>
								</div>
								<div class="col-4 position--relative icon">
									<a href="update/${p.id }" class=""><img height=30 width=30
										alt="edit" src="<c:url value="/resources/images/edit.png"/>" /></a>&nbsp;&nbsp;<a
										href="delete/${p.id }" class=""><img height=30 width=30
										alt="delete" src="<c:url value="/resources/images/bin.png"/>" /></a>
								</div>
							</div>
							<h6>ID : TECHNOLOGY${p.id}</h6>
							<p class="card-text">${p.description }</p>
							<button type="button" class="btn btn-primary">Rs.${p.price }</button>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<div class="col-2">
		<div class="border border-info rounded p-2">
			<form action="">
				<label class="fs-5 fw-bold" for="sort">Sort products : </label> <select
					name="sort">
					<option value="">select</option>
					<option value="">By Name Asc</option>
					<option value="">By Name Dec</option>
					<option value="">By Price low to high</option>
					<option value="">By Price high to low</option>
				</select>
				<fieldset class="my-2 p-2">
					<legend class="fs-5 fw-bold">Filter Products :</legend>
					the main filter
				</fieldset>

			</form>
		</div>
	</div>
</div>
</div>
</body>
</html>
