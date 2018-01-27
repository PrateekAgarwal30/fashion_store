$(function() {
	switch (menu) {
	case "About Us":
		$("#about").addClass("active");
		break;
	case "Contact Us":
		$("#contact").addClass("active");
		break;
	case "Products":
		$("#products").addClass("active");
		break;
	default:
		if (menu == "Home") {
			break;
		} else {
			$("#products").addClass("active");
			$("#a_" + menu).addClass("active");
			break;
		}

	}

	var jsonURL = '';
	if (window.categoryId == "") {
		jsonURL = window.contextRoot + "/json/data/all/products";
	} else {
		jsonURL = window.contextRoot + "/json/data/category/"
				+ window.categoryId + "/products";
	}
	$('#productListTable')
			.DataTable(
					{
						"lengthMenu" : [
								[ 5, 10, 25, -1 ],
								[ '5 Records', '10 Records', '25 Records',
										'All' ] ],
						"pageLength" : 5,
						"ajax" : {
							"url" : jsonURL,
							"dataSrc" : ""
						},
						"columns" : [
								{
									data : "code",
									orderable : false,
									mRender : function(data) {
										return "<img src='"+ window.contextRoot+ "/resources/images/" + data + ".png'>"
									}
								},
								{
									data : "name"
								},
								{
									data : "brand"
								},
								{
									data : "unitPrice",
									mRender : function(data) {
										return "&#8377;" + data;
									}
								},
								{
									data : "views"
								},
								{
									data : "availableQty",
									mRender : function(data) {
										if (data < 1) {
											data = 'Out of Stock';
										}
										return data;
									}

								},
								{
									data : "id",
									orderable : false,
									mRender : function(data) {
										var temp = "<a href='"
												+ window.contextRoot
												+ "/show/category/"
												+ data
												+ "/products"
												+ "' class='btn btn-primary'><span class='glyphicon glyphicon-eye-open'></span></a>";
										temp += "&nbsp;&nbsp;";
										temp += "<a href='"
												+ window.contextRoot
												+ "/show/category/"
												+ data
												+ "/products"
												+ "' class='btn btn-success'><span class='glyphicon glyphicon-shopping-cart'></span></a>";
										return temp;
									}
								}

						]
					});
});