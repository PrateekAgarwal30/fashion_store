<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<div class="container">
	<div class="row">
		<div class="col s12 m4 l3">
			<jsp:include page="./common/sidebar.jsp"></jsp:include>
		</div>
		<div class="col s12 m8 l9">
			<div class="row">
				<div class="col-lg-12">
					<c:if test="${productsButtonClicked == true}">
						<script>
							window.categoryId = '';
						</script>
						<ol class="breadcrumb">
							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">All Products</li>
						</ol>
					</c:if>
					<c:if test="${categoryProductsButtonClicked == true}">
						<script>
							window.categoryId = "${category.id}";
						</script>
						<ol class="breadcrumb">
							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">Category</li>
							<li class="active">${title}</li>
						</ol>
					</c:if>

				</div>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<table class="table table-striped table-bordered responsive-table"
						id="productListTable" cellspacing="0" width="100%">
						<thead>
							<tr>
								<th align="center"></th>
								<th align="center">Name</th>
								<th align="center">Brand</th>
								<th align="center">Price</th>
								<th align="center">Views</th>
								<th align="center">Available Qty</th>
								<th align="center"></th>

							</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>