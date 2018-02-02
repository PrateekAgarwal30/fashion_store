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
								[ 1, 2, 3, -1 ],
								[ '1 Records', '2 Records', '3 Records',
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
										return "<img src='"
												+ window.contextRoot
												+ "/resources/images/"
												+ data
												+ ".png' class='dataTableImage'>";
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
												+ "/show/"
												+ data
												+ "/product"
												+ "' class='btn waves-effect waves-light btn-small'> <i class='small material-icons'>remove_red_eye</i></a>";
										temp += "&nbsp;&nbsp;";
										temp += "<a href='"
												+ window.contextRoot
												+ "/show/category/"
												+ data
												+ "/products"
												+ "' class='btn waves-effect waves-light btn-small'><i class='small material-icons'>add_shopping_cart</i></a>";
										return temp;
									}
								}

						]
					});
	$(document).ready(function() {
		$('.carousel.carousel-slider').carousel();
		$('[data-toggle="popover"]').popover({
			container : 'body',
			html : true,
			placement : 'right',
			trigger : 'hover',
			content : function() {
				// get the url for the full size img
				var url = $(this).data('full');
				return '<img id="abcd" src="' + url + '">'
			}
		});
	});
});
