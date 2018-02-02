<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<div class="container">
	<ul class="collection with-header">
		<li class="collection-header"><h6>Shop Now</h6></li>
		<c:forEach items="${categories}" var="category">
			<li class="collection-item" id="a_${category.name}"><a
				href="${contextRoot}/show/category/${category.id}/products">${category.name}</a></li>
		</c:forEach>
	</ul>
</div>