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
		<nav id="abcd">
			<div class="nav-wrapper">
				<div class="col s12">
					<div>
						<a href="${contextRoot}/home" class="breadcrumb">Home</a> <a
							href="${contextRoot}/show/all/products" class="breadcrumb">Products</a>
						<a
							href="${contextRoot}/show/category/${product.getCategoryId()}/products"
							class="breadcrumb">${categoryName}</a> <a
							class="active breadcrumb">Show</a> <a class="active breadcrumb">${title}</a>
					</div>
				</div>
			</div>
		</nav>
	</div>
	<div class="col s12">
		<div class="card horizontal">
			<div class="card-image">
				<img src="${contextRoot}/resources/images/${product.getCode()}.png" />
			</div>
			<div class="card-stacked">
				<div class="card-content">
					<div class="row">
						<div class="col m8 s12">
							<h4>${product.getName()}</h4>
						</div>
						<div class="col m4 s6">
							<h6>Brand : ${product.getBrand()}</h6>
						</div>
						<div class="col m4 s6">
							<h6>Sold By : ${sellerName}</h6>
						</div>
					</div>
					<p>
						Description : ${product.getDescription()} <br> Lorem ipsum
						dolor sit amet, consectetur adipiscing elit. Fusce auctor massa ac
						faucibus facilisis. Curabitur maximus, nulla et malesuada lacinia,
						eros nibh mattis metus, id finibus mauris nibh sed ipsum. In felis
						libero, euismod eu pharetra ac, facilisis eu odio. Maecenas
						pretium ultrices erat, at auctor enim rhoncus ac. Pellentesque
						erat dui, vulputate id viverra in, aliquam eget odio. Nulla quis
						lacus non urna convallis scelerisque non in metus. Nullam et
						cursus metus. Nam eu iaculis turpis. Maecenas rutrum metus
						ultricies metus posuere, sed volutpat neque feugiat. Phasellus
						aliquam erat eget eros egestas vehicula. Curabitur tristique augue
						eget turpis accumsan, vel vulputate enim sodales. Vestibulum ac
						lectus aliquet, blandit turpis et, ultricies quam. Aenean feugiat
						diam tortor, quis pharetra est accumsan ac. Pellentesque risus
						enim, eleifend ut lacus quis, convallis aliquam sapien.
						Suspendisse at neque commodo, porttitor metus non, pharetra dui.
						Aenean enim nulla, mollis ut purus ut, varius elementum erat.
						Phasellus sodales dui vitae quam feugiat, vitae eleifend lectus
						lacinia.
					</p>
					<br> <strong>Price : &#8377;${product.getUnitPrice()}</strong>
				</div>
				<div class="card-action">
					<div class="row">
						<div class="col s3">
							<strong>SelectSize :</strong>
						</div>
						<div class="col s9 right">
							<a class="btn btn-info" ${XS}><small>XS</small></a> &nbsp; <a
								class="btn btn-info" ${S}><small>S</small></a> &nbsp; <a
								class="btn btn-info" ${M}><small>M</small></a> &nbsp; <a
								class="btn btn-info" ${L}><small>L</small></a> &nbsp; <a
								class="btn btn-info" ${XL}><small>XL</small></a> &nbsp; <a
								class="btn btn-info" ${XXL}><small>XXL</small></a> &nbsp;
						</div>
					</div>
					<div class="row">
						<div class="col s2">
							<input type="number" class="form-control text-center" ${disabled}
								value="1" min="1" max="20" style="height: 30px;">
						</div>
						<div class="col s4"></div>
						<div class="col s3">
							<c:choose>
								<c:when test="${productStock.isENABLED()}">
									<a class="btn btn-success" style='float: right;'
										href="${contextRoot}/show/category/${product.getCategoryId()}/products">Add
										to Cart</a>
								</c:when>
								<c:otherwise>
									<strong>Out Of Stock!</strong>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="col s3 right">
							<a style="float: right;" class="btn btn-warning"
								href="${contextRoot}/show/category/${product.getCategoryId()}/products">Back</a>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>