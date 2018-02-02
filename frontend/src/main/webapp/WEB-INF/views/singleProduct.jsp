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
		<nav style="margin-top: 10px;">
			<div class="nav-wrapper">
				<div class="col s12">
					<div>
						<a href="/fashion_store/home" class="breadcrumb">Home</a> <a
							href="/fashion_store/show/all/products" class="breadcrumb">Products</a>
						<a href="/fashion_store/show/category/1/products"
							class="breadcrumb">Tshirts</a> <a class="active breadcrumb">Show</a>
						<a class="active breadcrumb">SHIELD UNITED</a>
					</div>
				</div>
			</div>
		</nav>
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
	<div class="row">
		<div class="col s12">
			<div class="card">
				<div class="card-image col s12 m6 l4" style="top: 20px;">
					<img src="${contextRoot}/resources/images/${product.getCode()}.png" />
				</div>
				<div class="card-content col s12 m6 l8">
					<h4>${product.getName()}</h4>
					<h6>Brand : ${product.getBrand()}</h6>
					<p>Sold By : ${sellerName}</p>
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
					<br>
					<h6>
						<strong>Price : &#8377;${product.getUnitPrice()}</strong>
					</h6>
					<div class="row">
						<div class="col s6 m4 l2">
							<a class="btn" ${XS}><small>&nbsp;XS</small></a>
						</div>
						<div class="col s6 m4 l2">
							<a class="btn" ${S}><small>&nbsp;S&nbsp;</small></a>
						</div>
						<div class="col s6 m4 l2">
							<a class="btn" ${M}><small>&nbsp;M&nbsp;</small></a>
						</div>
						<div class="col s6 m4 l2">
							<a class="btn" ${L}><small>&nbsp;L&nbsp;</small></a>
						</div>
						<div class="col s6 m4 l2">
							<a class="btn" ${XL}><small>&nbsp;XL</small></a>
						</div>
						<div class="col s6 m4 l2">
							<a class="btn" ${XXL}><small>XXL</small></a>
						</div>
					</div>
					<div class="row">
						<div class="col s12 m2">
							<input type="number" class="form-control text-center" ${disabled}
								value="1" min="1" max="20">
						</div>
						<div class="col s12 m2"></div>
						<div class="col s12 m4">
							<c:choose>
								<c:when test="${productStock.isENABLED()}">
									<a class="btn"
										href="${contextRoot}/show/category/${product.getCategoryId()}/products">Add
										to Cart</a>
								</c:when>
								<c:otherwise>
									<strong style="font-size: 24px; color: red;">Out Of
										Stock!</strong>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="col s12 m4">
							<a class="btn"
								href="${contextRoot}/show/category/${product.getCategoryId()}/products">Back</a>
						</div>
					</div>
				</div>
				<div class="card-action">
					<a></a>
				</div>
			</div>
		</div>
	</div>

</div>