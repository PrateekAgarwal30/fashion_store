<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<nav>
	<div class="nav-wrapper">
		<a href="${contextRoot}/home" class="brand-logo">Logo</a>
		<ul id="nav-mobile" class="right hide-on-med-and-down">
			<li id="about"><a href="${contextRoot}/about">About Us</a></li>
			<li id="products"><a href="${contextRoot}/show/all/products">Products</a>
			</li>
			<li id="contact"><a href="${contextRoot}/contact">Contact Us</a>
			</li>
		</ul>
	</div>
</nav>