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
})