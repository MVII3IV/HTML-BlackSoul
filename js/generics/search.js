$(window).load(function(){
	
	//$(".search-form__h").hide();

	$(".menu-item.search a").toggle(function(e){
		e.preventDefault();
		$(".search-form__h").addClass('on');
		$(".menu-item.search").addClass('on');
		document.getElementById("search-form_it").focus();
	},function(){
		$(".search-form__h").removeClass('on');
		$(".menu-item.search").removeClass('on');
	});
	
});