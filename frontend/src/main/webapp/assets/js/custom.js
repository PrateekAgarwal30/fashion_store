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

	var list = [ [ '1', 'Z' ], 
				 [ '2', 'Y' ], 
				 [ '3', 'X' ], 
				 [ '4', 'W' ],
				 [ '5', 'V' ] 
	];
	$(document).ready(function() {
	    $('#productListTable').DataTable( {
	        data: list,
	        pageLength:5,
	        lengthMenu:[[1,2,3,-1],['1R','2R','3R','All']]
	    } );
	} );
});