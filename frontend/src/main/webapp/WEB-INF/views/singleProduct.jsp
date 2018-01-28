<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<c:choose>
	<c:when test="${productStock.isENABLED()}">
		<c:if test="${productStock.getXS() < 1}">
			<c:set var="XS" value="disabled" />
		</c:if>
		<c:if test="${productStock.getS() < 1}">
			<c:set var="S" value="disabled" />
		</c:if>
		<c:if test="${productStock.getM() < 1}">
			<c:set var="M" value="disabled" />
		</c:if>
		<c:if test="${productStock.getL() < 1}">
			<c:set var="L" value="disabled" />
		</c:if>
		<c:if test="${productStock.getXL() < 1}">
			<c:set var="XL" value="disabled" />
		</c:if>
		<c:if test="${productStock.getXXL() < 1}">
			<c:set var="XXL" value="disabled" />
		</c:if>
	</c:when>
	<c:otherwise>
		<c:set var="disabled" value="disabled" />
		<c:set var="XS" value="disabled" />
		<c:set var="S" value="disabled" />
		<c:set var="M" value="disabled" />
		<c:set var="L" value="disabled" />
		<c:set var="XL" value="disabled" />
		<c:set var="XXL" value="disabled" />
	</c:otherwise>
</c:choose>
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
	</div>
	<div class="row">
		<div class="col-xs-12 col-sm-4">
			<%-- 			<div class="thumbnail singlePageImage" data-toggle="popover" data-full="http://placehold.it/800x800">
				
			</div> --%>
			<a href="#" class="thumbnail" data-toggle="popover"
				data-full="${contextRoot}/resources/images/${product.getCode()}.png"> <img src="${contextRoot}/resources/images/${product.getCode()}.png"/>
			</a>
		</div>
		<div class="col-xs-12 col-sm-8">
			<h2>${product.getName()}</h2>
			<h4>Brand : ${product.getBrand()}</h4>
			<p>Sold By : ${sellerName}</p>
			<p>
				Description : ${product.getDescription()} <br> Lorem ipsum
				dolor sit amet, consectetur adipiscing elit. Fusce auctor massa ac
				faucibus facilisis. Curabitur maximus, nulla et malesuada lacinia,
				eros nibh mattis metus, id finibus mauris nibh sed ipsum. In felis
				libero, euismod eu pharetra ac, facilisis eu odio. Maecenas pretium
				ultrices erat, at auctor enim rhoncus ac. Pellentesque erat dui,
				vulputate id viverra in, aliquam eget odio. Nulla quis lacus non
				urna convallis scelerisque non in metus. Nullam et cursus metus. Nam
				eu iaculis turpis. Maecenas rutrum metus ultricies metus posuere,
				sed volutpat neque feugiat. Phasellus aliquam erat eget eros egestas
				vehicula. Curabitur tristique augue eget turpis accumsan, vel
				vulputate enim sodales. Vestibulum ac lectus aliquet, blandit turpis
				et, ultricies quam. Aenean feugiat diam tortor, quis pharetra est
				accumsan ac. Pellentesque risus enim, eleifend ut lacus quis,
				convallis aliquam sapien. Suspendisse at neque commodo, porttitor
				metus non, pharetra dui. Aenean enim nulla, mollis ut purus ut,
				varius elementum erat. Phasellus sodales dui vitae quam feugiat,
				vitae eleifend lectus lacinia.
			</p>
			<strong>Price : &#8377;${product.getUnitPrice()}</strong><br> <br>
			<strong>SelectSize :</strong> <br> <a class="btn btn-info" ${XS}><small>XS</small></a>
			&nbsp; <a class="btn btn-info" ${S}><small>S</small></a> &nbsp; <a
				class="btn btn-info" ${M}><small>M</small></a> &nbsp; <a
				class="btn btn-info" ${L}><small>L</small></a> &nbsp; <a
				class="btn btn-info" ${XL}><small>XL</small></a> &nbsp; <a
				class="btn btn-info" ${XXL}><small>XXL</small></a> &nbsp;
			<div class="row">
				<div class="col-xs-12 col-sm-6">
					<br> Quantity : <input type="number"
						class="form-control text-center" ${disabled} value="1" min="1"
						max="20">
				</div>
				<div class="col-xs-12 col-sm-6">
					<br>
					<c:choose>
						<c:when test="${productStock.isENABLED()}">
							<a class="btn btn-success"
								href="${contextRoot}/show/category/${product.getCategoryId()}/products">Add
								to Cart</a>
						</c:when>
						<c:otherwise>
							<strong>Out Of Stock!</strong>
						</c:otherwise>
					</c:choose>

					&nbsp;&nbsp; <a class="btn btn-warning"
						href="${contextRoot}/show/category/${product.getCategoryId()}/products">Back</a>
				</div>
			</div>
		</div>

	</div>

</div>