<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<ol class="breadcrumb">
				<li><a href="${contextRoot}/home">Home</a></li>
				<li><a href="${contextRoot}/show/all/products">Products</a></li>
				<li><a
					href="${contextRoot}/show/category/${product.getCategoryId()}/products">${categoryName}</a></li>
				<li class="active">Show</li>
				<li class="active">${title}</li>
			</ol>

		</div>
		<div class="col-md-12">
			<div class="row">
				<div class="col-xs-4">
					<div class="thumbnail singlePageImage">
						<img
							src="${contextRoot}/resources/images/${product.getCode()}.png"
							hidden="true" />
					</div>
				</div>
				<div class="col-xs-8">
					<h1>${product.getName()}</h1>
					<h4>By : ${product.getBrand()}</h4>
				</div>
				<div class="col-xs-8">
					<p>Description : ${product.getDescription()}</p>
					<br>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Fusce auctor massa ac faucibus facilisis. Curabitur maximus, nulla
						et malesuada lacinia, eros nibh mattis metus, id finibus mauris
						nibh sed ipsum. In felis libero, euismod eu pharetra ac, facilisis
						eu odio. Maecenas pretium ultrices erat, at auctor enim rhoncus
						ac. Pellentesque erat dui, vulputate id viverra in, aliquam eget
						odio. Nulla quis lacus non urna convallis scelerisque non in
						metus. Nullam et cursus metus. Nam eu iaculis turpis. Maecenas
						rutrum metus ultricies metus posuere, sed volutpat neque feugiat.
						Phasellus aliquam erat eget eros egestas vehicula. Curabitur
						tristique augue eget turpis accumsan, vel vulputate enim sodales.
						Vestibulum ac lectus aliquet, blandit turpis et, ultricies quam.
						Aenean feugiat diam tortor, quis pharetra est accumsan ac.
						Pellentesque risus enim, eleifend ut lacus quis, convallis aliquam
						sapien. Suspendisse at neque commodo, porttitor metus non,
						pharetra dui. Aenean enim nulla, mollis ut purus ut, varius
						elementum erat. Phasellus sodales dui vitae quam feugiat, vitae
						eleifend lectus lacinia.</p>
				</div>
				<div class="col-xs-8">
					<br>
				</div>
				<div class="col-xs-8">
					<strong>Price : &#8377;${product.getUnitPrice()}</strong>
				</div>
				<div class="col-xs-8">
					<br> <strong>Select Size :</strong> 
					 <a class="btn btn-info"><small>XS</small></a> &nbsp;
					 <a class="btn btn-info"><small>S</small></a> &nbsp;
					 <a class="btn btn-info"><small>M</small></a> &nbsp;
					 <a class="btn btn-info"><small>L</small></a> &nbsp;
					 <a class="btn btn-info"><small>XL</small></a> &nbsp;
					 <a class="btn btn-info" disabled = "true"><small>XXL</small></a> &nbsp;
				</div>

				<div class="col-xs-8">
					<br> <a class="btn btn-success"
						href="${contextRoot}/show/category/${product.getCategoryId()}/products">Add
						to Cart</a> &nbsp;&nbsp; <a class="btn btn-warning"
						href="${contextRoot}/show/category/${product.getCategoryId()}/products">Back</a>
				</div>
			</div>
		</div>
	</div>
</div>