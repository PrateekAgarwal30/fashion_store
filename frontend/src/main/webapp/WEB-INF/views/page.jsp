<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Fashion Store - ${title}</title>
<script type="text/javascript">
	window.menu = "${title}";
	window.contextRoot = "${contextRoot}";
</script>
<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">
<%--  <link href="${css}/bootstrap-simplex-theme.css" rel="stylesheet"> --%>

<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">
<!-- DataTable CSS -->
<link href="${css}/jquery.dataTables.css" rel="stylesheet">
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div class="wrapper">

		<!-- Navigation -->
		<jsp:include page="./common/navigation.jsp"></jsp:include>
		<div class="content">
			<!-- Page Content -->
			<c:if test="${homeButtonClicked == true}">
				<jsp:include page="home.jsp"></jsp:include>
			</c:if>
			<c:if test="${aboutButtonClicked == true}">
				<jsp:include page="about.jsp"></jsp:include>
			</c:if>
			<c:if test="${contactButtonClicked == true}">
				<jsp:include page="contact.jsp"></jsp:include>
			</c:if>
			<c:if
				test="${productsButtonClicked == true or categoryProductsButtonClicked == true}">
				<jsp:include page="products.jsp"></jsp:include>
			</c:if>
		</div>
		<!-- FOOTER -->
		<jsp:include page="./common/footer.jsp"></jsp:include>

		<!-- jQuery -->
		<script src="${js}/jquery.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="${js}/bootstrap.min.js"></script>
		<!-- Custom JavaScript -->
		<script src="${js}/custom.js"></script>
		<!-- DataTable JavaScript -->
		<script src="${js}/jquery.dataTables.js"></script>
		<script src="${js}/dataTables.bootstrap.js"></script>
	</div>
</body>

</html>