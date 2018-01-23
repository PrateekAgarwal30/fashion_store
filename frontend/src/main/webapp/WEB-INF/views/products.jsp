<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<div class="container">
	<div class="row">
		<div class="col-md-3">
			<jsp:include page="./common/sidebar.jsp"></jsp:include>
		</div>
		<div class="col-md-9">
			<div class="row">
				<div class="col-lg-12">
					<c:if test="${productsButtonClicked == true}">
						<ol class="breadcrumb">
							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">All Products</li>
						</ol>
					</c:if>
					<c:if test="${categoryProductsButtonClicked == true}">
						<ol class="breadcrumb">
							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">Category</li>
							<li class="active">${title}</li>
						</ol>
					</c:if>

				</div>
			</div>
		</div>
	</div>
</div>