$(document).ready(function (){

	// CATALOG DISPLAYING
	$("#static_id_for_jq").click(function () {
		$("#product_1").addClass("hidden_product");
		$("#product_2").removeClass("hidden_product");
		$("#product_3").addClass("hidden_product");
		$("#product_4").removeClass("hidden_product");
		$("#product_5").addClass("hidden_product");
		$("#product_6").addClass("hidden_product");
	});
	$("#moving_id_for_jq").click(function () {
		$("#product_1").removeClass("hidden_product");
		$("#product_2").addClass("hidden_product");
		$("#product_3").removeClass("hidden_product");
		$("#product_4").addClass("hidden_product");
		$("#product_5").removeClass("hidden_product");
		$("#product_6").removeClass("hidden_product");
	});	
	$("#all_id_for_jq").click(function () {
		$("#product_1").removeClass("hidden_product");
		$("#product_2").removeClass("hidden_product");
		$("#product_3").removeClass("hidden_product");
		$("#product_4").removeClass("hidden_product");
		$("#product_5").removeClass("hidden_product");
		$("#product_6").removeClass("hidden_product");
	});		

	// PRODUCT DISPLAYING
	$(".item_product_cat").click(function () {
		var ProductById = $(this).attr('id');
		$("#wrapper_product_" + ProductById).removeClass("hidden_product");
	})
	$(".cross_to_close").click(function () {
		$(".wrapper_product").addClass("hidden_product");
	})
});

